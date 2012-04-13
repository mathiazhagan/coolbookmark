/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;


import java.util.Calendar;
import java.util.Timer;

public class Initiater {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Timer clock = new Timer();
		for(int i=0;i<2;++i)
			clock.scheduleAtFixedRate(new MyTimerTask(clock,i),Calendar.getInstance().getTime(),500);
	}

}