Team: xXx rAckety McrAcketfAce xXx
----------------------------------

Team Members: scomathe (Scott Mathews), cspesa (Clint Spesard)

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
passes/uniquify-r8.rkt   (entire file)
passes/box-mutations.rkt (entire file)
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

All tests have prefix "tests/final\_[number]" from the root of the repository.

| **test no.** | **test purpose** |
| --- |          ---------------- |
| 13  | set! used within closure on closure variable|
| 14  | set! within while loop within function |
| 15  | basic set! of a let bound variable |
| 16  | set! used within while loop |
| 17  | set! used with function (inside while loop) |
| 18  | set! used on function argument |
| 19  | set! which changes variable's type |
| 20  | set! used on a closure variable (within lambda) |
| 21  | set! used on function argument |
| 22  | set! used on vector within function |

---

### while

Relevant files:
```
passes/convert-r7.rkt              (lines 100-108)
passes/select-instructions-new.rkt (lines 65-67)
passes/uncover-live-new.rkt        (lines 45-56)
passes/lower-conditionals.rkt      (lines 18-27)
```

Compiler pipeline remains unchanged.

The process of adding while loops did not require additional passes. It did require modification of the
existing passes, so as to handle the new construct. First of all, we decided that while loops ought to
return (void). This decision was made based on the implementation of loops in the Racket language (where
they also return (void).

We handled while loops quite similarly to if statements. In early passes, the while loop was trivially recursed
upon. When we reached flatten, we wrapped up the condition and statements of the while loop just like we would
the condition and then/else cases of an if statement. The first challenge came in the uncover-live pass, and
related to register allocation in while loops.

When uncovering instructions for a while loop, it is important to consider that everything live at the end of
the while loop may be live once again at the beginning of the while loop. To handle this case, we modified
uncover-live to make two passes over the while loop. The first pass uncovered live variables without consideration
of looping. The second pass used the live-after variables from the end of the first pass in the second pass. This
ensures that no variables which are live at the end of the while loop are overwritten if the loop proceeds.

Finally, we used the lower-conditionals pass (which was previously used to change if statements from a nested form
to a series of statements, labels, and jumps) to lower while loops as well. This translation of a while loop is as
follows:
```racket
(while (conditional instructions ...) (body instructions ...)) 
|
v
label start_while
conditional instructions ...
conditional jump to end_while
body instructions ...
jump to start_while
label end_while
```

#### Relevant tests to while

All tests have prefix "tests/final\_[number]" from the root of the repository.

| **test no.** | **test purpose** |
| --- |          ---------------- |
| 6  | while loop with begin as conditional |
| 10 | while with comparison against vector-ref as condition |
| 11 | a loop that does not run |
| 13 | while loop containing closure |
| 14  | set! within while loop within function |
| 16  | set! used within while loop |
| 17  | set! used with function (inside while loop) |

---

### begin

Relevant files:
```
passes/flatten-new.rkt (lines 216-221)
```

Compiler pipeline remains unchanged.

Begin is an expression which takes a series of expressions, executes them in order, and returns the value 
of the last expression. The motivation for adding begin to our language is it makes the usage of while loops
and set!s significantly smoother.

In the flatten pass, begin is changed into a series of statements, and the returned value is the flat-variable
of the final expression. After this, begin is fully incorporated into the language.

#### Relevant tests to begin

All tests have prefix "tests/final\_[number]" from the root of the repository.

| **test no.** | **test purpose** |
| --- |          ---------------- |
| 4  | nested begins |
| 5  | if statement with begin as conditional |
| 6  | while loop with begin as conditional |
| 7  | begin with vectors inside |
| 9  | begin as element of a vector |

*Note: begin is used for most of the tests. Some of the begin specific tests are here.*


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

