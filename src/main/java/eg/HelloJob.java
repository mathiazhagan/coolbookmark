/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package eg;

/**
 *
 * @author Administrator
 */
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import java.util.Date;

public class HelloJob implements Job {

    public void execute(JobExecutionContext arg0) throws JobExecutionException {
        System.out.println("Hello World Quartz Scheduler: " + new Date());
    }
}
