(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1756224510)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g91347_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g91348_
      (##structure
       gx#syntax-quote::t
       'immediate-instance-of?
       #f
       (gx#current-expander-context)
       '()))
    (begin
      (define gerbil/core/contract~InterfaceInfo#interface-info::t
        (make-class-type
         'gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-info
         (list)
         '(name namespace
                interface-mixin
                interface-methods
                interface-precedence-list
                interface-descriptor
                instance-type
                instance-constructor
                instance-try-constructor
                instance-predicate
                instance-satisfies-predicate
                implementation-methods
                unchecked-implementation-methods)
         '()
         '#f))
      (define gerbil/core/contract~InterfaceInfo#interface-info?
        (make-class-predicate
         gerbil/core/contract~InterfaceInfo#interface-info::t))
      (define gerbil/core/contract~InterfaceInfo#make-interface-info
        (lambda _%$args48136%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args48136%_)))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-namespace
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-precedence-list
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-type
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-namespace-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-precedence-list-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-type-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-namespace
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-precedence-list
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-type
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-namespace-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-precedence-list-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-type-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
        (let* ((_%g4792547939%_
                (lambda (_%g4792647936%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4792647936%_)))
               (_%g4792448133%_
                (lambda (_%g4792647942%_)
                  (if (gx#stx-pair? _%g4792647942%_)
                      (let ((_%e4792947944%_ (gx#syntax-e _%g4792647942%_)))
                        (let ((_%hd4793047947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4792947944%_)))
                              (_%tl4793147949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4792947944%_))))
                          (if (gx#stx-pair? _%tl4793147949%_)
                              (let ((_%e4793247952%_
                                     (gx#syntax-e _%tl4793147949%_)))
                                (let ((_%hd4793347955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4793247952%_)))
                                      (_%tl4793447957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4793247952%_))))
                                  (if (gx#stx-null? _%tl4793447957%_)
                                      ((lambda (_%L47960%_ _%L47961%_)
                                         (lambda (_%self47975%_ _%stx47976%_)
                                           (let* ((_%__stx8538285383%_
                                                   _%stx47976%_)
                                                  (_%g4797947992%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx8538285383%_))))
                                             (let ((_%__kont8538485385%_
                                                    (lambda (_%L48050%_)
                                                      (let* ((_%g4806148079%_
                                                              (lambda (_%g4806248076%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4806248076%_)))
                     (_%g4806048127%_
                      (lambda (_%g4806248082%_)
                        (if (gx#stx-pair? _%g4806248082%_)
                            (let ((_%e4806648084%_
                                   (gx#syntax-e _%g4806248082%_)))
                              (let ((_%hd4806748087%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4806648084%_)))
                                    (_%tl4806848089%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4806648084%_))))
                                (if (gx#stx-pair? _%tl4806848089%_)
                                    (let ((_%e4806948092%_
                                           (gx#syntax-e _%tl4806848089%_)))
                                      (let ((_%hd4807048095%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4806948092%_)))
                                            (_%tl4807148097%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4806948092%_))))
                                        (if (gx#stx-pair? _%tl4807148097%_)
                                            (let ((_%e4807248100%_
                                                   (gx#syntax-e
                                                    _%tl4807148097%_)))
                                              (let ((_%hd4807348103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4807248100%_)))
                                                    (_%tl4807448105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4807248100%_))))
                                                (if (gx#stx-null?
                                                     _%tl4807448105%_)
                                                    ((lambda (_%L48108%_
                                                              _%L48109%_
                                                              _%L48110%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L48050%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L48108%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L47960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L48110%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L47961%_
                                         (cons _%L48109%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4807348103%_
                                                     _%hd4807048095%_
                                                     _%hd4806748087%_)
                                                    (_%g4806148079%_
                                                     _%g4806248082%_))))
                                            (_%g4806148079%_
                                             _%g4806248082%_))))
                                    (_%g4806148079%_ _%g4806248082%_))))
                            (_%g4806148079%_ _%g4806248082%_)))))
                (_%g4806048127%_
                 (list (let ((__obj91266 _%self47975%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91266
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91266
                                '7
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj91266
                              'instance-type)))
                       (let ((__obj91267 _%self47975%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91267
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91267
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj91267
                              'interface-descriptor)))
                       (let ((__obj91268 _%self47975%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91268
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91268
                                '7
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj91268
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont8538685387%_
                                                    (lambda ()
                                                      (let* ((_%g4799948006%_
                                                              (lambda (_%g4800048003%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4800048003%_)))
                     (_%g4799848026%_
                      (lambda (_%g4800048009%_)
                        ((lambda (_%L48011%_) _%L48011%_) _%g4800048009%_))))
                (_%g4799848026%_
                 (let ((__obj91269 _%self47975%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj91269
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj91269 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj91269
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4797848029%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx47976%_)
                                                            (_%__kont8538685387%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4797947992%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx8538285383%_)
                                                     (let ((_%e4798248034%_
                                                            (gx#syntax-e
                                                             _%__stx8538285383%_)))
                                                       (let ((_%tl4798448039%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4798248034%_)))
                     (_%hd4798348037%_
                      (let () (declare (not safe)) (##car _%e4798248034%_))))
                 (if (gx#stx-pair? _%tl4798448039%_)
                     (let ((_%e4798548042%_ (gx#syntax-e _%tl4798448039%_)))
                       (let ((_%tl4798748047%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4798548042%_)))
                             (_%hd4798648045%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4798548042%_))))
                         (if (gx#stx-null? _%tl4798748047%_)
                             (_%__kont8538485385%_ _%hd4798648045%_)
                             (let () (declare (not safe)) (_%g4797848029%_)))))
                     (let () (declare (not safe)) (_%g4797848029%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4797848029%_))))))))
                                       _%hd4793347955%_
                                       _%hd4793047947%_)
                                      (_%g4792547939%_ _%g4792647942%_))))
                              (_%g4792547939%_ _%g4792647942%_))))
                      (_%g4792547939%_ _%g4792647942%_)))))
          (_%g4792448133%_
           (list gerbil/core/contract~InterfaceInfo#_g91347_
                 gerbil/core/contract~InterfaceInfo#_g91348_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id47800%_)
          (cons _%id47800%_
                (let ((__obj91270 (gx#syntax-local-value _%id47800%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj91270
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj91270 '5 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj91270
                       'interface-precedence-list))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst47795%_)
          (let ((_g91349_
                 (c4-linearize
                  '()
                  _%lst47795%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?)))
            (begin
              (let ((_g91350_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g91349_)
                           (##values-length _g91349_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g91350_ 2)))
                    (error "Context expects 2 values" _g91350_)))
              (let ((_%linearized47797%_
                     (let () (declare (not safe)) (##values-ref _g91349_ 0)))
                    (_%_47798%_
                     (let () (declare (not safe)) (##values-ref _g91349_ 1))))
                _%linearized47797%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-signature
        (lambda (_%info47784%_ _%method47785%_)
          (let ((_%sig4778647790%_
                 (find (lambda (_%sig47788%_)
                         (eq? _%method47785%_ (car _%sig47788%_)))
                       (let ((__obj91271 _%info47784%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91271
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91271
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj91271
                              'interface-methods))))))
            (if _%sig4778647790%_
                (let ((_%sig47793%_ _%sig4778647790%_)) (cdr _%sig47793%_))
                '#f))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx47765%_ _%is?47766%_)
          (if (gx#identifier? _%stx47765%_)
              (let ((_%e4776747769%_
                     (gx#syntax-local-value _%stx47765%_ false)))
                (if _%e4776747769%_
                    (let ((_%e47772%_ _%e4776747769%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e47772%_))
                          (_%is?47766%_ _%e47772%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx47777%_)
          (let ((_%is?47779%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx47777%_
             _%is?47779%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g91351_
          (let ((_g91352_ (let () (declare (not safe)) (##length _g91351_))))
            (cond ((let () (declare (not safe)) (##fx= _g91352_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g91351_))
                  ((let () (declare (not safe)) (##fx= _g91352_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g91351_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g91351_)))))))))
