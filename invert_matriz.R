# Function to invert a quadratic matrix:
#The function expects 'Matriz_' are a matrix object type
invert_matrix<-function(Matrix_){
  if(is.matrix(Matrix_)==F){
    stop("This't a matrix")
  }
  n_row=length(Matrix_[,1])
  n_col=length(Matrix_[1,])
  if(n_col!=n_row){
    stop("The matrix is not quadratic!")
  }
  if(det(t)==0){
    stop("Det. of matrix is 0; it's not possible to invert it!")
  }
  n<-n_row
  matrixExpand<-cbind(Matrix_,diag(n)) 
  #matrixExpand[,(n+1):(2*n)] is the result
  #matrixExpand[,1:n] is the Matrix_
  i=1
  j=1
  #Gauss-Jordan method:
  while(j<=n){
    while(i<=n){
      if(j==i && matrixExpand[i,j]!=1){
        matrixExpand[i,]<-matrixExpand[i,]/matrixExpand[i,j]
      }
      if(j!=i&&matrixExpand[i,j]!=0){
        if(j<i){
          matrixExpand[i,]<-matrixExpand[i,]-(matrixExpand[j,]*matrixExpand[i,j])
        }
        else{
          matrixExpand[i,]<-matrixExpand[i,]-(matrixExpand[i+1,]*matrixExpand[i,j]/matrixExpand[i+1,j])
        }
      }
      i<-1+i
    }
    j<-j+1
    i=1
  }
  return(matrixExpand[,(n+1):(2*n)])
}
#Make by MafiusKity
#
#          |\__/,|   (`\
#        _.|o o  |_   ) )
#       -(((---(((--------
#
#32:27           