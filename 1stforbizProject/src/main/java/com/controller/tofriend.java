/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

/**
 *
 * @author Naren
 */
public class tofriend extends ActionSupport {

    private String f_name;
    private String y_email;
    private String f_email;
    private String referenceId;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public String execute() throws Exception {
        try {
             System.out.println("------------you are in tell to friend form----");
             System.out.println("----------your name"+f_name);
             System.out.println("----------your mail"+y_email);
             System.out.println("----------friend mail"+f_email);
             //sending mail to friend mail address(f_email)
            subject = "Information from Your Friend";
            //content="---------------hello";
            content = ("<html><body><table size=fixed border=10><th><div id=header style=background-color:lightblue;>Information from your Friend ...</div></th>"
                    + "<tr><td align=middle>Your friend requested you to visit the following site and refere property with referenceId= <br><br><br>" + referenceId + " <br> link is"
                    + "<td><a STYLE=text-decoration:none href=www.1stforbiz.com>www.1stforbiz.com</a></td> ");

            System.out.println("---------------email=="+getF_email());
            System.out.println("----------------"+getSubject());
            System.out.println("----------------"+getContent());
            
           
             sendMail.test(f_email, getSubject(), getContent());
            System.out.println("----------------mail sended to your friend successfully");






        } catch (Exception e) {
            e.printStackTrace();
            return "error";

        }
        addActionMessage("A mail sent to your friend" );
        return "success";

    }
    
    
     @Override
    public void validate() {
        try {
             if(f_name.isEmpty() || f_name==null){
             addActionMessage("your form submition failed check the fields and submit again.....");            
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
   @RequiredStringValidator(message="first name required")
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
   @RequiredStringValidator(message="email address required")
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
  @RequiredStringValidator(message="email address required")
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
}
