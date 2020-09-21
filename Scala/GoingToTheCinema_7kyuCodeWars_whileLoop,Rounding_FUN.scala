// My friend John likes to go to the cinema. He can choose between system A and system B.

// System A : he buys a ticket (15 dollars) every time
// System B : he buys a card (500 dollars) and a first ticket for 0.90 times the ticket price, 
// then for each additional ticket he pays 0.90 times the price paid for the previous ticket.
// #Example: If John goes to the cinema 3 times:

// System A : 15 * 3 = 45
// System B : 500 + 15 * 0.90 + (15 * 0.90) * 0.90 + (15 * 0.90 * 0.90) * 0.90 ( = 536.5849999999999, no rounding for each ticket)
// John wants to know how many times he must go to the cinema so that the final result of System B, when rounded up to the next dollar, will be cheaper than System A.

// The function movie has 3 parameters: card (price of the card), ticket (normal price of a ticket), perc (fraction of what he paid for the previous ticket) and returns the first n such that

// ceil(price of System B) < price of System A.
// More examples:

// movie(500, 15, 0.9) should return 43 
//     (with card the total price is 634, with tickets 645)
// movie(100, 10, 0.95) should return 24 
//     (with card the total price is 235, with tickets 240)

import java.lang.Math

object Movie {
  def roundUp(d: Double) = math.ceil(d)
  
  def movie(card: Int, ticket: Int, perc: Double): Int = {
    var count: Int = 1
    var sysACost: Int = ticket
    var sysBCost: Double = card + (ticket * perc)
    var newPerc: Double = perc
    while(sysACost <= roundUp(sysBCost)) {
      count = count + 1
      sysACost = sysACost + ticket
      newPerc = newPerc * perc
      sysBCost = sysBCost + ticket * newPerc
    }
    return count
  }    
}

TESTS
import org.scalatest._
import org.scalatest.Assertions._

import MovieTest._

class MovieTest extends FlatSpec { 
  it should "pass basic tests" in {
    testing(500, 15, 0.9, 43)
    testing(100, 10, 0.95, 24)
    
  }
}

object MovieTest {

    private def testing(card: Int, ticket: Int, perc: Double, expect: Int): Unit = {
        println("Testing: " + card +", " + ticket + ", " + perc)
        val actual: Int = Movie.movie(card, ticket, perc)
        println("Actual: " + actual)
        println("Expect: " + expect)
        println("*")
        assertResult(expect){actual}
    }
}
