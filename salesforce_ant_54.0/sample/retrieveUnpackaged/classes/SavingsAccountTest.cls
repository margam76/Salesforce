@isTest
private class SavingsAccountTest {
    public static double saBalInitial=100000;
    public static double daBalInitial=200000;
    public static SavingsAccount sa,da;
    public static String saName='Bill';
    public static String daName='Gates';
    
     @isTest private static void ownerName(){
          sa = new SavingsAccount(saName,saBalInitial);
          Test.startTest();
         String saName = sa.getOwnerName();
         Test.stopTest();
         System.assertEquals('Bill',saName );
     }
    
    // GetBalance method
     @isTest private static void balance(){
          sa = new SavingsAccount(saName,saBalInitial);
          Test.startTest();
         double bal = sa.getBalance();
         Test.stopTest();
         System.assertEquals(bal,100000);
     }
    
    //Deposit
    @isTest private static void saDeposit(){

         sa = new SavingsAccount(saName,saBalInitial);
         double saBalance = sa.getBalance(); 
         Test.startTest();
         sa.deposit(10000);
         Test.stopTest();
        saBalance = sa.getBalance();
        System.assertequals(saBalance,110000);
    }
    
  // Negative Deposit
     @isTest private static void negativeDeposit(){
         sa = new SavingsAccount(saName,saBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.deposit(-1000);
                }
        catch(exception e){
            errmessage = e.getMessage();
        }
         Test.stopTest();
         System.assertequals(errmessage,'Cannot deposit a negative amount');
     }
    
     // CompoundInterest method
     @isTest private static void CompoundInt(){

         sa = new SavingsAccount(saName,saBalInitial);
          double rate = 4.3;
         Test.startTest();
         double finalamt=sa.getCompoundInterest(1500,rate ,1,6);
         Test.stopTest();
        
        System.assertequals( (Math.round(finalamt*100.0)/100.0),1931.07);

    }
        
        //Transfer method
  @isTest private static void saTransfer(){
       system.debug('In the Transfer block start');
       sa = new SavingsAccount(saName,saBalInitial);
       da = new SavingsAccount(daName,daBalInitial);
     
        Test.startTest();
        sa.transfer(da, 20000);
        Test.stopTest();
       double sabalance = sa.getBalance();
       double dabalance = da.getBalance();  
        System.assertequals(sabalance,80000);
        System.assertequals(dabalance,220000);
    }
    
   
    
    // Negative amount Transfer
     @isTest private static void negativeTransfer(){
         system.debug('In the negative Transfer block start');
         sa = new SavingsAccount(saName,saBalInitial);
         da = new SavingsAccount(daName,daBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.Transfer(da,-1000);
                }
        catch(exception e){
            errmessage = e.getMessage();
           system.debug(errmessage);
        }
         Test.stopTest();
         System.assertequals(errmessage,'Cannot tranfer a negative amount');
     }
    
     // Insufficient Balance Transfer
     @isTest private static void lowBalanceTransfer(){
         system.debug('In the insufficient Transfer block start');
         sa = new SavingsAccount(saName,saBalInitial);
         da = new SavingsAccount(daName,daBalInitial);
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
    
    //Withdraw
      @isTest private static void savingsWithdraw(){
         sa = new SavingsAccount(saName,saBalInitial);
         Test.startTest();
        String errmessage;
        try{
            sa.withdraw(1000);
                }
        catch(exception e){
            errmessage = e.getMessage();
        }
         Test.stopTest();
         System.assertequals(errmessage,'Cannot withdraw from the Savings Account');
          
     }

}