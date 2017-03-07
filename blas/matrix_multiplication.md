# Matrix Multiplication

## General
[`?gemm`](https://software.intel.com/en-us/node/468480)

## Triangular X normal matrix
[`?trmm`](https://software.intel.com/en-us/node/468494)

## Triangular X Triangular 
Since triangular matrix-matrix multpication will result in a full matrix, 
allocate an empty matrix and copy the other triangular matrix in, then use
`trmm` to compute the result. 

Expected 4x performance improvement, but only 2x could be possibly achieved 
using above method.
