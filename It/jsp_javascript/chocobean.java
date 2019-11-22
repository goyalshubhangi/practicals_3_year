package P6;

import java.io.*;

public class chocobean implements Serializable{


	private String texture;
	
	public chocobean(){

		this.texture = null;

	}

	public void setTexture(String texture){

		this.texture = texture;

	}

	public String getTexture(){

		if(this.texture.equals("Chewy")){
			return "FiveStar, BarOne";
		}else{
			return "Munch, Kitkat";
		}

	}
 
}