// Task
// Given a Divisor and a Bound , Find the largest integer N , Such That ,

// Conditions :
// N is divisible by divisor

// N is less than or equal to bound

// N is greater than 0.

// Notes
// The parameters (divisor, bound) passed to the function are only positve values .
// It's guaranteed that a divisor is Found .
// Input >> Output Examples
// maxMultiple (2,7) ==> return (6)

public class MaxMultiple {
  public static int maxMultiple(int divisor, int bound) {
    int answer = 0;
    for(int c = bound; c > 1; c--) {
      if(c % divisor == 0) {
        answer = c;
        break;
      }
    }
    return answer;
  }
}