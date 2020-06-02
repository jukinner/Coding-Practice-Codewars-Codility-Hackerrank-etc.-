// Happy Holidays fellow Code Warriors!!
// Santa's senior gift organizer Elf developed a way to represent up to 26 gifts by assigning a unique alphabetical character to each gift. After each gift was assigned a character, the gift organizer Elf then joined the characters to form the gift ordering code.

// Santa asked his organizer to order the characters in alphabetical order, but the Elf fell asleep from consuming too much hot chocolate and candy canes! Can you help him out?

// Sort the Gift Code
// Write a function called sortGiftCode/sort_gift_code/SortGiftCode that accepts a string containing up to 26 unique alphabetical characters, and returns a string containing the same characters in alphabetical order.

// Examples:
// GiftSorter gs = new GiftSorter();
// gs.sortGiftCode( 'abcdef' ); //=>  'abcdef'
// gs.sortGiftCode( 'pqksuvy' ); //=>  'kpqsuvy'
// gs.sortGiftCode( 'zyxwvutsrqponmlkjihgfedcba' ); //=>  'abcdefghijklmnopqrstuvwxyz'

import java.util.Arrays;

public class GiftSorter{
  public String sortGiftCode(String code){
    String[] arrOfStr = code.split("");
    Arrays.sort(arrOfStr);
    return String.join("",arrOfStr);
  }
}

//top answer-great use of splitting a string into individual chars. Similar to Ruby. string.chars or number.digits. 
public class GiftSorter{
  public String sortGiftCode(String code){
    char[] chars = code.toCharArray();
    java.util.Arrays.sort(chars);
    return new String(chars);
  }
}
