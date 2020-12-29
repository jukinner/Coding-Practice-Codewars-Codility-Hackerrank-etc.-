// Complete the solution so that it reverses the string passed into it.

// 'world'  =>  'dlrow'

object Kata {

  def solution(word: String): String = {
    var answer = new StringBuffer
    for (l <- word.split("")) answer.insert(0, l)
    answer.toString
  }
}

// Other answers (chose not to use reverse since it doesn't teach anything)

object Kata {

  def solution(word: String): String = {
    word.reverse  
  }

}

object Kata {
  def solution: (String) => String = _.reverse
}

object Kata {

  def solution(word: String): String = {
     word.foldLeft("")((accumulator, nextChar) => nextChar + accumulator)
  }

}

object Kata {

  def solution(word: String): String = {
    var a= word.length()-1
     var res=""
      while( a >= 0 ){
         res+= word(a)
         a = a - 1;
      }
     res
  }

}

object Kata {

  def solution(word: String): String = {
  return ("" /: word)(_.+:(_))
     
  }

}

object Kata {

  def solution(word: String): String = {
     word.toArray.reverse.mkString("");
  }

}