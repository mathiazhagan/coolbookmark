/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;



import java.util.Timer;
import java.util.TimerTask;

public class MyTimerTask extends TimerTask {
	
	private int counter = 0;
	private Timer timer = null;
	
	public MyTimerTask(Timer timer,int counter) {
		this.timer = timer;
		this.counter = counter;
	}

	@Override
	public void run() {
		switch(counter) {
		case 0:
			System.out.println("Hello");
			break;
		case 1:
			System.out.println("Hellow");
			this.timer.cancel();
		}
	}
}
