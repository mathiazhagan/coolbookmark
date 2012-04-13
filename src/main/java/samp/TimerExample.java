/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

/**
 *
 * @author Administrator
 */
import java.util.Timer;

/**
 * An example on multiple timers.
 *
 * @author http://www.gammelsaeter.com/
 */
public class TimerExample {

    public static void main(String[] args) {
        Timer timer1 = new Timer();             // Get timer 1
        Timer timer2 = new Timer();             // get timer 2

        long delay1 = 500 * 1000;                   // 5 seconds delay
        long delay2 = 300 * 1000;                   // 3 seconds delay

// Schedule the two timers to run with different delays.
        timer1.schedule(new Task("object1"), 0, delay1);
        timer2.schedule(new Task("Object2"), 0, delay2);
    }
}
