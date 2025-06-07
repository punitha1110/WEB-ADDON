import java.util.Scanner;
class SimpleInterest {
    public static void main(String[] args) {
         Scanner in=new Scanner(System.in);
       int p=1000,r=5,t=2;
       int si=p*r*t/100;
        System.out.println("The simple interest is: "+ si);
    }
}