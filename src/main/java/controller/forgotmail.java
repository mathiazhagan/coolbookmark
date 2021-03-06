/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author radan
 */
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

public class forgotmail extends ActionSupport {

    private String forgetemail;
    private String password;
    private spDAO myDao;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public void validate() {


        if (forgetemail == null) {

            addActionError("Please Enter Email Address");
        }
        Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
        ucri.add(Restrictions.eq("emailId", forgetemail));
        ucri.setMaxResults(1);
        List available = ucri.list();

        if (available.isEmpty()) {
            addActionError("Email Address Not Recogised,Please Try again ");
        }
    }

    @Override
    public String execute() throws Exception {
        try {
            Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
            ucri.add(Restrictions.eq("emailId", forgetemail));
            ucri.setMaxResults(1);
            User user = (User) (ucri.list().get(0));
            //  if(forgetemail.equals(user.getEmailId()))
            //  {

            subject = "Your CoolBookMark Password";
            content = "Your Email Account is:  " + user.getEmailId() + "\nPassword is: " + user.getPassword() + "\nThanks & Regards\n"
                    + "CoolBookMark Team\n";

            getSendMail().test(forgetemail, getSubject(), getContent());
            addActionMessage("Your Password Successfully Sent to your Email Address");
            forgetemail = null;
            return "success";

        } //   else
        //    {
        catch (HibernateException e) {
            addActionError("Server  Error Please Recheck All Fields ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Recheck All Fields ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Recheck All Fields ");
            e.printStackTrace();
            return "error";
        }

    }

    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the myDao
     */
    public spDAO getMyDao() {
        return myDao;
    }

    /**
     * @param myDao the myDao to set
     */
    public void setMyDao(spDAO myDao) {
        this.myDao = myDao;
    }

    /**
     * @return the email
     */
    /**
     * @return the forgetemail
     */
    public String getForgetemail() {
        return forgetemail;
    }

    /**
     * @param forgetemail the forgetemail to set
     */
    public void setForgetemail(String forgetemail) {
        this.forgetemail = forgetemail;
    }

    /**
     * @return the sendMail
     */
    public Emailfunction getSendMail() {
        return sendMail;
    }

    /**
     * @param sendMail the sendMail to set
     */
    public void setSendMail(Emailfunction sendMail) {
        this.sendMail = sendMail;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }
}
