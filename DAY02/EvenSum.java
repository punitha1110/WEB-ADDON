import java.lang.*;
class EvenSum{
    public static void main(String[] args) {
        int[] number={1,2,3,4,5,6,7,8,9};
        int sum=0, count=0;
        System.out.println(number[2]); //index values
        System.out.println(number.length);//length of elements
        for(int i=0;i<number.length;i++){
            if(i%2==1) //even numbers
            {
            System.out.println(number[i]);
            sum=sum+number[i];
            count++; //increment of even numbers
        }
        }
        System.out.println("sum is:"+ sum);
    }
}