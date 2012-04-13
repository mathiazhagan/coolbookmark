/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package eg;

/**
 *
 * @author Administrator
 */
import java.util.Date;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.SimpleTrigger;
import org.quartz.impl.StdSchedulerFactory;

public class HelloSchedule {

    public HelloSchedule() throws Exception {
        SchedulerFactory sf = new StdSchedulerFactory();
        Scheduler sched = sf.getScheduler();
        sched.start();
        JobDetail jd = new JobDetail("myjob", Scheduler.DEFAULT_GROUP, HelloJob.class);
        SimpleTrigger st = new SimpleTrigger("mytrigger", Scheduler.DEFAULT_GROUP, new Date(),
                null, SimpleTrigger.REPEAT_INDEFINITELY, 60L * 1000L);
        sched.scheduleJob(jd, st);
    }

    public static void main(String args[]) {
        try {
            new HelloSchedule();
        } catch (Exception e) {
        }
    }
}
