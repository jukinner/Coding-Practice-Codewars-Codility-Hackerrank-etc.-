// Given an array of integers, return a new array with each value doubled.

// For example:

// [1, 2, 3] --> [2, 4, 6]

// For the beginner, try to use the map method - it comes in very handy quite a lot so is a good one to know.

//my answer
public class Maps {
  public static int[] map(int[] arr) {
    int[] answer = new int[arr.length];
    for (int i = 0; i < arr.length; i++) {
    answer[i] = arr[i] * 2;
    }
    return answer;
    }
}


// #1 answer
import java.util.*;
public class Maps {
  public static int[] map(int[] arr) {
      return Arrays.stream(arr).map(x -> x*2).toArray();
  }
}

// similar to #1 
import java.util.Arrays;
public class Maps {
  public static int[] map(int[] arr) {
    return Arrays.stream(arr)
                .map(s -> s*2)
                .toArray();
  }
}