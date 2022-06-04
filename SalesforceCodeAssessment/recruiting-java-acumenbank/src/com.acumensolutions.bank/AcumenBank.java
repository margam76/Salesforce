package com.acumensolutions.bank;

import account.CheckingAccount;

public class AcumenBank {

  public static void main(String[] args) {
    System.out.println("Welcome to Acumen Bank!");
    System.out.println();

    CheckingAccount astrosAccount = new CheckingAccount("Astro", 5000);
    CheckingAccount einsteinsAccount = new CheckingAccount("Einstein", 2000);

    System.out.println("Open Accounts:");
    System.out.println();
    printAccountDetails(astrosAccount);
    System.out.println();
    printAccountDetails(einsteinsAccount);

    System.out.println();
    System.out.println("Making transfer of $1000...");
    try {
      Thread.sleep(500);
    } catch (InterruptedException e) {
      return;
    }

    astrosAccount.transfer(einsteinsAccount, 1000);

    System.out.println("Updated Account Details:");
    System.out.println();
    printAccountDetails(astrosAccount);
    System.out.println();
    printAccountDetails(einsteinsAccount);
    /*
		// Initialize new savings account with initial balance of $30,000 and 0.89% interest
		SavingsAccount codeysSavingsAccount = new SavingsAccount("Codey", 30000, .0089);
		
		SavingsAccount appysSavingsAccount = new SavingsAccount("Appy", 10000, .0056);
		
		codeysSavingsAccount.transfer(appysSavingsAccount, 5000);
		// apply 2 years of interest to the savings accounts
		codeysSavingsAccount.applyInterest(2);
		appysSavingsAccount.applyInterest(2);
		*/
  }

  private static void printAccountDetails(CheckingAccount account) {
    System.out.format("Account for %s:\r\n", account.getOwnerName());
    System.out.format("Balance: $%.2f\r\n", account.getBalance());
  }
}
