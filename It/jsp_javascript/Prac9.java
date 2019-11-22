/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P6;

import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.Calendar;

public class Prac9 extends SimpleTagSupport {
    public void doTag() throws JspException, IOException 
   {
       JspWriter out = getJspContext().getOut(); 
        out.print("<br>Today's Date: ");  
        out.print(Calendar.getInstance().getTime());
   }
    
}
