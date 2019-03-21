# cs6241
There are 6 simple benchmark in the simpleBenchmark folder.\
.c files contain the source code of each benchmark
.ll file are non-ssa IR files
-mem2reg.ll are ssa IR files
you can choose either one to work with.

The real benchmark is a compress program from SPEC2006, which is in the src folder.
After you finish your implementation of the project, you need to modify the Makefile to run your pass in the building stage. 
After you build bzip2, you will using bzip2 on two files which located in testData folder.
You will first compress these two files by running the following commands under src folder
./bzip2 ../testData/dryer.jpg
./bzip2 ../testData/input.program

Then you will decompress these two files by running the following commands:

./bzip2 -d ../testData/dryer.jpg.bz2
./bzip2 -d ../testData/input.program.bz2 

