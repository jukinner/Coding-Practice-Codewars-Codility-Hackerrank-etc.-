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


// initial answer not thinking correctly. brute force method
object Kata {
  def consecutiveDucks(n: Int): Boolean = {
    if (n % 2 == 1) return true
    var sum: Int = 0
    var counter: Int = 1
    var midCounter: Int = 1
    while (counter < (n + 1)/3) {
      sum = 0
      while (sum < n) {
        var range = (counter to midCounter).toArray
        if ((range.sum == n) && (range.size >= 2)) {
          return true
        }
        midCounter += 1
      }
      counter += 1
      midCounter = counter + 1
    }
    false
  }
}


// sumbitted answer-so much simpler. simple math answer
object Kata {
  def consecutiveDucks(n: Int): Boolean = {
   if (((n&(n-1))!=0) && n!=0) true else false
  }
}