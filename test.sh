#!/bin/bash

set -e -u

BUILD=classes
SRC=src
TEST=tests
CLASSPATH=$(cat .classpath)

# Clean slate
rm -rf $BUILD/*

# Compile Oolong source files to JVM class files
for oolong_file in $SRC/*.j
do
  java Oolong -d $BUILD $oolong_file
done

javac -cp "$CLASSPATH" -d $BUILD $TEST/RunTests.java

# Chapter 2 'Hello world'
java -cp "$CLASSPATH" hello

# Run tests via JUnit for everything else
java -cp "$CLASSPATH" org.junit.runner.JUnitCore RunTests
