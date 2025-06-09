import java.util.Scanner;
class SentenceSplit {
    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);      
        System.out.println("Enter the sentence:");
       String sentence=in.nextLine();
       String[] words=sentence.split(" ");
       System.out.println("Words in the sentence:");
       for(String word : words)
       System.out.println(word);
    }
}
