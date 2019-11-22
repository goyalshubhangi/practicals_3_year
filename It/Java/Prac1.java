import java.util.ArrayList;

class BankAccount
{
  private int accountNo;
  private double balance;

  public BankAccount()
  {
  }

  public BankAccount(int x)
  {
    accountNo = x;
    balance = 0;
    System.out.println("New account created\n\tAccount No.: "+x);
  }

  public BankAccount(int x, double y)
  {
    accountNo = x;
    balance = y;
    System.out.println("New account created\n\tAccount No\t:\t"+x+"\n\tBalance\t\t:\t"+y);
  }

  int getAccountNo()
  {
    return accountNo;
  }

  double deposit(double x)
  {
    balance+=x;
    return balance;
  }

  double withdraw(double x)
  {
    balance-=x;
    return balance;
  }

  double getBalance()
  {
    return balance;
  }
}

class Bank
{
  private ArrayList<BankAccount> bank;
  int noOfAccounts = 0;

  public Bank()
  {
     bank = new ArrayList<BankAccount>();
  }

  void addAccount(BankAccount e)
  {
    bank.add(e);
    noOfAccounts++;
  }

  double getTotalBalance()
  {
    int i = noOfAccounts;
    BankAccount temp;
    double totalBalance=0;
    while(i>0)
    {
      temp=bank.get(--i);
      totalBalance+=temp.getBalance();
    }
    return totalBalance;
  }

  BankAccount hasMaxBalance()
  {
    int i = noOfAccounts;
    BankAccount temp, temp2;
    temp = bank.get(--i);
    while(i>0)
    {
      temp2=bank.get(--i);
      temp=(temp2.getBalance()>temp.getBalance())?temp2:temp;
    }
    return temp;
  }

  BankAccount hasMinBalance()
  {
    int i = noOfAccounts;
    BankAccount temp, temp2;
    temp = bank.get(--i);
    while(i>0)
    {
      temp2=bank.get(--i);
      temp=(temp2.getBalance()<temp.getBalance())?temp2:temp;
    }
    return temp;
  }

  BankAccount findAccount(int accountNo)
  {
    int i = noOfAccounts;
    BankAccount temp;
    while(i>0)
    {
      temp=bank.get(--i);
      if(temp.getAccountNo()==accountNo)
        return temp;
    }
    return null;
  }

  int havingAtleatSpecificBalance(double specificBalance)
  {
    int i = noOfAccounts, count=0;
    while(i>0)
    {
      if(bank.get(--i).getBalance()>=specificBalance)
        count++;
    }
    return count;
  }
}

public class Prac1
{
    public static void main(String[] args)
     {
       Bank SBI = new Bank();
       SBI.addAccount(new BankAccount(123456,87000));
       SBI.addAccount(new BankAccount(654132,25000));
       SBI.addAccount(new BankAccount(897645,50000));
       SBI.addAccount(new BankAccount(235689,65000));

       System.out.println("\nTotal balance in bank\t\t=\t"+SBI.getTotalBalance());

       System.out.println("Maximum balance in bank\t\t=\t"+SBI.hasMaxBalance().getBalance());

       System.out.println("Maximum balance in bank\t\t=\t"+SBI.hasMinBalance().getBalance());

       int x=654321;
       if(SBI.findAccount(x)!=null)
       System.out.println("Account("+x+") search\t\t=\t"+SBI.findAccount(x).getBalance());

       else
       System.out.println("Account("+x+") search\t\t=\t(Not found)");
       x=123456;
       if(SBI.findAccount(x)!=null)
       System.out.println("Account("+x+") search\t\t=\t"+SBI.findAccount(x).getBalance());
       else
       System.out.println("Account("+x+") search\t\t=\t(Not found)");

       double y=50000;
       System.out.println("Accounts with bal>"+y+"\t=\t"+SBI.havingAtleatSpecificBalance(y));
     }
}
