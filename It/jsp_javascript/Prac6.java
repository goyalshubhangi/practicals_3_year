package P6;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class Prac6 extends SimpleTagSupport
{
    String name;
    public void setName(String name)
    {
        this.name=name;
    }
   
  
    public void doTag() throws IOException
    {
        JspWriter out = getJspContext().getOut();
        out.println("Hello "+ name);
      
    }
}