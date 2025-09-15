// Question 1: Write a function that takes two integers as parameters and returns their sum.

int sum(int a , int b){
  return a + b;
}

//Question No 2:  Write a function that takes an integer as input and returns "Even" if the number is even and "Odd" otherwise.

String isNumEven(int n){
  return n%2==0 ? "Even" : "Odd";
}

// Question No 3: Create a function that takes three numbers as arguments and returns the largest number

int largestNum(int a , int b , int c){
  if(a>=b && a>=c){
    return a;
  } else if(b>=a && b>=c){
    return b;
  } else{
    return c;
  }
}

// Question No 4: Write a function that takes a string as input and returns the reversed string.

String reverseString(String str) {
  return str.split('').reversed.join();
}

// Question No 5: Create a recursive function to calculate the factorial of a given number.

int factorial(int n){
  if(n==0){
    return 1;
  }
  return n * factorial(n-1);
}

// Question No 6. Write a function that checks if a given number is prime.

bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

// Question No 7. Write a recursive function to print the Fibonacci series up to n terms. 

int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// Question No 8. Write a function that counts and returns the number of vowels in a given string.

int countVowels(String str) {
  int count = 0;
  String vowels = "aeiouAEIOU";
  for (int i = 0; i < str.length; i++) {
    if (vowels.contains(str[i])) count++;
  }
  return count;
}

// Question No 9. Write a function to calculate the GCD of two numbers using recursion.

int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}

// Question No 10. Write a function that converts Celsius to Fahrenheit.

double celsiusToFahrenheit(double c) {
  return (c * 9 / 5) + 32;
}


void main(){

  print("Question 1 Output : ${sum(10,20)}"); // Q1
  print("Question 2 Output : ${isNumEven(5)}"); // Q2
  print("Question 3 Output : ${largestNum(10,20,15)}"); // Q3
  print("Question 4 Output : ${reverseString("Hello")}"); // Q4
  print("Question 5 Output : ${factorial(5)}"); // Q5
  print("Question 6 Output : ${isPrime(7)}"); // Q6
  print("Question 7 Output : ${fibonacci(6)}"); // Q7
  print("Question 8 Output : ${countVowels("Hello World")}"); // Q8
  print("Question 9 Output : ${gcd(48,18)}"); // Q9
  print("Question 10 Output : ${celsiusToFahrenheit(37)}"); // Q10
  
}