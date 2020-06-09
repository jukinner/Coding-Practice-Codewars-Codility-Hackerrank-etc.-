// Welcome. In this kata, you are asked to square every digit of a number.

// For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

// Note: The function accepts an integer and returns an integer

import java.util.*;

public class SquareDigit {

  public int squareDigits(int n) {
    char[] charArray = String.valueOf(n).toCharArray();
    List<Integer> numbers = new ArrayList<Integer>();
    for (char c : charArray) {
      numbers.add(Integer.parseInt(String.valueOf(c)) * Integer.parseInt(String.valueOf(c)));
    }
    StringBuilder str = new StringBuilder();
    for (Integer x : numbers) {
      str.append(Integer.toString(x));
    }
    return Integer.parseInt(String.valueOf(str));
  }
}


// STREAM ANSWER-#2 on list
import java.util.stream.Collectors;

public class SquareDigit {

    public int squareDigits(int n) {
        return Integer.parseInt(String.valueOf(n)
                                      .chars()
                                      .map(i -> Integer.parseInt(String.valueOf((char) i)))
                                      .map(i -> i * i)
                                      .mapToObj(String::valueOf)
                                      .collect(Collectors.joining("")));
    }

}