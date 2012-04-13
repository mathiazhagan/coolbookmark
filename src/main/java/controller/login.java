/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class login extends ActionSupport {

    private String email;
    private String password;
    private long userid;
    private spDAO myDao;
    private List<Scribbles> feedlist;

    @Override
    public void validate() {


        if (getEmail().isEmpty()) {

            addActionError("Please Enter Email Address");
        } else if (getPassword().isEmpty()) {

            addActionError("Please Enter Password");
        } else {
            Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
            ucri.add(Restrictions.eq("emailId", email));
            ucri.setMaxResults(1);
            User user = (User) (ucri.list().get(0));
            if (user != null) {

                if (user.getPassword().equals(getPassword())) {
                    if (user.getUserStatus().equals(userEnum.Suspend.getUserType())) {
                        addActionError("Your Account Has Been Suspended Temporarily Please Contact Our Customer Services for More Details");
                    }
                    if (user.getUserStatus().equals(userEnum.Not_Activated.getUserType())) {
                        addActionError("Your Account Not Yet Activated Please Activate your account by clicking activation link that already sent to your email ");
                    }
                } else {
                    addActionError("Invalid Password Please Try Again");
                }
            } else {
                addActionError("Invalid Email Address Please Try Again");
            }
        }
    }

    @Override
    public String execute() throws Exception {
        try {
            Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
            ucri.add(Restrictions.eq("emailId", email));
            ucri.setMaxResults(1);
            User user = (User) (ucri.list().get(0));

            if (user.getPassword().equals(getPassword())) {

                Map session = ActionContext.getContext().getSession();
                session.put("User", user);
                Criteria feedcri = getMyDao().getDbsession().createCriteria(Scribbles.class);
                feedcri.add(Restrictions.eq("user", user));
                feedcri.setMaxResults(50);
                feedlist = feedcri.list();


            }
            addActionMessage("Hi " + user.getEmailId() + " Welcome to Your Dashboard");
            return "success";

        } catch (HibernateException he) {
            he.printStackTrace();
            addActionError("Unable to Logining you...  Error occurs  ..Try After Some times");
            return "error";
        } catch (Exception se) {

            se.getMessage();
            addActionError("Unable to Logining you...  Error occurs ..Try After Some times");
            return "error";
        }


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
     * @return the password
     */
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
     * @return the userid
     */
    public long getUserid() {
        return userid;
    }

    /**
     * @param userid the userid to set
     */
    public void setUserid(long userid) {
        this.userid = userid;
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
     * @return the feedlist
     */
    public List<Scribbles> getFeedlist() {
        return feedlist;
    }

    /**
     * @param feedlist the feedlist to set
     */
    public void setFeedlist(List<Scribbles> feedlist) {
        this.feedlist = feedlist;
    }
}
