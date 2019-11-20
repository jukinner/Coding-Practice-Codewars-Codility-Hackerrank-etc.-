// Return the number (count) of vowels in the given string.

// We will consider a, e, i, o, and u as vowels for this Kata.

// The input string will only consist of lower case letters and/or spaces.

import java.util.regex.*;

public class Vowels {

  public static int getCount(String str) {
    int vowelsCount = 0;
    Pattern pattern = Pattern.compile("[aeiou]");
    Matcher matcher = pattern.matcher(str);
    while (matcher.find())
      vowelsCount++;
    return vowelsCount;
  }

}