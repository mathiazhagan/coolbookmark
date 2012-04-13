/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Administrator
 */
public class AutoCompleterAction extends ActionSupport{
 
	private String yourDatabase;
 
	public String display() {
		return NONE;
	}
 
	public String getYourDatabase() {
		return yourDatabase;
	}
 
	public void setYourDatabase(String yourDatabase) {
		this.yourDatabase = yourDatabase;
	}
 
}