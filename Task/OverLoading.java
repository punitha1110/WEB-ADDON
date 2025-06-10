class OverLoading{
    public void sum(int a,int b){
	 System.out.println("Integer of a and b");
        System.out.println("sum((a+b)):"+(a+b));
    }
    public void sum(double a,double b){
        System.out.println("Double of a and b");
        System.out.println("sum((a+b)):"+(a+b));
    }
    public static void main(String[] args){
        OverLoading ref=new OverLoading();
        ref.sum(2,3);
        ref.sum(10000,20000);
    }
}
