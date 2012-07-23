/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.ContactForSell;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.util.Date;

/**
 *
 * @author Naren
 */
public class contactforsell extends ActionSupport {
    
    private spDAO myDao;    
    private Long RId;
    private String RTitle;
    private String RFirstName;
    private String RSurname;
    private String RCompName;
    private String RCompNo;
    private String RRoad;
    private String RTown;
    private String RCountry;
    private Long RPostalCode;
    private Long RPhone;
    private Long RWorkPhone;
    private Long RMobile;
    private Long RFax;
    private String REmail;
    private String RContactOptions;
    private Emailfunction sendMail;
    private String subject;
    private String content;
    
    @Override
    public String execute() throws Exception {
        try {
            Date d = new Date();
            //inserting data into ContactForSell table
            ContactForSell cs = new ContactForSell(getRTitle(), getRFirstName(), getRSurname(), getRCompName(), getRCompNo(), getRRoad(), getRTown(), getRCountry(), getREmail(), getRContactOptions());            
            cs.setRMobile(RMobile);
            cs.setRFax(RFax);
            cs.setRWorkPhone(RWorkPhone);
            cs.setRPostTime(d);
            
            myDao.getDbsession().save(cs);
            
            System.out.println("-------------data saved-------");

            //sending response mail
            subject = "Responce for your request";
            content = "Thank you for your request.Our employee will contact you soon";
            
            sendMail.test(REmail, subject, content);
            
            System.out.println("---------mail sended");
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
            
        }
        addActionMessage("A mail sent to your friend");
        return "success";
        
    }
    
    @Override
    public void validate() {
        try {
            if (RFirstName.isEmpty() || RFirstName == null) {
                addActionMessage("your form submition failed check the fields and submit again.....");                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            
            
        }
        
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
     * @return the RId
     */
    public Long getRId() {
        return RId;
    }

    /**
     * @param RId the RId to set
     */
    public void setRId(Long RId) {
        this.RId = RId;
    }

    /**
     * @return the RTitle
     */
    public String getRTitle() {
        return RTitle;
    }

    /**
     * @param RTitle the RTitle to set
     */
    public void setRTitle(String RTitle) {
        this.RTitle = RTitle;
    }

    /**
     * @return the RFirstName
     */
    public String getRFirstName() {
        return RFirstName;
    }

    /**
     * @param RFirstName the RFirstName to set
     */
    @RequiredStringValidator(message = "First name is required")
    public void setRFirstName(String RFirstName) {
        this.RFirstName = RFirstName;
    }

    /**
     * @return the RSurname
     */
    public String getRSurname() {
        return RSurname;
    }

    /**
     * @param RSurname the RSurname to set
     */
    @RequiredStringValidator(message = "Sur name is required")
    public void setRSurname(String RSurname) {
        this.RSurname = RSurname;
    }

    /**
     * @return the RCompName
     */
    public String getRCompName() {
        return RCompName;
    }

    /**
     * @param RCompName the RCompName to set
     */
    @RequiredStringValidator(message = "Company name is required")
    public void setRCompName(String RCompName) {
        this.RCompName = RCompName;
    }

    /**
     * @return the RCompNo
     */
    public String getRCompNo() {
        return RCompNo;
    }

    /**
     * @param RCompNo the RCompNo to set
     */
    @RequiredStringValidator(message = "House no is required")
    public void setRCompNo(String RCompNo) {
        this.RCompNo = RCompNo;
    }

    /**
     * @return the RRoad
     */
    public String getRRoad() {
        return RRoad;
    }

    /**
     * @param RRoad the RRoad to set
     */
    @RequiredStringValidator(message = "Road name is required")
    public void setRRoad(String RRoad) {
        this.RRoad = RRoad;
    }

    /**
     * @return the RTown
     */
    public String getRTown() {
        return RTown;
    }

    /**
     * @param RTown the RTown to set
     */
    @RequiredStringValidator(message = "Town name is required")
    public void setRTown(String RTown) {
        this.RTown = RTown;
    }

    /**
     * @return the RCountry
     */
    public String getRCountry() {
        return RCountry;
    }

    /**
     * @param RCountry the RCountry to set
     */
    @RequiredStringValidator(message = "Country name is required")
    public void setRCountry(String RCountry) {
        this.RCountry = RCountry;
    }

    /**
     * @return the RWorkPhone
     */
    public Long getRWorkPhone() {
        return RWorkPhone;
    }

    /**
     * @param RWorkPhone the RWorkPhone to set
     */
    public void setRWorkPhone(Long RWorkPhone) {
        this.RWorkPhone = RWorkPhone;
    }

    /**
     * @return the RMobile
     */
    public Long getRMobile() {
        return RMobile;
    }

    /**
     * @param RMobile the RMobile to set
     */
    public void setRMobile(Long RMobile) {
        this.RMobile = RMobile;
    }

    /**
     * @return the RFax
     */
    public Long getRFax() {
        return RFax;
    }

    /**
     * @param RFax the RFax to set
     */
    public void setRFax(Long RFax) {
        this.RFax = RFax;
    }

    /**
     * @return the REmail
     */
    public String getREmail() {
        return REmail;
    }

    /**
     * @param REmail the REmail to set
     */
    @RequiredStringValidator(message = "Email address is required")
    public void setREmail(String REmail) {
        this.REmail = REmail;
    }

    /**
     * @return the RContactOptions
     */
    public String getRContactOptions() {
        return RContactOptions;
    }

    /**
     * @param RContactOptions the RContactOptions to set
     */
    @RequiredStringValidator(message = "Contact option is required")
    public void setRContactOptions(String RContactOptions) {
        this.RContactOptions = RContactOptions;
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
     * @return the RPostalCode
     */
    public Long getRPostalCode() {
        return RPostalCode;
    }

    /**
     * @param RPostalCode the RPostalCode to set
     */
    public void setRPostalCode(Long RPostalCode) {
        this.RPostalCode = RPostalCode;
    }

    /**
     * @return the RPhone
     */
    public Long getRPhone() {
        return RPhone;
    }

    /**
     * @param RPhone the RPhone to set
     */
    public void setRPhone(Long RPhone) {
        this.RPhone = RPhone;
    }
}
