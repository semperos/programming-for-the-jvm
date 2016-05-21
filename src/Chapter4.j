.class Dinosaur

;; TODO OO best practice would be to encapsulate these.
;;      Writing getter/setter methods left as exercise
;;      for this exercise :-)
.field public _name Ljava/lang/String;
.field public _isCarnivore Z

.method <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method <init>(Ljava/lang/String;)V
    aload_0
    invokespecial java/lang/Object/<init>()V
    aload_0
    aload_1
    putfield Dinosaur/_name Ljava/lang/String;
    return
.end method

.method <init>(Ljava/lang/String;Z)V
    aload_0
    invokespecial java/lang/Object/<init>()V
    aload_0
    aload_1
    putfield Dinosaur/_name Ljava/lang/String;
    aload_0
    iload_2
    putfield Dinosaur/_isCarnivore Z
    return
.end method

.end class ;; Dinosaur

.class Velociraptor
.super Dinosaur

.method <init>(Ljava/lang/String;)V
    aload_0    ; 'this'
    aload_1    ; name of dinosaur
    bipush 1   ; boolean for _isCarnivore
    invokespecial Dinosaur/<init>(Ljava/lang/String;Z)V
    return
.end method

.end class ;; Velociraptor

.class Chapter4
.end class
