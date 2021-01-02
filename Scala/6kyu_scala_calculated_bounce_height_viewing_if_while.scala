// A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

// He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

// His mother looks out of a window 1.5 meters from the ground.

// How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

// Three conditions must be met for a valid experiment:
// Float parameter "h" in meters must be greater than 0
// Float parameter "bounce" must be greater than 0 and less than 1
// Float parameter "window" must be less than h.
// If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

// Note:
// The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

// Example:
// - h = 3, bounce = 0.66, window = 1.5, result is 3

// - h = 3, bounce = 1, window = 1.5, result is -1 

// (Condition 2) not fulfilled).

// My initial answer

object BouncingBall {

  def bouncingBall(h: Double, bounce: Double, window: Double): Int = {
    var counter: Int = 1
    var calculatedBounceHeight: Double = h
    if (h <= 0 || bounce >= 1 || bounce <= 0 || window >= h) {
      counter = -1
    } else {
      while (calculatedBounceHeight > window) {
        calculatedBounceHeight = calculatedBounceHeight * bounce
        if (calculatedBounceHeight > window) counter += 2
      }
    }
    counter
  }
}


// top solution
import scala.math.{ceil,log}
object BouncingBall {

  def bouncingBall(h: Double, b: Double, w: Double): Int =
    if (h <= 0 || b <= 0 || b >= 1 || w >= h) -1
    else -1 + 2 * ceil(log(w/h)/log(b)).toInt
}

// case statement
object BouncingBall {
  def bouncingBall(h: Double, bounce: Double, window: Double): Int = h match {
    case _ if h <= 0 => -1
    case _ if bounce >= 1 || bounce <= 0 => -1
    case _ if window >= h => -1
    case _ => 2 * Stream.iterate(h)(_ * bounce).takeWhile(_ > window).size - 1
  }
}

// recursion
object BouncingBall {

  def bouncingBall(h: Double, bounce: Double, window: Double): Int = {
    if(h <= 0 || h <= window || bounce <= 0 || bounce >= 1 ) -1
    else 2 + bouncingBall(h*bounce, bounce, window) 
  }
}