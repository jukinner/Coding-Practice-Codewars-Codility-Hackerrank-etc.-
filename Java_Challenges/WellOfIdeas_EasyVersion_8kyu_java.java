// For every good kata idea there seem to be quite a few bad ones!

// In this kata you need to check the provided array (x) for good ideas 'good' and bad ideas 'bad'. If there are one or two good ideas, return 'Publish!', 
// if there are more than 2 return 'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.

public class Kata {

  public static String well(String[] x) {
  Integer good = 0;
    for (String word : x) {
      if (word.equals("good")) good++;
    }
  if (good.equals(2) || good.equals(1)) return "Publish!";
  if (good > 2) return "I smell a series!";
  return "Fail!";
  }
}