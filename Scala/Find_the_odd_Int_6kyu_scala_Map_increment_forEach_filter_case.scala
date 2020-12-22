// Given an array of integers, find the one that appears an odd number of times.

// There will always be only one integer that appears an odd number of times.

import scala.collection.mutable.Map; 

object FindTheOddInt {
  def findOdd(xs: Seq[Int]): Int = {
    var counterMap = Map[Int, Int]();
    for (x <- xs) {
      counterMap.updateWith(x)({ case Some(count) => Some(count + 1) case None => Some(1) })
      } 
    counterMap.filter(x => x._2 % 2 == 1).head._1
  }
}

// import org.scalatest._, prop._
// import FindTheOddInt.findOdd

// class FindTheOddIntSpec extends FunSuite with TableDrivenPropertyChecks with Matchers {
//   test("Fixed tests") {
//     val fixedTests = Table[Seq[Int], Int](
//       ("xs", "expected"),
//       (List(20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5), 5),
//       (List(1,1,2,-2,5,2,4,4,-1,-2,5), -1),
//       (List(20,1,1,2,2,3,3,5,5,4,20,4,5), 5),
//       (List(10), 10),
//       (List(1,1,1,1,1,1,10,1,1,1,1), 10),
//       (List(5,4,3,2,1,5,4,3,2,10,10), 1),
//     )
//     forAll(fixedTests) { findOdd(_) shouldBe _ }
//   }
// }


//Top Ranked solutions
object FindTheOddInt {

  def findOdd(xs: Seq[Int]): Int =
    xs.find(x => xs.count(_ == x) % 2 == 1).get
}

object FindTheOddInt {
  def findOdd(xs: Seq[Int]): Int = xs.reduce(_ ^ _)
}

object FindTheOddInt {

  def findOdd(xs: Seq[Int]): Int =
    xs.groupBy(identity).collect { case (x, vs) if vs.size%2 == 1 => x }.head
}

object FindTheOddInt {
  def findOdd(xs: Seq[Int]): Int = {
    
   val x = xs.groupBy(identity).mapValues(_.size).toSeq      
   val y = x.filter( t => t._2 %2!=0 )
   
   y(0)._1 
  }
}