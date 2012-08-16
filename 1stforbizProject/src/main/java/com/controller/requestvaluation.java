/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.BusinessValuation;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;

/**
 *
 * @author D.Mathiazhagan
 */
public class requestvaluation extends ActionSupport {

    private spDAO myDao;
    private String CTitle;
    private String CFirstName;
    private String CSurname;
    private String CCompName;
    private Long CPhone;
    private String CEmail;
    private String BSector;
    private String BTradeType;
    private String BLocaTown;
    private String BLocaCountry;
    private Long BAnnualTurnover;
    private String BComments;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public void validate() {

        if ((CFirstName.isEmpty()) && (CSurname.isEmpty()) && (CCompName.isEmpty()) && (CPhone == null && CSurname.isEmpty()) && (CEmail.isEmpty()) && ((BSector.isEmpty() || BSector.equals("invalid"))) && (BTradeType.isEmpty()) && (BLocaTown.isEmpty()) && ((BLocaCountry.isEmpty() || BLocaCountry.equals("invalid")))) {
            addActionError("Please Recheck All fields and try again");
        }

    }

    @Override
    public String execute() throws Exception {
        try {

            System.out.println("=--------------Entered into listing action");
            //inserting data into BusinessValuation table and saving
            BusinessValuation bv = new BusinessValuation();
            bv.setCreateddate(new Date());
            bv.setCEmail(CEmail);
            bv.setBAnnualTurnover(BAnnualTurnover);
            bv.setBSector(BSector);
            bv.setBComments(BComments);
            bv.setCFirstName(CFirstName);
            bv.setCCompName(CCompName);
            bv.setCSurname(CSurname);
            bv.setCTitle(CTitle);
            bv.setCPhone(CPhone);
            bv.setBTradeType(BTradeType);
            bv.setBLocaTown(BLocaTown);
            bv.setBLocaCountry(BLocaCountry);
            getMyDao().getDbsession().save(bv);
            addActionMessage("Your Request Received.We will get back to you shortly");
            System.out.println("======data saved======");
            //sending mail
            setSubject("Response from 1stforbiz.com  valuation request");
            setContent("Hi "+CFirstName+ " "+ CSurname+".<br/>Thanks for your valuations request.<br/> Our employee will contact you soon.<br/> For any other information please visit our website www.1stforbiz.com<br/>");

            getSendMail().test(getCEmail(), getSubject(), getContent());
            System.out.println("----------mail sended------");
            return "success";

        } catch (Exception e) {
            e.printStackTrace();
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
     * @return the CTitle
     */
    public String getCTitle() {
        return CTitle;
    }

    /**
     * @param CTitle the CTitle to set
     */
    public void setCTitle(String CTitle) {
        this.CTitle = CTitle;
    }

    /**
     * @return the CFirstName
     */
    public String getCFirstName() {
        return CFirstName;
    }

    /**
     * @param CFirstName the CFirstName to set
     */
    public void setCFirstName(String CFirstName) {
        this.CFirstName = CFirstName;
    }

    /**
     * @return the CSurname
     */
    public String getCSurname() {
        return CSurname;
    }

    /**
     * @param CSurname the CSurname to set
     */
    public void setCSurname(String CSurname) {
        this.CSurname = CSurname;
    }

    /**
     * @return the CCompName
     */
    public String getCCompName() {
        return CCompName;
    }

    /**
     * @param CCompName the CCompName to set
     */
    public void setCCompName(String CCompName) {
        this.CCompName = CCompName;
    }

    /**
     * @return the CPhone
     */
    public Long getCPhone() {
        return CPhone;
    }

    /**
     * @param CPhone the CPhone to set
     */
    public void setCPhone(Long CPhone) {
        this.CPhone = CPhone;
    }

    /**
     * @return the CEmail
     */
    public String getCEmail() {
        return CEmail;
    }

    /**
     * @param CEmail the CEmail to set
     */
    public void setCEmail(String CEmail) {
        this.CEmail = CEmail;
    }

    /**
     * @return the BSector
     */
    public String getBSector() {
        return BSector;
    }

    /**
     * @param BSector the BSector to set
     */
    public void setBSector(String BSector) {
        this.BSector = BSector;
    }

    /**
     * @return the BTradeType
     */
    public String getBTradeType() {
        return BTradeType;
    }

    /**
     * @param BTradeType the BTradeType to set
     */
    public void setBTradeType(String BTradeType) {
        this.BTradeType = BTradeType;
    }

    /**
     * @return the BLocaTown
     */
    public String getBLocaTown() {
        return BLocaTown;
    }

    /**
     * @param BLocaTown the BLocaTown to set
     */
    public void setBLocaTown(String BLocaTown) {
        this.BLocaTown = BLocaTown;
    }

    /**
     * @return the BLocaCountry
     */
    public String getBLocaCountry() {
        return BLocaCountry;
    }

    /**
     * @param BLocaCountry the BLocaCountry to set
     */
    public void setBLocaCountry(String BLocaCountry) {
        this.BLocaCountry = BLocaCountry;
    }

    /**
     * @return the BAnnualTurnover
     */
    public Long getBAnnualTurnover() {
        return BAnnualTurnover;
    }

    /**
     * @param BAnnualTurnover the BAnnualTurnover to set
     */
    public void setBAnnualTurnover(Long BAnnualTurnover) {
        this.BAnnualTurnover = BAnnualTurnover;
    }

    /**
     * @return the BComments
     */
    public String getBComments() {
        return BComments;
    }

    /**
     * @param BComments the BComments to set
     */
    public void setBComments(String BComments) {
        this.BComments = BComments;
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
