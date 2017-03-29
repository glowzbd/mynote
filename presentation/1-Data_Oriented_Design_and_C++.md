# CppCon 2014 Mike Acton "Data-Oriented Design and C++"

https://www.youtube.com/watch?v=rX0ItVEVjHc

## Gaming industry 
*  avoid exceptions
*  avoid template
  most time it slows down the performance.
*  don't use IOs
* no multiple inheritance
* no complicated operator overloading
* RRTI 
* no STL
* customer allocators (self memory management)
* debugging tools

## Three lies in C++ culture
* Software is a platform

  Hardware is the platform.

* Code designed around model of the world
* Code is more important than data

Code is to transform data. 

Programmer is to solver to problem, not to write the code.

---
function execution cycle
* sin - 100 cycle

memory access cycle 
* register - free
* L1 - 3 cycles
* L2 - 20 cycles
* RAM - 200 cycles

---

memory access VS operation 

10:1

compiler can only work on "1 "

---

virtual results on unmanaged iCache. (instruction cache)

---

How to get the cache hit/miss rate of a program
http://stackoverflow.com/questions/10082517/simplest-tool-to-measure-c-program-cache-hit-miss-and-cpu-time-in-linux

