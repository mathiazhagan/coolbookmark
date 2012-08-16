/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author D.Mathiazhagan
 */
public class tofriend extends ActionSupport {

    private String f_name;
    private String y_email;
    private String f_email;
    private String referenceId;
    private Emailfunction sendMail;
    private String subject;
    private String content;
    private spDAO myDao;

    @Override
    public String execute() throws Exception {
        try {
            //sending mail to friend mail address(f_email)
            setSubject("Information from Your Friend " + f_name);
            //content="---------------hello";
            setContent("Your friend \t\t" + f_name + "\t\t,Email address \t\t"+y_email+" \t\trequested you to visit the following site and refer property with referenceId\t\t" + getReferenceId() + "\t\t\t www.1stforbiz.com");

            getSendMail().test(getF_email(), getSubject(), getContent());
            addActionMessage("Mail Send to your Friend Successfully..");

            return "success";

        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Server Error Please Try Again Later");
            return "error";

        }

    }

    @Override
    public void validate() {
        try {
            if (getF_name().isEmpty() && getY_email().isEmpty() && getF_email().isEmpty()) {
                addActionError("Please Recheck All the fields and submit again.....");
            }


        } catch (Exception e) {
            e.printStackTrace();


        }

    }

    /**
     * @return the f_name
     */
    public String getF_name() {
        return f_name;
    }

    /**
     * @param f_name the f_name to set
     */
    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    /**
     * @return the y_email
     */
    public String getY_email() {
        return y_email;
    }

    /**
     * @param y_email the y_email to set
     */
    public void setY_email(String y_email) {
        this.y_email = y_email;
    }

    /**
     * @return the f_email
     */
    public String getF_email() {
        return f_email;
    }

    /**
     * @param f_email the f_email to set
     */
    public void setF_email(String f_email) {
        this.f_email = f_email;
    }

    /**
     * @return the referenceId
     */
    public String getReferenceId() {
        return referenceId;
    }

    /**
     * @param referenceId the referenceId to set
     */
    public void setReferenceId(String referenceId) {
        this.referenceId = referenceId;
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
}
