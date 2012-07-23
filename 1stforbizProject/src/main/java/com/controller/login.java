/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Adminlog;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Naren
 */
public class login extends ActionSupport implements SessionAware {

    private String username;
    private String password;
    private spDAO myDao;
    private Map session;

    @Override
    public String execute() throws Exception {
        try {

            Criteria crit = myDao.getDbsession().createCriteria(Adminlog.class);
            System.out.println("--------------" + crit.list().size());
            crit.add(Restrictions.eq("username", username));
            System.out.println("-----------" + crit.list().size());
            Adminlog user = (Adminlog) crit.list().get(0);
            if(user!=null){
            System.out.println("---------" + user);
            session.put("user", user);
            System.out.println("------" + user);
            }
            else{
            addActionError("Invalid User Name");
            }

        } catch (Exception e) {
            e.printStackTrace();

            return "error";

        }

        return "success";

    }

    @Override
    public void validate() {

        if (username.isEmpty()) {

            addActionError("Please Enter User Name");
        } 
     if (password.isEmpty()) {

            addActionError("Please Enter Password");
        } else {
            Criteria crit = getMyDao().getDbsession().createCriteria(Adminlog.class);
            crit.add(Restrictions.eq("username", getUsername()));
            Adminlog user = (Adminlog) crit.list().get(0);
            if (user != null) {

                if (user.getPassword().equals(password)) {
                } else {
                    // addFieldError("password", "Invalid password");
                    addActionError("Invalid password");
                }
            } else {
                //   addFieldError("username", "Invalid Email Address");
                addActionError("Invalid User Name");
            }
        }


    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    @RequiredStringValidator(message = "username required")
    public void setUsername(String username) {
        this.username = username;
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
    @RequiredStringValidator(message = "password required")
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
     * @return the session
     */
    public Map getSession() {
        return session;
    }

    /**
     * @param session the session to set
     */
    public void setSession(Map session) {
        this.session = session;
    }
}
