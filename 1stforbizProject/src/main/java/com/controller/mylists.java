/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Mylists;
import com.model.RequestinfoTable;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.net.UnknownHostException;
import java.util.Date;

/**
 *
 * @author D.Mathiazhagan
 */
public class mylists extends ActionSupport {

    private spDAO myDao;
    private String LTitle;
    private String LFirstName;
    private String LSurName;
    private String LCompanyName;
    private String LEmail;
    private Long LTelephone;
    private Long LWorkPhone;
    private Long LFax;
    private Long LMobile;
    private String LHouseNo;
    private String LRoad;
    private String LTown;
    private String LCountry;
    private String LPostalcode;
    private String LRefList;
    private String LStatus;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public String execute() throws Exception {
        try {



            RequestinfoTable rinfo = new RequestinfoTable(new Date(), LTitle, LFirstName, LSurName, LEmail, LRefList);
            rinfo.setWTelephone(LWorkPhone);
            rinfo.setTelephone(LTelephone);
            rinfo.setFax(LFax);
            rinfo.setHouseNo(LHouseNo);
            rinfo.setRoad(LRoad);
            rinfo.setCountry(LCountry);
            rinfo.setTown(LTown);
            rinfo.setPostcode(LPostalcode);
            myDao.getDbsession().save(rinfo);

            //sending confirmation mail
            subject = "Response from 1stforbiz.com";
            content = "Hi &nbsp; <b>" + LFirstName + "</b><br/>" + "Your request regarding property details is received<br/>.Our representative will contact you soon.<br/>" 
                     + "Thanks and Regards<br/>"
                    + "1stforbiz.com";

            sendMail.test(getLEmail(), getSubject(), getContent());
            System.out.println("-----------------Responce mail sended successfully ");
            addActionMessage("Your Request Received Successfully.We will respond to you soon");
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Server Error Please Try Again Later");
            return "success";
        }
       
    }

    @Override
    public void validate() {
        try {
            if (LFirstName.isEmpty() || LFirstName == null) {
                addActionError("Please Recheck All the fields and submit again.....");
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
     * @return the LTitle
     */
    public String getLTitle() {
        return LTitle;
    }

    /**
     * @param LTitle the LTitle to set
     */
    public void setLTitle(String LTitle) {
        this.LTitle = LTitle;
    }

    /**
     * @return the LFirstName
     */
    public String getLFirstName() {
        return LFirstName;
    }

    /**
     * @param LFirstName the LFirstName to set
     */
    @RequiredStringValidator(message = "first required")
    public void setLFirstName(String LFirstName) {
        this.LFirstName = LFirstName;
    }

    /**
     * @return the LSurName
     */
    public String getLSurName() {
        return LSurName;
    }

    /**
     * @param LSurName the LSurName to set
     */
    public void setLSurName(String LSurName) {
        this.LSurName = LSurName;
    }

    /**
     * @return the LCompanyName
     */
    public String getLCompanyName() {
        return LCompanyName;
    }

    /**
     * @param LCompanyName the LCompanyName to set
     */
    public void setLCompanyName(String LCompanyName) {
        this.LCompanyName = LCompanyName;
    }

    /**
     * @return the LEmail
     */
    public String getLEmail() {
        return LEmail;
    }

    /**
     * @param LEmail the LEmail to set
     */
    public void setLEmail(String LEmail) {
        this.LEmail = LEmail;
    }

    /**
     * @return the LTelephone
     */
    public Long getLTelephone() {
        return LTelephone;
    }

    /**
     * @param LTelephone the LTelephone to set
     */
    public void setLTelephone(Long LTelephone) {
        this.LTelephone = LTelephone;
    }

    /**
     * @return the LWorkPhone
     */
    public Long getLWorkPhone() {
        return LWorkPhone;
    }

    /**
     * @param LWorkPhone the LWorkPhone to set
     */
    public void setLWorkPhone(Long LWorkPhone) {
        this.LWorkPhone = LWorkPhone;
    }

    /**
     * @return the LFax
     */
    public Long getLFax() {
        return LFax;
    }

    /**
     * @param LFax the LFax to set
     */
    public void setLFax(Long LFax) {
        this.LFax = LFax;
    }

    /**
     * @return the LMobile
     */
    public Long getLMobile() {
        return LMobile;
    }

    /**
     * @param LMobile the LMobile to set
     */
    public void setLMobile(Long LMobile) {
        this.LMobile = LMobile;
    }

    /**
     * @return the LHouseNo
     */
    public String getLHouseNo() {
        return LHouseNo;
    }

    /**
     * @param LHouseNo the LHouseNo to set
     */
    public void setLHouseNo(String LHouseNo) {
        this.LHouseNo = LHouseNo;
    }

    /**
     * @return the LRoad
     */
    public String getLRoad() {
        return LRoad;
    }

    /**
     * @param LRoad the LRoad to set
     */
    public void setLRoad(String LRoad) {
        this.LRoad = LRoad;
    }

    /**
     * @return the LTown
     */
    public String getLTown() {
        return LTown;
    }

    /**
     * @param LTown the LTown to set
     */
    public void setLTown(String LTown) {
        this.LTown = LTown;
    }

    /**
     * @return the LCountry
     */
    public String getLCountry() {
        return LCountry;
    }

    /**
     * @param LCountry the LCountry to set
     */
    public void setLCountry(String LCountry) {
        this.LCountry = LCountry;
    }

    /**
     * @return the LRefList
     */
    public String getLRefList() {
        return LRefList;
    }

    /**
     * @param LRefList the LRefList to set
     */
    public void setLRefList(String LRefList) {
        this.LRefList = LRefList;
    }

    /**
     * @return the LStatus
     */
    public String getLStatus() {
        return LStatus;
    }

    /**
     * @param LStatus the LStatus to set
     */
    public void setLStatus(String LStatus) {
        this.LStatus = LStatus;
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
     * @return the LPostalcode
     */
    public String getLPostalcode() {
        return LPostalcode;
    }

    /**
     * @param LPostalcode the LPostalcode to set
     */
    public void setLPostalcode(String LPostalcode) {
        this.LPostalcode = LPostalcode;
    }
}
