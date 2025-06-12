public class MultiThread extends Thread {
    private String Name;
    MultiThread(String Name){
        this.Name=Name;
    }
    public void run(){
        for(int i=1;i<=5;i++){
            System.out.println(Name);
            try{
                Thread.sleep(500);
            }
            catch(InterruptedException e){
                e.printStackTrace();
            }
        }
    }
    class ThreadExecute{
    public static void main(String[] args) {
        MultiThread m1 = new MultiThread("thread 1");
        MultiThread m2 = new MultiThread("thread 2");
        m1.start();
        m2.start();
    }
}
}
