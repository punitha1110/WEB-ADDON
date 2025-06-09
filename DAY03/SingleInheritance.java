package prgm;
public class singlelevel {
    void Call(){
    System.out.println("call");
}
}
class subclass extends singlelevel{
    void Recieve(){
           System.out.println("recieved");
    }
}
class SingleInheritance{
public static void main(String[] args){
       subclass ref=new subclass();
       ref.Call();
       ref.Recieve();
    }
}