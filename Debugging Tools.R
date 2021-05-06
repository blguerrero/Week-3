#Example of if and else in a function
printmessage <- function(x){
  if(x>0)
    print("x is greater than zero")
  else
    pring("x is less than zero")
  invisible(x)
}
printmessage(7)
