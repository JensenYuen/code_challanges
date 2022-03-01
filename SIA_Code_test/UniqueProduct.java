package Coding_challanges;

public class UniqueProduct {
  public static String firstUniqueProduct(String[] products) {
    String firstUniqueProduct = "";
    for (int i = 0; i < (products.length - 1); i++) {
      for (int j = (i + 1); j < products.length; j++) {
        if (!firstUniqueProduct.isEmpty()) {
          break;
        }
        if (products[i] == products[j]) {
          // runs though the list using the first product to compare
          // if true breaks out of current j loop and increament i
          // contiunes with next item
          break;
        }
        if (j == (products.length - 1 )) {
          firstUniqueProduct = products[i];
          break;
        }
      }
    }
    return firstUniqueProduct;
  }

  public static void main(String[] args) {
    System.out.println(firstUniqueProduct(new String[] { "Apple", "Computer", "Apple", "Bag" }));
  }
}
