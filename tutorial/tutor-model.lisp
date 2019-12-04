(clear-all)

(define-model tutor-model
    
(sgp :esc t :lf .05 :trace-detail medium)


;; Add Chunk-types here

(chunk-type addition-fact addend1 addend2 sum)
(chunk-type add-pair one1 ten1 one2 ten2 ten-ans one-ans carry)

;; Add Chunks here

(add-dm
 (fact17 isa addition-fact addend1 1 addend2 7 sum 8)
 (fact34 isa addition-fact addend1 3 addend2 4 sum 7)
 (fact67 isa addition-fact addend1 6 addend2 7 sum 13)
 (fact103 isa addition-fact addend1 10 addend2 3 sum 13)
 (goal isa add-pair ten1 3 one1 6 ten2 4 one2 7))

;; Add productions here





(goal-focus goal)
)