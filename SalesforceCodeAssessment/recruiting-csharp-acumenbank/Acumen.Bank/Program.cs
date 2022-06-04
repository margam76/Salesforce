using System;
using System.Threading;
using Acumen.Bank.Account;

namespace Acumen.Bank {
  class Program {
    static void Main(string[] args) {
      Console.WriteLine("Welcome to Acumen Bank!");
      Console.WriteLine();

      CheckingAccount astrosAccount = new CheckingAccount("Astro", 5000);
      CheckingAccount einsteinsAccount = new CheckingAccount("Einstein", 2000);

      Console.WriteLine("Open Accounts:");
      Console.WriteLine();
      PrintAccountDetails(astrosAccount);
      Console.WriteLine();
      PrintAccountDetails(einsteinsAccount);

      Console.WriteLine();
      Console.WriteLine("Making transfer of $1000.00...");
      try {
        Thread.Sleep(500);
      } catch (ThreadInterruptedException) {
        return;
      }

      astrosAccount.Transfer(einsteinsAccount, 1000);

      Console.WriteLine("Updated Account Details:");
      Console.WriteLine();
      PrintAccountDetails(astrosAccount);
      Console.WriteLine();
      PrintAccountDetails(einsteinsAccount);

      Console.ReadLine();

      /*
       * // Initialize new savings account with initial balance of $30,000 and 0.89% interest
       * SavingsAccount codeysSavingsAccount = new SavingsAccount("Codey", 30000, .0089);
       * 
       * SavingsAccount appysSavingsAccount = new SavingsAccount("Appy", 10000, .0056);
       * 
       * codeysSavingsAccount.Transfer(appysSavingsAccount, 5000);
       * 
       * // apply 2 years of interest to the savings accounts
       * codeysSavingsAccount.applyInterest(2);
       * appysSavingsAccount.applyInterest(2);
       */
    }

    private static void PrintAccountDetails(CheckingAccount account) {
      Console.WriteLine("Account for {0}:\r\n", account.OwnerName);
      Console.WriteLine("Balance: {0:C2}\r\n", account.Balance);
    }
  }
}