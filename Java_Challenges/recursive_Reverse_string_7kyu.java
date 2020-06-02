// Do you know how to write a recursive function? Let's test it!
// * Definition: Recursive function is a function that calls itself during its execution *

// Classic factorial counting on Javascript
// function factorial(n) {
//   return n <= 1 ? 1 : n * factorial(n-1) 
// }
// Your objective is to complete a recursive function reverse() that receives str as String and returns the same string in reverse order

// Rules:

// reverse function should be executed exactly N times. N = length of the input string
// helper functions are not allowed
// changing the signature of the function is not allowed

public class Reverse {

public String reverse(String str) {
  StringBuilder answer = new StringBuilder();
  answer.append(str.substring(str.length() -1));
  if (str.length() > 1) {
    answer.append(reverse(str.substring(0, str.length()-1)));
  } 
    return answer.toString();
  }
}