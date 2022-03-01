package Coding_challanges;

public class RemoveRepetitions {
  public static String transform(String input) {
    char charArr[] = input.toCharArray();
    String shortenInput = "";
    for (int i = 0; i <= (charArr.length - 2); i++) {
      if (i == 0) {
        shortenInput += charArr[i];
      } else {
        if (charArr[i-1] == charArr[i]) {
          // nothing happens if chars are the same
        } else {
          shortenInput += charArr[i];
        }
      }
    }
    return shortenInput;
  }

  public static void main(String[] args) {
    System.out.println(RemoveRepetitions.transform("abbcbbb"));
  }
}
