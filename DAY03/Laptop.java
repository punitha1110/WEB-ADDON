
package prgm;
public class Laptop{
    String brand;
     String model;
    int size;
    Laptop(String brand, String model,int size){
        this.brand=brand;
        this.size=size;
        this.model=model;
        System.out.println("Laptop brand: "+" " +brand+" "+model+" "+size);
    }
    public static void main(String[] args) {
        //create object
        System.out.println("original constructor");
        Laptop ref=new Laptop("Apple","12thGen",450);
    }
}