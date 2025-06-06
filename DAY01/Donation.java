import java.util.Scanner;

public class Donation {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your age: ");
        int age = scanner.nextInt();
        System.out.print("Enter your weight: ");
        double weight = scanner.nextDouble();
         if (age >= 18 && weight >= 50) {
            System.out.println("You are eligible.");
        } else {
            System.out.println("You are not eligible.");
        }

        scanner.close();
    }
}