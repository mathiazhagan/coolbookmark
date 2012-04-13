/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package eg;

import java.util.Date;
import org.quartz.JobDetail;
import org.quartz.SchedulerFactory;
import org.quartz.impl.StdSchedulerFactory;
import org.quartz.*;

public class NewSchedule {

    public NewSchedule() throws Exception {
        SchedulerFactory sf = new StdSchedulerFactory();
        Scheduler sched = sf.getScheduler();
        JobDetail jd = new JobDetail("myjob", "group", NewJob.class);
        jd.getJobDataMap().put("name", "Rose India");
        jd.getJobDataMap().put("floatValue", 5.14f);
        SimpleTrigger simpleTrigger = new SimpleTrigger("mytrigger", Scheduler.DEFAULT_GROUP,
                new Date(), null, SimpleTrigger.REPEAT_INDEFINITELY, 30L * 1000L);
        sched.scheduleJob(jd, simpleTrigger);
        sched.start();
    }

    public static void main(String args[]) {
        try {
            new NewSchedule();
        } catch (Exception e) {
        }
    }
}