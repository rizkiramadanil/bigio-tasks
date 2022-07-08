import java.util.Scanner;

public class Main {
    String word = "", palindrome = "", s = "";
    int len = 0;

    void readWord() {
        System.out.print("Enter number of letters : ");
        Scanner sc1 = new Scanner(System.in);

        if (sc1.hasNextInt()) {
            int n = sc1.nextInt();

            System.out.println("Enter letters : ");
            for (int i = 1; i <= n; i++) {
                Scanner sc2 = new Scanner(System.in);
                char letter = sc2.next().charAt(0);

                String str = String.valueOf(letter);

                word += str;
            }
            System.out.println("Word : " + word);
        } else {
            System.out.println("Input must be a number. Try again.");
        }
        len = word.length();
    }

    void displayPalindrome() {
        for (int i = len - 1; i >= 0; i--) {
            char ch = word.charAt(i);
            this.s = this.s + ch;
        }
        palindrome = word + s.substring(1, len);
        System.out.println("Palindrome : " + palindrome);
    }

    public static void main(String[] args) {
        Main obj = new Main();
        obj.readWord();
        obj.displayPalindrome();
    }
}
