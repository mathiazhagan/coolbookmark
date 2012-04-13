/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;
import java.util.Random;
import model.*;

import model.User;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class signup extends ActionSupport {

    /**
     * @return the ut
     */
    public static userEnum getUt() {
        return ut;
    }

    /**
     * @param aUt the ut to set
     */
    public static void setUt(userEnum aUt) {
        ut = aUt;
    }
    private String uname;
    private String email;
    private String pwd;
    private String confirmpwd;
    private spDAO myDao;
    private long confcode;
    private static userEnum ut;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public void validate() {

        if (uname == null) {

            addActionError("Please Enter User Name");
        }

        if (pwd == null) {

            addActionError("Please Enter Password");
        }
        if (confirmpwd == null) {

            addActionError("Please Enter Confirm Password");
        }
        if (!confirmpwd.equals(pwd)) {

            addActionError("Confirm Password and Password Does Not Match Please Enter Again");
        }

        if (email == null) {

            addActionError("Please Enter Email Address");
        } else {
            Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
            ucri.add(Restrictions.eq("emailId", email));
            ucri.list();
            List available = ucri.list();

            if (!available.isEmpty()) {
                addActionError("Sorry Email id Already Taken");
            }
        }




    }

    @Override
    public String execute() throws Exception {

        try {
            Date date = new Date();
            Random rand = new Random();

            setConfcode(rand.nextLong());


            if (pwd.equals(getConfirmpwd())) {
                User tuser = new User(email, pwd, uname, date, userEnum.Not_Activated.getUserType(), getConfcode());
                myDao.getDbsession().save(tuser);
//            Map session =ActionContext.getContext().getSession();
//            session.put("User",email);
                subject = " Welcome to CoolBookMark";
                setContent("Hi\t" + uname + "\nWelcome to CoolBookMark :\n"
                        + "                                               "
                        + "Your Registered login  mail id is:" + email + "\n   "
                        + "Please click th following link to activate your account\n  "
                        + "http://localhost:8080/bookmark/activationAccount.action?email=" + email + "&confcode=" + getConfcode()
                        + "\n "
                        + "Thanks & Regards \n   "
                        + "CoolBookMark Team\n");
                if (email == null) {
                    addActionError("Please Enter Email Address");
                } else {

                    sendMail.test(email, subject, content);
                }
                addActionMessage("Hi thanks for registering with us . Please check your email for completing the activation process.");
                return "success";
            } else {
                addActionError("Confirm Password and Password Does Not Match Please Enter Again");
                return "error";
            }
        } catch (HibernateException e) {
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

    /**
     * @return the uname
     */
    public String getUname() {
        return uname;
    }

    /**
     * @param uname the uname to set
     */
    public void setUname(String uname) {
        this.uname = uname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
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
     * @return the confirmpwd
     */
    public String getConfirmpwd() {
        return confirmpwd;
    }

    /**
     * @param confirmpwd the confirmpwd to set
     */
    public void setConfirmpwd(String confirmpwd) {
        this.confirmpwd = confirmpwd;
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
     * @return the confcode
     */
    public long getConfcode() {
        return confcode;
    }

    /**
     * @param confcode the confcode to set
     */
    public void setConfcode(long confcode) {
        this.confcode = confcode;
    }
}
