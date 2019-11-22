import java.util.*;
import java.sql.*;
class Prac3
{
	public static void main(String args[])
	{
	Connection cn1;
	Statement st1;
	ResultSet rs;
	int ch;
	String c;
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase" ,"root","root");
		st1=cn1.createStatement();
		do{
            System.out.println("MENU");
            System.out.println("1.FIND TOTAL STUDENTS");
            System.out.println("2.Each subject avergae marks");
            System.out.println("3.STUDENT NAME WITH HIGHEST MARKS");
            System.out.println("4.NO OF STUDENTS GETTING FIRST SECOND AND THIRD DIVISION");
            System.out.println("5.SUBJECT WISE TOPEERS");
            System.out.println("6.AVERGAE MARKS");
            System.out.println("7.STUDENT GETTING SECOND HIGHEST MARKS");
         	System.out.println("Enter your Choice!!!");
            Scanner sc=new Scanner(System.in);
            ch=sc.nextInt();
            switch(ch)
            {
            	case 1:
            	rs= st1.executeQuery("select count(*) total from student");
            	rs.next();
            	int tot=rs.getInt("total");
            	System.out.println("Total number of Students are: "+tot);
            	break;
            	case 2:
            	System.out.println("Enter the subject you want to calculate average of: ");
            	String sub=sc.next();
            	rs=st1.executeQuery("select AVG(ALL "+sub+" ) as Average_Marks from result");
            	rs.next();
            	int s=rs.getInt("Average_Marks");
            	System.out.println("Average Marks Obtained in "+sub+ " are:"+s);
            	break;
            	case 3:
            	rs= st1.executeQuery("select Max(Total),Fname as name from Student");
            	rs.next();
            	String nam=rs.getString("name");
            	System.out.println("Name of Student who scored highest marks is: "+nam);
            	break;
            	case 4:
            	rs=st1.executeQuery("Select Division,count(fname)as total_Number from Student group by Division");
 				ResultSetMetaData rsmd = rs.getMetaData();
				int columnsNumber = rsmd.getColumnCount();                     
				System.out.println("\n\n\tNumber of Students scoring First and Second divion Respectively are: ");
            	while(rs.next())
            	{
            		for (int i=2;i<=columnsNumber ;i++ ) {
            			
            			System.out.println(rs.getInt(i));
            		}
            	}
            	break;
            	case 5:
            	rs=st1.executeQuery("select s.Fname as 'Name',max(r.Hindi),max(r.Maths) from Student s,Result r where r.Sid=s.Sid" );
            	while(rs.next())
            	{
            		System.out.println("Max MArks in Hindi is of "+rs.getString("Name"));
            		System.out.println("Max MArks in Maths is of "+rs.getString("Name"));
            	}
            	break;
            	case 6:
            	rs=st1.executeQuery("select s.Fname as 'Name',(avg(r.Hindi)+avg(r.Maths))/2 as avg from Student s,Result r where r.Sid=s.Sid" );
            	while(rs.next())
            	{
            		System.out.println("Average marks of "+rs.getString("Name")+" are "+rs.getInt("avg"));
            	}
            	break;
            	case 7:
            	rs=st1.executeQuery("Select Fname as Name from Student Order By Total Limit 2,1 ");
            	rs.next();
            	System.out.println("Second Topper"+rs.getString("Name"));
            	break;

            }
            System.out.println("Do u want to continue y/n");
           	c=sc.next();	

        }while(c=="n"||c=="N");
	}
	catch(Exception e)
    {
        System.out.println(e);
        // TODO code application logic here
    }

}
}