/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.ContactForSell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;

/**
 *
 * @author D.Mathiazhagan
 */
public class contactforsell extends ActionSupport {

    private spDAO myDao;
    private String RTitle;
    private String RFirstName;
    private String RSurname;
    private String RCompName;
    private String RCompNo;
    private String RRoad;
    private String RTown;
    private String RCountry;
    private String RPostalCode;
    private Long RPhone;
    private Long RWorkPhone;
    private Long RMobile;
    private Long RFax;
    private String REmail;
    private String RContact;
    private Emailfunction sendMail;
    private String subject;
    private String content;
  @Override
    public void validate() {

        if (getRFirstName().isEmpty() && getRSurname().isEmpty() && getREmail().isEmpty()) {
            addActionError("Please Recheck All the fields and submit again.....");

        }

    }
    @Override
    public String execute() throws Exception {
        try {
            Date d = new Date();
            //inserting data into ContactForSell table
            ContactForSell cs = new ContactForSell(getRTitle(), getRFirstName(), getRSurname(), getREmail());
            cs.setRCompName(getRCompName());
            cs.setRCompNo(getRCompNo());
            cs.setRCountry(getRCountry());
            cs.setRMobile(getRMobile());
            cs.setRFax(getRFax());
            cs.setRWorkPhone(getRWorkPhone());
            cs.setRPhone(getRPhone());
            cs.setRRoad(getRRoad());
            cs.setRTown(getRTown());
            cs.setRPostTime(d);
            cs.setRContactOptions(getRContact());
            cs.setRPostalCode(getRPostalCode());
            getMyDao().getDbsession().save(cs);
            System.out.println("-------------data saved-------");

            //sending response mail
            setSubject("Response From 1stforbiz.com");
            setContent("Thank you for your request<br/>.Our employee will contact you soon<br/>"
                    + "Thanks and Regards<br/>"
                    + "1stforbiz.com");

            getSendMail().test(getREmail(), getSubject(), getContent());

            System.out.println("---------mail sended");

            addActionMessage("Your Request Received.We will respond to you soon");
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Server Error Please Try Again Later");
            return "error";

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
    public void setRCountry(String RCountry) {
        this.RCountry = RCountry;
    }

    /**
     * @return the RPostalCode
     */
    public String getRPostalCode() {
        return RPostalCode;
    }

    /**
     * @param RPostalCode the RPostalCode to set
     */
    public void setRPostalCode(String RPostalCode) {
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
    public void setREmail(String REmail) {
        this.REmail = REmail;
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
     * @return the RContact
     */
    public String getRContact() {
        return RContact;
    }

    /**
     * @param RContact the RContact to set
     */
    public void setRContact(String RContact) {
        this.RContact = RContact;
    }
}