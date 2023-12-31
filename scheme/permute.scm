(define (perm-aux head lst result)
    (cond ((and (null? head) (null? lst)) (cons result '() ))
          ((or (null? head) (null? lst)) '() )
          (else 
            (append 
               (perm-aux (remove (car head) lst )
                         (remove (car head) lst)
                         (cons (car head) result ) )
               (perm-aux (cdr head) lst result) ) ) ) )

(define (perm lst)
        (perm-aux lst lst '() ) )