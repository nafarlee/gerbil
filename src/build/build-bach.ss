;;; -*- Gerbil -*-
;;; © vyzo
;;; script to build "BACH", the universal gerbil binary
(import :gerbil/compiler)

(def build-home
  (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))

(def default-gerbil-gsc
  (path-expand "bin/gsc" build-home))

(def (gerbil-gsc)
  (getenv "GERBIL_GSC" default-gerbil-gsc))

(def (gerbil-gcc)
  (getenv "GERBIL_GCC" 
    (cond-expand
      (visualc "cl")
      (else "gcc"))))

(def gerbil-bindir
  (path-expand "bin" build-home))
(def gerbil-libdir
  (path-expand "lib" build-home))

(def gambit-libdir
  (path-expand "lib" (getenv "GERBIL_PREFIX")))

(cond-expand
 (freebsd
  (def default-ld-options ["-lutil" "-lm"]))
 (netbsd
  (def default-ld-options ["-lm"]))
 (visualc
  (def default-ld-options ["Kernel32.Lib" "User32.Lib" "Gdi32.Lib" "WS2_32.Lib" "/subsystem:console" "/entry:WinMainCRTStartup"]))
 (else
  (def default-ld-options ["-ldl" "-lm"])))

(def compiler-obj-suffix
  (cond-expand
    (visualc ".obj")
    (else ".o")))

; generates an `include` form for use in a source code, gsc's -e option etc.
; It takes care of windows paths where we need to escape the path.
; e.g. (displayln (include-source "d:\\gerbil\\mycode.scm")) should print
; (include "d:\\gerbil\\mycode.scm")
; instead of:
; (include "d:\gerbil\mycode.scm")
; which results in an error:
; *** ERROR -- Invalid escaped character: #\g
(def (include-source path)
  (string-append "(include " (object->string path) ")"))

(def (link-output-options output-bin)
  (cond-expand
    (visualc [(string-append "/Fe" output-bin)])
    (else ["-o" output-bin]))) 

(def (link-with-libgambit-options)
  (cond-expand
    (visualc ["/link" (string-append "/LIBPATH:" "\"" gerbil-libdir "\"") "libgambit.lib"])
    (else ["-L" gerbil-libdir "-lgambit"])))

(def compiler-debug-option
  (cond-expand
    (visualc "/Zi")
    (else "-g")))

(def builtin-modules
  '(;; :gerbil/runtime
    "gerbil/runtime/gambit"
    "gerbil/runtime/util"
    "gerbil/runtime/table"
    "gerbil/runtime/control"
    "gerbil/runtime/system"
    "gerbil/runtime/c3"
    "gerbil/runtime/mop"
    "gerbil/runtime/mop-system-classes"
    "gerbil/runtime/error"
    "gerbil/runtime/interface"
    "gerbil/runtime/hash"
    "gerbil/runtime/thread"
    "gerbil/runtime/syntax"
    "gerbil/runtime/eval"
    "gerbil/runtime/repl"
    "gerbil/runtime/loader"
    "gerbil/runtime/init"
    "gerbil/runtime"
    ;; :gerbil/gambit
    "gerbil/gambit"
    ;; :gerbil/expander
    "gerbil/expander/common"
    "gerbil/expander/stx"
    "gerbil/expander/core"
    "gerbil/expander/top"
    "gerbil/expander/module"
    "gerbil/expander/compile"
    "gerbil/expander/root"
    "gerbil/expander/stxcase"
    "gerbil/expander/init"
    "gerbil/expander"
    ;; :gerbil/compiler
    "gerbil/compiler/base"
    "gerbil/compiler/method"
    "gerbil/compiler/compile"
    "gerbil/compiler/optimize-base"
    "gerbil/compiler/optimize-xform"
    "gerbil/compiler/optimize-top"
    "gerbil/compiler/optimize-spec"
    "gerbil/compiler/optimize-ann"
    "gerbil/compiler/optimize-call"
    "gerbil/compiler/optimize"
    "gerbil/compiler/driver"
    "gerbil/compiler/ssxi"
    "gerbil/compiler"))

(def bach-main
  "gerbil/main")

(def (invoke program args)
  (let* ((proc (open-process [path: program arguments: args
                                    stdout-redirection: #f
                                    stderr-redirection: #f]))
         (status (process-status proc)))
    (close-port proc)
    (unless (zero? status)
      (error "process exited abnormally" program status))))

(def (static-file-name mod)
  (path-expand (string-append (string-join (string-split mod #\/) "__") ".scm")
               (path-expand "static" gerbil-libdir)))

(def (replace-extension path ext)
  (string-append (path-strip-extension path) ext))

(def (replace-extension-with-c path)
  (replace-extension path ".c"))

(def (replace-extension-with-object path)
  (replace-extension path compiler-obj-suffix))

;; first compile the module
(displayln "... compile " bach-main)
(compile-module (string-append bach-main ".ss")
                [output-dir: gerbil-libdir
                 optimize: (not (getenv "GERBIL_BUILD_NOOPT" #f))
                 generate-ssxi: #f
                 invoke-gsc: #f static: #t])

;; and then compile the binary
(let* ((builtin-modules-scm (map static-file-name builtin-modules))
       (builtin-modules-c (map replace-extension-with-c builtin-modules-scm))
       (builtin-modules-o (map replace-extension-with-object builtin-modules-scm))
       (bach-main-scm (static-file-name bach-main))
       (bach-main-c (replace-extension-with-c bach-main-scm))
       (bach-main-o (replace-extension-with-object bach-main-scm))
       (bach-link-c (path-expand "gerbil-link.c" gerbil-libdir))
       (bach-link-o (replace-extension bach-link-c compiler-obj-suffix))
       (gambit-sharp (path-expand "_gambit#.scm" gerbil-libdir))
       (include-gambit-sharp (include-source gambit-sharp))
       (gsc-gx-macros
        (if (gerbil-runtime-smp?)
          ["-e" "(define-cond-expand-feature|enable-smp|)"
           "-e" include-gambit-sharp]
          ["-e" include-gambit-sharp]))
       (output-bin
        (path-expand "gerbil" gerbil-bindir))
       (gerbil-shared?
        (member "--enable-shared" (string-split (configure-command-string) #\')))
       (rpath-options
        (if gerbil-shared?
          [(string-append (cond-expand (darwin "-Wl,-rpath,") (else "-Wl,-rpath="))
		                  gambit-libdir)]
          [])))
  (displayln "... link " output-bin)
  (invoke (gerbil-gsc)
          ["-link" "-o" bach-link-c
           "-track-scheme"
           gsc-gx-macros ...
           builtin-modules-scm ...
           bach-main-scm])
  (for-each (lambda (path-c)
              (add-compile-job!
               (lambda () (invoke (gerbil-gsc) ["-obj" "-cc-options" compiler-debug-option path-c]))
               `(compile ,path-c)))
            [builtin-modules-c ... bach-main-c bach-link-c])
  (execute-pending-compile-jobs!)
  (displayln "... build " output-bin)
  (invoke (gerbil-gcc)
          [(link-output-options output-bin) ...
           rpath-options ...
           builtin-modules-o ...
           bach-main-o
           bach-link-o
           (link-with-libgambit-options) ...
           default-ld-options ...])
  ;; clean up
  (delete-file bach-main-scm)
  (delete-file bach-link-c)
  (delete-file bach-link-o)
  (for-each (lambda (ext)
              (let (path (path-expand (string-append bach-main ext) gerbil-libdir))
                (when (file-exists? path)
                  (delete-file path))))
            '(".ssi" ".scm" "~0.scm" )))
