class SbiAcc{
    private String Accholder;
    private int Balance;
    SbiAcc(String Accholder, int Balance){
        this.Accholder=Accholder;
        this.Balance=Balance;
    }
    public String getAccholder(){
        return Accholder;
    }
    public int getBalance(){
        return Balance;
    }
    public void Deposit(int dep){
        if(Balance>0){
            Balance += dep;
           System.out.println("Deposit Amount"+ dep);
           System.out.println("New Current Balance:"+ Balance);
        }
    }
        public void setAccholder(String Accholder){
            this.Accholder=Accholder;
        }
        public void setWithdraw(int Withdraw){
        Balance -= Withdraw;
    }
    }
public class BankDetails{
    public static void main(String[] args) {
        SbiAcc ac=new SbiAcc("punitha",40000);
        System.out.println("Account holder name:"+ ac.getAccholder());
        ac.setAccholder("Punitha");
         System.out.println("update account holder:"+ ac.getAccholder());
         System.out.println("Balance:"+ ac.getBalance());
         ac.Deposit(4000);
         ac.setWithdraw(20000);
          System.out.println();
           System.out.println("Available Balance:"+ ac.getBalance());
    }   
    }