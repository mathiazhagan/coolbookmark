/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

/**
 *
 * @author mathi
 */
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
 
public class App 
{
    public static void main( String[] args )
    {
    	Properties prop = new Properties();
 
    	try {
               //load a properties file
    		prop.load(new FileInputStream("config.properties"));
 
               //get the property value and print it out
                System.out.println(prop.getProperty("database"));
    		System.out.println(prop.getProperty("dbuser"));
    		System.out.println(prop.getProperty("dbpassword"));
 
    	} catch (IOException ex) {
    		ex.printStackTrace();
        }
 
    }
}