// Positive integers have so many gorgeous features. Some of them could be expressed as a sum of two or more consecutive positive numbers.

// Consider an Example :
// 10 , could be expressed as a sum of 1 + 2 + 3 + 4.
// Task
// Given Positive integer, N , Return true if it could be expressed as a sum of two or more consecutive positive numbers , OtherWise return false .

// Notes
// Guaranteed constraint : 2 ≤ N ≤ (2^31) -1 .
// Input >> Output Examples:

// * consecutiveDucks(9)  ==>  return (true)  //  9 , could be expressed as a sum of ( 2 + 3 + 4 ) or ( 4 + 5 ) . 

// * consecutiveDucks(64)  ==>  return (false)

// * consecutiveDucks(42)  ==>  return (true) //  42 , could be expre

object Kata {
  def consecutiveDucks(n: Int): Boolean = {
    var sum: Int = 0
    var counter: Int = 1
    var midCounter: Int = 1
    while (counter < (n + 1)/2) {
      sum = 0
      while (sum < n) {
        sum = (counter to midCounter).sum
        if ((sum == n) && ((counter to midCounter).size >= 2)) {
          return true
        }
        midCounter += 1
      }
      midCounter = 1
      counter += 1
    }
    false
  }
}