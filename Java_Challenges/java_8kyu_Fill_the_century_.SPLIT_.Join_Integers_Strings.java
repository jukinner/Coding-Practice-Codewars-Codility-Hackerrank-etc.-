// The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

// Task :
// Given a year, return the century it is in.

// Input , Output Examples ::
// centuryFromYear(1705)  returns (18)
// centuryFromYear(1900)  returns (19)
// centuryFromYear(1601)  returns (17)
// centuryFromYear(2000)  returns (20)
// Hope you enjoy it .. Awaiting for Best Practice Codes

// Enjoy Learning !!!

// My solution
import java.util.*;

public class Solution {
  public static int century(int number) {
    String[] spltStr = Integer.toString(number).split("");
    if (String.join("",spltStr[spltStr.length - 2],spltStr[spltStr.length - 1]).equals("00")) {
      return Integer.parseInt(String.join("",spltStr[0],spltStr[1]));
    } else if (spltStr.length == 2) {
      return 1;
    } else if ((spltStr.length == 3) && (String.join("",spltStr[spltStr.length - 2],spltStr[spltStr.length - 1]).equals("00"))) {
      return Integer.parseInt(String.join("",spltStr[0]));
    } else if (spltStr.length == 3) {
      return Integer.parseInt(String.join("",spltStr[0])) + 1;
    } else {
      return Integer.parseInt(String.join("",spltStr[0], spltStr[1])) + 1;
    }
  }
}

// Best answer, which I knew was an option. I wanted to work with strings. 
public class Solution {
  public static int century(int number) {
    return (number + 99) / 100;
  }
}