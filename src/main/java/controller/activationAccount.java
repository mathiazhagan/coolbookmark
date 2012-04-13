/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class activationAccount extends ActionSupport {

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
    private spDAO myDao;
    private long confcode;
    private static userEnum ut;
    private User user;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public String execute() throws Exception {
        try {

            Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
            ucri.add(Restrictions.and(Restrictions.eq("emailId", email), Restrictions.eq("confirmCode", getConfcode())));
            ucri.setMaxResults(1);
            user = (User) (ucri.list().get(0));
            if(user.getUserStatus().equals(userEnum.Not_Activated.getUserType())){
            user.setUserStatus(userEnum.Active.getUserType());
            myDao.getDbsession().update(user);
            Map session = ActionContext.getContext().getSession();
            session.put("User", getUser());

            subject = "Activation Success";
            content = "Hi " + "\t\t" + user.getUserName() + "\n" + "... Welcome to CoolBookMark :\n" + " \nNow Your CoolBookMark Account is Activated   & Verified \n" + " Thanks & Regards\n" + " CoolBookMark Team\n";
            sendMail.test(email, subject, content);

            addActionMessage("Now your CoolBookMark account Successfully Activated Please Login to Continue");
            return "success";
            }
            else
            {
            addActionError("Hi Your Account Already Verified Please Login toAccess Your Account");
            return "error";
            }
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Server Error  Please Try Again Later ");
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

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }
}
