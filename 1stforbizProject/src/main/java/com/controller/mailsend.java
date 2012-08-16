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
public class mailsend extends ActionSupport {
    
    private spDAO myDao;
    private Emailfunction sendMail;
    private String subject;
    private String content;
    private String mail="narendrabattula@gmail.com";
    
    
    
    @Override
    public String execute() throws Exception {
        try {
             //  String mail="narendrabattula@gmail.com";
            
            setContent("hai");
            setSubject("hai");
            
            getSendMail().test(mail, getSubject(), getContent());
            System.out.println("--------mail sended");

        
        } catch (Exception e) {
            e.printStackTrace();
            return "error";

        }
        return "success";

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
     * @return the mail
     */
    public String getMail() {
        return mail;
    }

    /**
     * @param mail the mail to set
     */
    public void setMail(String mail) {
        this.mail = mail;
    }

    

    

  
        }
