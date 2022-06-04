public class SavingsAccount extends CheckingAccount{
     
    public SavingsAccount(String ownerName,double balance)
    {
       super(ownerName,balance);
    }
   
    public double getCompoundInterest(double amt, double yearlyRate,integer n,integer tenure){
           
      return amt * (math.pow((1+yearlyRate/(n*100)),(n*tenure)));   
         
    }
    
    public override void withdraw(double amount) {
		
			throw new IllegalArgumentException('Cannot withdraw from the Savings Account');
		
	}
    public void transfer(SavingsAccount destinationAccount, double amount) {
		        if (amount < 0) {
				throw new IllegalArgumentException('Cannot tranfer a negative amount');
				} 
       			 else if(amount > this.getBalance()){
                      system.debug('Transfering in Class2');
                throw new IllegalArgumentException('Insufficient Funds');
            	}
        		else{
                destinationAccount.deposit(amount);
                this.setBalance(this.getBalance() - amount); 
				}
	}   
}