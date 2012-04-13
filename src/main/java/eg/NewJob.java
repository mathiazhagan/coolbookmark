/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package eg;

import java.util.Date;
import org.quartz.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class NewJob implements Job {

    public void execute(JobExecutionContext jcontext) throws JobExecutionException {
        System.out.println("Welcome to RoseIndia.Net  :" + new Date());
        String jname = jcontext.getJobDetail().getName();
        String jgroup = jcontext.getJobDetail().getGroup();
        System.out.println("job Name :" + jname + " Job Group Name :" + jgroup);
        JobDataMap jdMap = jcontext.getJobDetail().getJobDataMap();
        String name = jdMap.getString("name");
        float fval = jdMap.getFloat("floatValue");
        System.out.println("Name  :" + name + "  Float value is :" + fval);
    }
}
