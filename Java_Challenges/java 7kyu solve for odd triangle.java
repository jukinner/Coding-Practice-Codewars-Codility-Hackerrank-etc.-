// Given the triangle of consecutive odd numbers:
//               1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

// rowSumOddNumbers(1); // 1
// rowSumOddNumbers(2); // 3 + 5 = 8

class RowSumOddNumbers {
    public static int rowSumOddNumbers(int n) {
      if (n == 1) return n;
      Integer sumOfOdds = 0;
      Integer row = 1;
      Integer numOfOddsBelow = 0;
      while (row < n) {
        numOfOddsBelow += row;
        row++;
      }
      Integer firstOdd = numOfOddsBelow * 2 + 1;
      Integer finalCount = 1;
      while (finalCount <= n) {
        sumOfOdds += firstOdd;
        firstOdd += 2;
        finalCount++;
      }
      return sumOfOdds;
    }
}

//best solution
class RowSumOddNumbers {
    public static int rowSumOddNumbers(int n) {
        return n * n * n;
    }
}