import java.util.Scanner;
class VowelsCount {
    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        int vowels=0,consonants=0;
        char ch;
        System.out.println("Enter the string:");
        String str=in.nextLine();
        if(ch=='a'|| ch=='e'|| ch=='i'|| ch=='o'|| ch=='u')
        {
            vowels++;
        }
        else
        {
            consonants++;
        }
         System.out.println("No.of vowels:"+ vowels);
         System.out.println("No.of consonants:+ consonants");
    }
}