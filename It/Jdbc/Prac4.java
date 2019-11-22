import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

class Prac4
{
    public static void main(String args[])
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","root");
            CallableStatement cstmt= con.prepareCall("{CALL TotalCount(?)}");
            cstmt.registerOutParameter(1,java.sql.Types.INTEGER);
            cstmt.execute();
            int tot=cstmt.getInt(1);
            System.out.println("total number of students "+" "+tot);
        }
        catch(Exception e)
        {
            System.out.println(e);
        

        }
    }
}
