class Main extends Thread{
    public void run(){
        for(int i=1;i<=10;i++){
            System.out.println("Hii thread"+" "+i);
        }
    }
}
class ThreadExecute{
    public static void main(String args[]){
        Main m=new  Main();
        m.start();
    }
}
