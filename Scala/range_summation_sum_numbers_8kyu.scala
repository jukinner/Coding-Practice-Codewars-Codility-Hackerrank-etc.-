// Grasshopper - Summation
// Summation
// Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

// For example:

// summation(2) -> 3
// 1 + 2

// summation(8) -> 36
// 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

object Kata {

  def summation(n: Int): Int = {
    var sum: Int = 0
    var counter: Int = 1
    while (counter < n + 1) {
      sum += counter
      counter += 1
    }
  sum
  }
}

my submitted solution
object Kata {

  def summation(n: Int): Int = {
    (1 to n).sum
  }
}