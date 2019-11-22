/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Jhanjhi
 */
package Java_Beans;
public class Call_student { 
public static void main(String args[]) 
    { 
       StudentBean s = new StudentBean(); // object is created 
        s.setfirstName("Shubhangi"); // setting value to the object 
        System.out.println(s.getfirstName()); 
        s.setlastName("Goyal");
        System.out.println(s.getlastName());
    } 
}
