/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

/**
 *
 * @author Administrator
 */
import java.util.TimerTask;
import java.util.Date;
import java.text.SimpleDateFormat;

/**
 * This is a timertask because it extends the class java.util.TimerTask. This class
 * will be given to the timer (java.util.Timer) as the code to be executed.
 *
 * @see java.util.Timer
 * @see java.util.TimerTask
 * @author http://www.gammelsaeter.com/
 */
public class Task extends TimerTask {

    private String _objectName;                 // A string to output

    /**
     * Constructs the object, sets the string to be output in function run()
     * @param str
     */
    Task(String objectName) {
        this._objectName = objectName;
    }

    /**
     * When the timer executes, this code is run.
     */
    public void run() {
// Get current date/time and format it for output
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy hh:mm:ss");
        String current_time = format.format(date);

// Output to user the name of the objecet and the current time
        System.out.println(_objectName + " - Current time: " + current_time);
    }
}
