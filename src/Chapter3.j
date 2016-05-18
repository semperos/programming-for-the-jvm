.class Chapter3

.method static multiply6by9()I
  bipush 6
  bipush 9
  imul

  ireturn
.end method

;; Calculate: ax^2 + bx + c, integers
;; Variable slots:
;;  * 0 a
;;  * 1 b
;;  * 2 c
;;  * 3 x
.method static exercise3_3(IIII)I
  .limit stack 3
  iload_3   ; x on stack
  iload_3   ; x on stack again
  imul      ; x^2

  iload_0   ; a on stack
  imul      ; ax^2

  iload_1   ; b on stack
  iload_3   ; x on stack
  imul      ; bx

  iadd      ; ax^2 + bx

  iload_2   ; c on stack

  iadd      ; (ax^2 + bx) + c

  ireturn
.end method

;; Calculate: ax^2 + bx + c, doubles
;; Variable slots:
;;  * 0-1 a
;;  * 2-3 b
;;  * 4-5 c
;;  * 6-7 x
.method static exercise3_4(DDDD)D
  .limit stack 6
  dload 6   ; x on stack
  dload 6   ; x on stack, again
  dmul      ; x^2

  dload_0   ; a on stack
  dmul      ; ax^2

  dload_2   ; b on stack
  dload 6   ; x on stack
  dmul      ; bx

  dadd      ; ax^2 + bx

  dload 4   ; c on stack

  dadd      ; (ax^2 + bx) + c

  dreturn
.end method

;; Calculate: ((ax + b)x) + c, integers
;; Variable slots:
;;  * 0 a
;;  * 1 b
;;  * 2 c
;;  * 3 x
;; Thrust of this one is, it's the same calculation
;; as exercise3_3, but uses one fewer slot on the stack
;; and fewer overall operations.
.method static exercise3_5(IIII)I
  .limit stack 2
  iload_0   ; a on stack
  iload_3   ; x on stack
  imul      ; ax

  iload_1   ; a on stack
  iadd      ; (ax) + b

  iload_3   ; x on stack
  imul      ;(ax + b)x

  iload_2   ; c on stack
  iadd      ; outermost addition

  ireturn
.end method

;; Given an integer, return how many 1's are in
;; its binary representation.
;;
;; 0 x
.method static exercise3_6(I)I
  ;; .limit stack 1

  ;; This is what we increment
  ;; for our final answer
  iconst_0    ; put 0 on stack
  istore_1    ; put 0 (acc) in slot 1

  ;; Iteration 0
  iload_0     ; put x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1

  ;; This works because 1 & 1 => 1
  ;; Whereas            0 & 1 => 0
  ;; So adds either 0 (nay) or 1 (yea)
  ;; to the accumulator.
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 1
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 2
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 3
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 4
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 5
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 6
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 7
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 8
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 9
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 10
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 11
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 12
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 13
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 14
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 15
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 16
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 17
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 18
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 19
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 20
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 21
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 22
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 23
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 24
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 25
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 26
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 27
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 28
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 29
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 30
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  ;; Iteration 31
  iload_0     ; shifted x on stack
  iconst_1    ; put 1 on stack
  iand        ; x & 1
  iload_1     ; put acc on stack
  iadd        ; (x & 1) + acc
  istore_1    ; store acc

  iload_0     ; put x back on stack
  iconst_1    ; going to shift right 1
  ishr        ; x >> 1
  istore_0    ; store (x >> 1)

  iload_1        ; put acc on stack
  ireturn        ; return acc
.end method

.end class
