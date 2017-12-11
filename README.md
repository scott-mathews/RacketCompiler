Team: xXx rAckety McrAcketfAce xXx
==================================

Members:

 * scomathe (Scott Mathews)
 * cspesa (Clint Spesard)


Final Project Summary
=====================
## Final Project Proposal

You can find our final project proposal in the root of our repository 
in the file named "Final Project Proposal.txt"

## Actual Features Implemented

As discussed in our proposal there are 3 main features which were promised
for our final project in our compiler. These features are:
* set!
* while loops
* begin statements
All three of these features have been implemented.

## Discussion and Test Cases

This section contains a discussion of every feature we added to our compiler,
and relevant test cases to demonstrate the cases. If you would like to run
our test cases, please follow the instructions in the section of this README
titled "Instructions for Instructors".

### set!

Relevant files:
```
passes/uniquify-r8.rkt
passes/box-mutations.rkt
```

Compiler Pipeline:
```
Input: untyped R8 (our name for our projects subset of the racket language)
Passes: uniquify-r8 -> box-mutations -> convert-r7 -> ...
```

To implement set! we used the following strategy: convert all variables which
are set!-ed to be boxed. In our implementation, boxing was implemented by using
a vector of length 1 to place the variable on the heap. The implication of
this change is that all places where these variables are initialized must initialize
them as vectors. All places where these variables are used must now use vector-ref
to access the value contained in the box. All places where there was previously
a set! operation now must use a vector-set! operation.

To perform this conversion, we made two significant changes to our compiler. First,
we moved the "uniquify" pass to the beginning of the compiler (before typechecking
and conversion to R6). The reason for this change was to allow significant changes
to variables to be made in the "box mutations" pass we were about to add, without
having to worry about naming conflicts. The difference between "uniquify-r8" and
"uniquify" is that the former handles untyped r8, and the latter handles typed r8.

After uniquifying variables, we begin the process of moving set!-ed variables
into boxes. This process occurs in the pass "box-mutations". This pass performs
two traversals of the AST. The purpose of each traversal is as follows:
* Traversal 1
  * Find variables which are set!-ed
  * Create new variable names for each found variable. These names may be used next traversal.

* Traversal 2
  * Replace the initialization of variables which will later be set!-ed to use boxes.
    * If a variable is instantiated in a let, wrap the right hand side of that let in vector
    * If a variable is instantiated as an argument, wrap the body of the function/lambda which instantiates said argument in a let, which moves the argument to a new variable, which is then wrapped in a vector.
  * Wrap places where set!-ed variables are used with vector-ref
  * Change all set!s to vector-set!s.

#### Relevant tests to set!

---

### while

#### Relevant tests to while

---

### begin

#### Relevant tests to begin



Instructions for Instructors
============================
## Running Our Compiler

Please note that our compiler will only run on the linux operating system.

To run our compiler please take the following steps:

1. Compile and link runtime.c by running the following command

```
gcc -c -g -std=c99 runtime.c
```

2. Run run-tests.rkt by running the following command

```
racket run-tests.rkt
```

3. Sit back and enjoy the tests


Original Support Code Instructions
==================================
## p423-public-code
Utility code, test suites, etc. for the compiler course.

This code will be described in the Appendix of the book.

The `runtime.c` file needs to be compiled and linked with the assembly
code that your compiler produces. To compile `runtime.c`, do the
following
```
   gcc -c -g -std=c99 runtime.c
```
This will produce a file named `runtime.o`. The -g flag is to tell the
compiler to produce debug information that you may need to use
the gdb (or lldb) debugger.

Next, suppose your compiler has translated the Racket program in file
`foo.rkt` into the x86 assembly program in file `foo.s` (The .s filename
extension is the standard one for assembly programs.) To produce
an executable program, you can then do
```
  gcc -g runtime.o foo.s
```
which will produce the executable program named a.out.

There is an example "compiler" in the file `compiler.rkt`.  That
file defines two passes that translate R_0 programs to R_0 programs
and tests them using the `interp-tests` function from `utilities.rkt`. It
tests the passes on the three example programs in the tests
subdirectory. You may find it amusing (I did!) to insert bugs in the
compiler and see the errors reported. Note that `interp-tests` does not
test the final output assembly code; you need to use `compiler-tests`
for that purpose. The usage of `compiler-tests` is quite similar to
`interp-tests`.

