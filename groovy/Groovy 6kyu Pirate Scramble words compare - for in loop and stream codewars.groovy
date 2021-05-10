// Arrh, grabscrab!
// Pirates have notorious difficulty with enunciating. They tend to blur all the letters together and scream at people.

// At long last, we need a way to unscramble what these pirates are saying.

// Write a function that will accept a jumble of letters as well as a dictionary, and output a list of words that the pirate might have meant.

// For example:

// grabscrab( "ortsp", ["sport", "parrot", "ports", "matey"] )
// Should return ["sport", "ports"].

// Return matches in the same order as in the dictionary. Return an empty array if there are no matches.

// Good luck!

// First Solution

class Kata {
    static List<String> grabscrab(String word, List<String> possibleWords) {
      List<String> answerList = []
      String sortedWord = word.split("").sort().join()
      for(words in possibleWords){
        if (words.split("").sort().join().equals(sortedWord)) {
          answerList.add(words)
        }
      }
	}
}

// Submitted solution #3 solution once submitted. 
class Kata {
    static List<String> grabscrab(String word, List<String> possibleWords) {
     String sortedWord = word.split("").sort().join()
     def answerList = possibleWords.stream()
                                    .filter { w -> w.split("").sort().join() == sortedWord }
                                    .toList()
      return answerList
	}
}

// #1 solution
class Kata {
    static List<String> grabscrab(String word, List<String> possibleWords) {
        List<Character> cs = word.toList().sort()
        possibleWords.findAll{ it.toList().sort() == cs }
    }
}
// test