// The factorial of a number, n!, is defined for whole numbers as the product of all integers from 1 to n.

// For example, 5! is 5 * 4 * 3 * 2 * 1 = 120

// Most factorial implementations use a recursive function to determine the value of factorial(n). However, this blows up the stack for large values of n - most systems cannot handle stack depths much greater than 2000 levels.

// Write an implementation to calculate the factorial of arbitrarily large numbers, without recursion.

// Rules
// n < 0 should return nil/ None
// n = 0 should return 1


import scala.math.BigInt

object Sol {
  def factorial(n: Int): Option[BigInt] = {
    if (n < 0) {
      return None
    } else if (n == 0) {
      val answer:Option[BigInt] = Some(1)
      return answer
    } else {
      print(n)
      var counter: Int = 1
      var sum: BigInt = (1)
      while (counter < n) {
        sum = sum + (sum * counter)
        counter += 1
      }
      Option(sum)
    }
  }
}


// Best Practices

object Sol {
  def factorial(n: Int): Option[BigInt] = {
    if (n >= 0) Some((BigInt(1) to n).product) else None
  }
}

object Sol {

  def factorial(n: Int): Option[BigInt] =
    Option.when(n >= 0)((BigInt(2) to n).product)
}

object Sol {
  def factorial(a: Int): Option[BigInt] = {
    if (a >= 0) Some((BigInt(1) to a).product) else None
  }
}


object Sol {
  def factorial(n: Int): Option[BigInt] = {
    if (n < 0) None
    else if (n == 0) Some(1)
    else Some(Range(1, n+1).foldLeft(BigInt(1))(_ * _))
  }
}