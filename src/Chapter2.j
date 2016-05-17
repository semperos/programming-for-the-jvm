.class hello
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 2
.limit locals 1
  ; Blank line
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc ""
  invokevirtual java/io/PrintStream/println
    (Ljava/lang/String;)V

  ; Message
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Hello, Oolong!"
  invokevirtual java/io/PrintStream/println
    (Ljava/lang/String;)V

  ; Blank line
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc ""
  invokevirtual java/io/PrintStream/println
    (Ljava/lang/String;)V
  return
.end method

.end class
