import java.util.Random;
import java.util.Scanner;
class GenerateOTP{
        static int OTP(){
        Random ran=new Random();
            return 1000+ran.nextInt(5000);
        }
        public static void main(String[] args) {
            Scanner in=new Scanner(System.in);
            System.out.println("Enter the password:");
            long num=in.nextLong();
            long a=272773367;
            if(num==a)
            { int otp=OTP();
            System.out.println("one time password: "+ otp);
                System.out.println("valid number");
            }
                else
                {
                    System.out.println("Invalid number");
                }
    }
}