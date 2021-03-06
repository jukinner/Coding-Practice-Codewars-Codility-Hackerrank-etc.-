// You are given a string of n lines, each substring being n characters long. For example:

// s = "abcd\nefgh\nijkl\nmnop"

// We will study the "horizontal" and the "vertical" scaling of this square of strings.

// A k-horizontal scaling of a string consists of replicating k times each character of the string (except '\n').

// Example: 2-horizontal scaling of s: => "aabbccdd\neeffgghh\niijjkkll\nmmnnoopp"
// A v-vertical scaling of a string consists of replicating v times each part of the squared string.

// Example: 2-vertical scaling of s: => "abcd\nabcd\nefgh\nefgh\nijkl\nijkl\nmnop\nmnop"
// Function scale(strng, k, v) will perform a k-horizontal scaling and a v-vertical scaling.

// Example: a = "abcd\nefgh\nijkl\nmnop"
// scale(a, 2, 3) --> "aabbccdd\naabbccdd\naabbccdd\neeffgghh\neeffgghh\neeffgghh\niijjkkll\niijjkkll\niijjkkll\nmmnnoopp\nmmnnoopp\nmmnnoopp"
// Printed:

// abcd   ----->   aabbccdd
// efgh            aabbccdd
// ijkl            aabbccdd
// mnop            eeffgghh
//                 eeffgghh
//                 eeffgghh
//                 iijjkkll
//                 iijjkkll
//                 iijjkkll
//                 mmnnoopp
//                 mmnnoopp
//                 mmnnoopp

public class Scale {
    
    public static String scale(String strng, int k, int v) {
      if(strng.equals("")) return "";
      StringBuilder finalAnswer = new StringBuilder();
      String[] splitStr = strng.split("\n");
      if(k > 0) {
        for(String letters:splitStr) {
          StringBuilder horizAnswer = new StringBuilder();
          String[] subStr = letters.split("");
          for( String letter:subStr) {
            for (int i = 0; i < k; i++) {
              horizAnswer.append(letter);
            }
          }
          for (int z = 0; z < v; z++) {
            finalAnswer.append(horizAnswer);
            finalAnswer.append("\n");
          }
        }
      }
      return finalAnswer.toString().trim();
    }
}

//1 of the top answers
public class Scale {
        
        public static String scale(String strng, int k, int v) {
        int scale = k, rpt = v;
        String s = strng, ss = "";
        for (String t : s.split("\n")) { //Word loop
            for (int j = 0; j < rpt; j++) { //Repeat loop
                for (char c : t.toCharArray()) { //Char loop
                    for (int i = 0; i < scale; i++) { //Scale loop
                        ss += c;
                    }
                }
                ss += "\n";
            }
        }
        ss = ss.substring(0, ss.length()-1);
        ss = ss.trim();
        return ss; 
        }
    }