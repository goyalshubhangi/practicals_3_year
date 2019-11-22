import java.util.ArrayList;
import java.util.Scanner;

abstract class stack
{
  abstract void push(int data);
  abstract int pop();
  abstract void display();
}

class staticStack extends stack
{
  int arr[];
  int size,top;
  staticStack(int s)
  {
    this.size=s;
    this.arr=new int[this.size];
  }
  void push(int data)
  {
    if(this.top==this.size-1)
    {
      System.out.println("overflow");
    }
    else
    {
      this.arr[(++this.top)]=data;
    }
  }
  int pop()
  {
    if(this.top==-1)
    {
      return -1;
    }
    return this.arr[(this.top--)];
  }
  void display()
	{
		System.out.print("The Stack is : ");
		for (int i = 1; i <= this.top; i++)
		{
			System.out.print(this.arr[i] + " ");
		}
		System.out.println();
	}
}
class dynamicStack extends stack
{
  int top;
  ArrayList<Integer> arr;
  dynamicStack()
  {
    (this.arr)=new ArrayList<Integer>();
  }
  void push(int data)
  {
    (this.arr).add(data);
  }
  int pop()
  {
    if(this.top==-1)
    {
      return -1;
    }
    return((Integer)this.arr.remove(this.top--)).intValue();
  }
  void display()
	{
		System.out.print("The Stack is : ");
		for (int i = 0; i <this.arr.size(); i++)
		{
			System.out.print(this.arr.get(i) + " ");
		}
		System.out.println();
	}
}

public class prac {
   public static void main(String[] args) {
    Scanner sc=new Scanner(System.in);
    System.out.println("Enter");
    System.out.println("1.static Stack");
    System.out.println("2.dynamic Stack");
    System.out.println("3.Exit");
    int ch=sc.nextInt();
    switch(ch)
    {
      case 1:
      System.out.println("Enter array size");
			int i = sc.nextInt();
			staticStack s = new staticStack(i);
			System.out.println("Enter");
			System.out.println("1.Push");
			System.out.println("2.Pop");
			System.out.println("3.Display");
			int j;
        do{
          System.out.println("Enter your choice");
          int ch1=sc.nextInt();
          switch(ch1)
          {
            case 1:
            System.out.println("Enter the number to be pushed in the stack");
            int n1 =sc.nextInt();
            s.push(n1);
            break;
            case 2:
            int p=s.pop();
            if(p==-1)
            {
              System.out.println("Underflow");
            }
            else
            {
              System.out.println("Number popped="+p);
            }
            break;
            case 3:
            s.display();
          }
        System.out.println("Enter 0 if you want to continue");
        j=sc.nextInt();
      }while(j==0);
      break;
      case 2:
      dynamicStack ds =new dynamicStack();
      System.out.println("Enter");
			System.out.println("1.Push");
			System.out.println("2.Pop");
			System.out.println("3.Display");
      for(;;)
      {
        System.out.println("Enter your choice");
        int n=sc.nextInt();
        switch(n)
        {
          case 1:
          System.out.println("Enter a number to be pushed into the stack");
          int t1=sc.nextInt();
          ds.push(t1);
          break;
          case 2:
          int t2=ds.pop();
          if(t2==-1)
          {
            System.out.println("underflow");
          }
          else
          {
            System.out.println("Number popped="+t2);
          }
          break;
          case 3:
          ds.display();
        }
        System.out.println("Enter 0 if you want to continue");
        int c1=sc.nextInt();
        if(c1!=0)
        break;
      }
    }
  }
}
