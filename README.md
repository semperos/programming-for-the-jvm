# Daniel's README

This is code from the CD inside _Programming for the Java Virtual Machine_ by Joshua Engel, pubished 1999 with Addison Wesley. I've added my own `*.j` Oolong and Java source files as I work through the book.

I've added the `src` directory, in which I'm keeping my Oolong source, as well as the `tests/RunTests.java` that uses JUnit to run tests and the `test.sh` file which compiles and tests everything. I've also added a `.classpath` file to keep track of the JVM CLASSPATH for this project.

## Usage

To run tests, invoke `./test.sh`. This will compile all Oolong and Java files and run all the code, primarily as tests written with JUnit for nice reporting.

See `README.txt.orig` for the original README.