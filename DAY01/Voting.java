import java.util.*;
class Voting {
    public static void main(String[] args) {
        System.out.println("enter your age:");
        Scanner in=new Scanner(System.in);
        int age;
        age=in.nextInt();
        if(age>=18)
        System.out.println("you can vote");
        else
       System.out.println("you cannot vote"); 
    }
}