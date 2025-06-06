import java.util.Scanner;
class Atm{
    public static void main(String ags[]){
     Scanner in=new Scanner(System.in);
      System.out.println("Enter the pin:");
      int pin;
      pin=in.nextInt();
       System.out.println("Enter the amount:");
      int amount;
      amount=in.nextInt();
      if(pin==7228)
      {
          if(amount <= 1000)
          {
              System.out.println("withdrawn successfully"); 
          }
      else{
           System.out.println("Insufficient amount");
      }
      }
}
}