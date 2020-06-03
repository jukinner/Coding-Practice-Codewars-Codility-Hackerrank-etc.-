// Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

// Examples
// "This is an example!" ==> "sihT si na !elpmaxe"
// "double  spaces"      ==> "elbuod  secaps"

import java.util.*;

public class Kata
{
  public static String reverseWords(final String original) {
    if (original.isBlank()) return original;
    String[] arrOfStr = original.split(" ");
    StringBuilder answer = new StringBuilder();
    for (String x : arrOfStr) {
      char[] chars = x.toCharArray();
      for (int y = 1; y < chars.length + 1; y++) {
        answer.append(chars[chars.length - y]);
      }
      answer.append(" ");
    }
    return answer.toString().trim();
  }
}