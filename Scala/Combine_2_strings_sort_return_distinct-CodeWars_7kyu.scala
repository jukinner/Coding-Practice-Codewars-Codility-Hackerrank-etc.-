// Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,

// each taken only once - coming from s1 or s2.
// Examples:
// a = "xyaabbbccccdefww"
// b = "xxxxyyyyabklmopq"
// longest(a, b) -> "abcdefklmopqwxy"

// a = "abcdefghijklmnopqrstuvwxyz"
// longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

//MY Answer
object Kata {

  def longest(s1: String, s2: String): String = {
    var newStr = s1 + s2
    newStr.split("").toList.sortWith(_ < _).distinct.mkString("")
  }
}

//best voted on Answer
object Kata {

  def longest(s1: String, s2: String): String = (s1 + s2).toSeq.distinct.sorted.unwrap
}

// TESTS
import org.scalatest._

class KataTest extends FlatSpec with Matchers {

  val tests = List(
    (("aretheyhere", "yestheyarehere"), "aehrsty"),
    (("loopingisfunbutdangerous", "lessdangerousthancoding"), "abcdefghilnoprstu"),
    (("inmanylanguages", "theresapairoffunctions"), "acefghilmnoprstuy")
  )

  tests.foreach {
    case ((s1, s2), expected) =>
      s"longest($s1, $s2)" should s"return $expected" in {
        Kata.longest(s1, s2) should be (expected)
      }
  }
}