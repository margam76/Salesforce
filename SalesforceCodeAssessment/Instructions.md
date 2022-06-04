
# Acumen Bank

Acumen Bank is a simple program that creates two checking accounts and performs a fund transfer.

There are multiple issues that need to be resolved. Make any modifications you feel are necessary to resolve the open issues, and then send the updated source code to the Recruiting Coordinator. You may need to remove the generated output directories (bin folder with executables) in order to send the solution folder as an attachment. Included are two sets of source code (Java and C#); if you are comfortable with Salesforce Apex, you may alternatively convert either code base into Apex  and  implement your solution accordingly.

As you complete the assessment, do your best to follow best practices in order to maximize maintainability. Focus on making the application extensible without sacrificing simplicity.

## Build Instructions

**Java**

To build the Acumen Bank program, navigate to the root project directory (AcumenBank). Create a bin  directory:

```mkdir  bin```

Execute the following command to compile the source:

```javac  -d bin -cp  src/com.acumensolutions.bank/  src/com.acumensolutions.bank/AcumenBank.java```

Finally, run the compiled source:

```java  -cp  bin  com.acumensolutions.bank.AcumenBank```

You may also import this project into your preferred IDE.

**C#**

It's recommended you use Visual Studio or an IDE of your choice to build this solution.

## Issues to Resolve

### Bug: Checking account fund transfer only updates the destination account

The source account's balance is not updated following a transfer.

### Feature: Savings account

Implement a savings account (in addition to the existing checking account).

Savings accounts have the same features as checking accounts, and additionally provide a method to  [apply interest](http://en.wikipedia.org/wiki/Compound_interest#Compound_Interest)  over some number of years. Each savings account should allow for a unique interest rate, compounded once annually.

A formula for calculating annual compound interest is as follows:

![Compound Interest Formula](https://upload.wikimedia.org/math/b/9/d/b9d5f0ea3f288009def7e339cea3e5b3.png)

where

-   F = value after t periods
-   P = principal amount (initial investment)
-   i = annual nominal interest rate (not reflecting the compounding)
-   n = number of times the interest is compounded per year
-   t = number of years the money is borrowed for

As an example, suppose an amount of $1,500.00 is deposited in a bank paying an annual interest rate of 4.3%, compounded annually.

Then the balance after 6 years is found by using the formula above, with P = 1500, i = 0.043 (4.3%), n =  1,  and t = 6:

**F = 1500 (1 + (0.043 / 1))^(6x1) = 1931.07**

So, the balance after 6 years is approximately $1,931.07. The amount of interest received can be calculated by subtracting the principal from this amount.

**BONUS:** Savings accounts cannot be withdrawn from directly -- they should only support deposits and transfers.