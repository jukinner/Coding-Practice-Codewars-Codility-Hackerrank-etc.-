// Clock shows 'h' hours, 'm' minutes and 's' seconds after midnight.

// Your task is to make 'Past' function which returns time converted to milliseconds.

// Example:
// past(0, 1, 1) == 61000

object Kata {
  def past(h: Int, m: Int, s: Int): Int = {
      (s * 1000) + (m * 60000) + (h * 60 * 60000)
      }
}

object Kata {

  def past(h: Int, m: Int, s: Int): Int =
    (3_600 * h + 60 * m + s) * 1_000
}

Love the inline methods
object Kata {

  def multiplyBy (a: Int) = (b:Int) => a * b
  def secondsToMiliseconds = multiplyBy(1000)
  def minutesToMiliseconds =  multiplyBy(60) andThen secondsToMiliseconds
  def hourToMiliseconds = multiplyBy(60) andThen minutesToMiliseconds
  def past(h: Int, m: Int, s: Int): Int =  hourToMiliseconds(h) + minutesToMiliseconds(m) + secondsToMiliseconds(s)
}

//Really like this one. 
object Kata {
  def past(h: Int, m: Int, s: Int): Long = {
      val format = new java.text.SimpleDateFormat("HH:mm:ss")
      format.parse(s"$h:$m:$s").getTime()
  }
}