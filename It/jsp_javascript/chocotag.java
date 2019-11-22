package P6;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class chocotag extends SimpleTagSupport {


	private String texture;
	chocobean chocoBean = new chocobean();

	public void setTexture(String texture){

		this.texture = texture;
		chocoBean.setTexture(texture);

	}  
	
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		out.print("Texture : " + texture);
		out.println("\tNames : " + chocoBean.getTexture());	
	}
 
}