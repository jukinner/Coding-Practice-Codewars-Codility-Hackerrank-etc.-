// Let us consider this example (array written in general format):

// ls = [0, 1, 3, 6, 10]

// Its following parts:

// ls = [0, 1, 3, 6, 10]
// ls = [1, 3, 6, 10]
// ls = [3, 6, 10]
// ls = [6, 10]
// ls = [10]
// ls = []
// The corresponding sums are (put together in a list): [20, 20, 19, 16, 10, 0]

// The function parts_sums (or its variants in other languages) will take as parameter a list ls and return a list of the sums of its parts as defined above.

// Other Examples:
// ls = [1, 2, 3, 4, 5, 6] 
// parts_sums(ls) -> [21, 20, 18, 15, 11, 6, 0]

// ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]
// parts_sums(ls) -> [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
// Notes
// Some lists can be long.
// Please ask before translating: some translations are already written and published when/if the kata is approved.

1st Implementation-not performant enough. 
object Kata {

  def partsSums(l: List[Int]): List[Int] = {
    var finalList = List[Int]()
    for( a <- 0 to (l.size)){
        finalList = l.drop(a).sum :: finalList
      }
    return finalList.reverse
  }
}

second implementation. 
WORK IN PROGRESS> need to use listBuffer for mutable list. LIsts are immutable. 
object Kata {

  def partsSums(l: List[Int]): List[Int] = {
    var runningSum = l.sum
    var finalList = runningSum :: List[Int]()
    if (l.size > 0) {
      for( a <- 0 to (l.size - 1)){
//         println(a)
//         println(l(a))
        runningSum = runningSum - l(a)
        finalList = finalList :+ runningSum
      }
    }
//     println(runningSum)
//     println(finalList)
//     finalList = 0 :: finalList
    return finalList
  }
}
Ccheck out this link for list buffer info.
https://alvinalexander.com/scala/how-add-elements-to-a-list-in-scala-listbuffer-immutable/