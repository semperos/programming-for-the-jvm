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

.end class
