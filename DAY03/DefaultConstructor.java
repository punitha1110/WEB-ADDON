// Online Java Compiler
// Use this editor to write, compile and run your Java code online
package prgm;
public class DefaultConstructor{
    String language;
    String name;
    int year;
    
    DefaultConstructor(String name, int year, String lang){
        this.name=name;
        this.year=year;
        this.language=language;
        System.out.println("userdefine Constructor: "+" " +name+" "+year);
    }
     DefaultConstructor(DefaultConstructor copy){
        this.name=copy.name;
        this.year=copy.year;
        this.language=copy.language;
     }
    public static void main(String[] args) {
        //create object
        System.out.println("original constructor");
        DefaultConstructor ref=new DefaultConstructor("Java",1995,"programming");
        System.out.println("copy constructor");
         DefaultConstructor ref2=new DefaultConstructor (ref);
    }
}