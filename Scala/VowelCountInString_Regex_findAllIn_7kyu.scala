// Return the number (count) of vowels in the given string.

// We will consider a, e, i, o, u as vowels for this Kata (but not y).

// The input string will only consist of lower case letters and/or spaces.

object Sol {

  def getCount(inputStr: String): Int = {
    val vowels = raw"([aeiou])".r
    val count: Int = vowels.findAllIn(inputStr).toList.size
    count
  }
}

// best practices below
object Sol {

  def getCount(s: String): Int = {
    s.count("aeiou".contains(_))
  }
}

object Sol {
  def getCount(inputStr: String): Int = {
    val vowels = Set('a', 'e', 'i', 'o', 'u')
    inputStr.filter(vowels.contains).length
  }
}

object Sol {

  def getCount(inputStr: String): Int = {
    // your code here
    inputStr.count(Set('a', 'e', 'i', 'o', 'u'))
  }
}