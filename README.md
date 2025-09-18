# InvertMatrix
  Function in R to invert matrices

## Usage
  The function is simple, just call it after executing the script content using a matrix as an argument:

```invert_matrix(Matrix_)```

  The function itself analyzes whether the argument is an invertible square matrix and returns the inverse matrix with a tiny error value, which can be verified using the matrix product operation in R itself `%*%` (in this case, the order of the factors does not change the product) between your initial matrix and the inverse given by the function.
