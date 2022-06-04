@isTest
private class CheckingAccountTest {
    
   public static double saBalInitial=100000;
    public static double daBalInitial=200000;
    public static CheckingAccount sa,da;
    public static String saName='Bill';
    public static String daName='Gates';
    
     @isTest private static void ownerName(){
          sa = new CheckingAccount(saName,saBalInitial);
          Test.startTest();
         String saName = sa.getOwnerName();
         Test.stopTest();
         System.assertEquals('Bill',saName );
     }
     @isTest private static void balance(){
          sa = new CheckingAccount(saName,saBalInitial);
          Test.startTest();
         double bal = sa.getBalance();
         Test.stopTest();
         System.assertEquals(bal,100000);
         
     }
    
      @isTest private static void setBalanceMethod(){
          sa = new CheckingAccount(saName,saBalInitial);
          Test.startTest();
          sa.setBalance(saBalInitial);
         Test.stopTest();
           double bal= sa.getBalance();
         System.assertEquals(bal,100000);
         
     }
    
    @isTest private static void saDeposit(){

         sa = new CheckingAccount(saName,saBalInitial);
         double saBalance = sa.getBalance(); 
         Test.startTest();
         sa.deposit(10000);
         Test.stopTest();
        saBalance = sa.getBalance();
        System.assertequals(saBalance,110000);
    }
    
     @isTest private static void saWithdraw(){
        sa = new CheckingAccount(saName,saBalInitial);
         Test.startTest();
        sa.withdraw(5000);
         Test.stopTest();
        double sabalance = sa.getBalance();
       System.assertequals(sabalance,95000);
        
     }
    
    @isTest private static void negativeWithdraw(){
         sa = new CheckingAccount(saName,saBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.withdraw(-1000);
                }
        catch(exception e){
            errmessage = e.getMessage();
           system.debug(errmessage);
        }
         Test.stopTest();
         System.assertequals(errmessage,'Cannot withdraw a negative amount');
     }
    
     @isTest private static void negativeTransfer(){
         sa = new CheckingAccount(saName,saBalInitial);
         da = new CheckingAccount(daName,daBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.transfer(da,-1000);
                }
        catch(exception e){
            errmessage = e.getMessage();
           system.debug(errmessage);
        }
         Test.stopTest();
         System.assertequals(errmessage,'Cannot transfer a negative amount');
     }
    
     @isTest private static void lowBalance(){
         sa = new CheckingAccount(saName,saBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.withdraw(110000);
                }
        catch(exception e){
            errmessage = e.getMessage();
           system.debug(errmessage);
        }
         Test.stopTest();
         System.assertequals(errmessage,'Insufficient Funds');
     }
    
    // Insufficient Balance Transfer
     @isTest private static void lowBalanceTransfer(){
         sa = new CheckingAccount(saName,saBalInitial);
         da = new CheckingAccount(daName,daBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.transfer(da,110000);
                }
        catch(exception e){
            errmessage = e.getMessage();
           system.debug(errmessage);
        }
         Test.stopTest();
         System.assertequals(errmessage,'Insufficient Funds');
     }
    
     @isTest private static void negativeDeposit(){
         sa = new CheckingAccount(saName,saBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.deposit(-1000);
                }
        catch(exception e){
            errmessage = e.getMessage();
          //  system.debug(errmessage);
        }
         Test.stopTest();
         System.assertequals(errmessage,'Cannot deposit a negative amount');
     }
        
        //Transfer method
  @isTest private static void saTransfer(){
       
       sa = new CheckingAccount(saName,saBalInitial);
       da = new CheckingAccount(daName,daBalInitial);
      
        Test.startTest();
        sa.transfer(da, 20000);
        Test.stopTest();
       double sabalance = sa.getBalance();
       double dabalance = da.getBalance();  
        System.assertequals(sabalance,80000);
        System.assertequals(dabalance,220000);
    }
}