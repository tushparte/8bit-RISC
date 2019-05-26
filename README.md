To test the processor, we need a set of instructions.

We input these instructions into test.prog file.

Similarly, we need an initial state for the memory
block and we input this into test.data file.

In instruction `memory.v` module, we need to ensure
that the lines macro definition equals the number of
lines we want to read from the test.prog starting
from the first line.

You can compile the modules, execute the vvp script, and see the results directly using the command `bash test.sh`.

Alternately, you can do this manually:

`$ iverilog *.v –o out`

This command compiles the modules to generate executable.

`$ ./out`

This command executes our test program using the 8 bit
processor

OUTPUT : the above commands generate two output files,
memory.dat and result.dat

Result.dat contains the initial and final states of register block.
Memory.dat contains the initial and final states of memory block.
