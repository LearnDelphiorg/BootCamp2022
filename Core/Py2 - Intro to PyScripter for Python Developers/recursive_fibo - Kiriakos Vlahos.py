#-------------------------------------------------------------------------------
# Name:        recursive_fibo.py
# Purpose:     Calculate the Fibonacci sequence recursively
#-------------------------------------------------------------------------------

nterms = 10

def recur_fibo(n):
   if n <= 1:
       return n
   else:
       return(recur_fibo(n-1) + recur_fibo(n-2))

def main():
    # check if the number of terms is valid
    if nterms <= 0:
       print("Plese enter a positive integer")
    else:
       print("Fibonacci sequence:")
       for i in range(nterms):
           print(recur_fibo(i))

if __name__ == '__main__':
    main()
