# CppCon 2015: Chandler Carruth "Tuning C++: Benchmarks, and CPUs, and Compilers! Oh My!" 

https://www.youtube.com/watch?v=nXaxk27zwlk

* google benchmark tool, interesting
* use -fno-omit-framepointer to keep the call stack
* perf is a good tool

  Some examples shown in the presentation,
  1.  run the executable with recording `perf record <exec>`
  2.  show the report `perf report "graph,0.5,caller"`
  3.  press `a` for assembly code

* asm is powerful 
* optimizer is very limited. level of complexity could confuse the optimizer. 

