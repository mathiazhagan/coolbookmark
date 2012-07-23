/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.BusinessValuation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.util.Date;

/**
 *
 * @author Naren
 */
public class requestvaluation extends ActionSupport {

    private spDAO myDao;
    private String CTitle;
    private String CFirstName;
    private String CSurname;
    private String CCompName;
    private String CHouseNo;
    private String CRoad;
    private String CTown;
    private String CCountry;
    private Long CPostalcode;
    private Long CPhone;
    private Long CWorkPhone;
    private Long CFax;
    private Long CMobile;
    private String CEmail;
    private String BSector;
    private String BTradeType;
    private String BLocaTown;
    private String BLocaCountry;
    private Long BAnnualTurnover;
    private Long BGrossProfit;
    private Long BEmployeesNo;
    private String BTenure;
    private String BWithAccom;
    private Long BRooms;
    private String BFrachises;
    private String BRent;
    private String BRates;
    private String BElectricity;
    private String BOtherExpen;
    private String BComments;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public String execute() throws Exception {
        try {

            System.out.println("=--------------Entered into listing action");
            //inserting data into BusinessValuation table and saving
            BusinessValuation bv = new BusinessValuation(getCTitle(), getCFirstName(), getCSurname(), getCCompName(), getCHouseNo(), getCRoad(), getCTown(), getCCountry(), getCPostalcode(), getCPhone(), getCWorkPhone(), getCFax(),
                    getCMobile(), getCEmail(), getBSector(), getBTradeType(), getBLocaTown(), getBLocaCountry(), getBAnnualTurnover(), getBGrossProfit(), getBEmployeesNo(), getBTenure(), getBWithAccom(), getBRooms(), getBFrachises(),
                    getBRent(), getBRates(), getBElectricity(), getBOtherExpen(), getBComments(), new Date());
            getMyDao().getDbsession().save(bv);
            
            System.out.println("======data saved======");
            //sending mail
            setSubject("Respoce to ypur valuation request");
            setContent("Thanks for your valuations request. Our employee will contact you soon.");
            
            getSendMail().test(getCEmail(), getSubject(), getContent());
            System.out.println("----------mail sended------");
                  
        } catch (Exception e) {
            e.printStackTrace();
            return "error";

        }
        return "success";

    }
    
     @Override
    public void validate() {
        try {
             if(CFirstName.isEmpty() || CFirstName==null){
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
  @RequiredStringValidator(message="First name is required")
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
   @RequiredStringValidator(message="Sur name is required")
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
    @RequiredStringValidator(message="Company name is required")
    public void setCCompName(String CCompName) {
        this.CCompName = CCompName;
    }

    /**
     * @return the CHouseNo
     */
    public String getCHouseNo() {
        return CHouseNo;
    }

    /**
     * @param CHouseNo the CHouseNo to set
     */
    @RequiredStringValidator(message="First name is required")
    public void setCHouseNo(String CHouseNo) {
        this.CHouseNo = CHouseNo;
    }

    /**
     * @return the CRoad
     */
    public String getCRoad() {
        return CRoad;
    }

    /**
     * @param CRoad the CRoad to set
     */
    @RequiredStringValidator(message="First name is required")
    public void setCRoad(String CRoad) {
        this.CRoad = CRoad;
    }

    /**
     * @return the CTown
     */
    public String getCTown() {
        return CTown;
    }

    /**
     * @param CTown the CTown to set
     */
    @RequiredStringValidator(message="First name is required")
    public void setCTown(String CTown) {
        this.CTown = CTown;
    }

    /**
     * @return the CCountry
     */
    public String getCCountry() {
        return CCountry;
    }

    /**
     * @param CCountry the CCountry to set
     */
   
    public void setCCountry(String CCountry) {
        this.CCountry = CCountry;
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
   @RequiredStringValidator(message="Email address is required")
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
     * @return the BTenure
     */
    public String getBTenure() {
        return BTenure;
    }

    /**
     * @param BTenure the BTenure to set
     */
    public void setBTenure(String BTenure) {
        this.BTenure = BTenure;
    }

    /**
     * @return the BWithAccom
     */
    public String getBWithAccom() {
        return BWithAccom;
    }

    /**
     * @param BWithAccom the BWithAccom to set
     */
    public void setBWithAccom(String BWithAccom) {
        this.BWithAccom = BWithAccom;
    }

   

    /**
     * @return the BFrachises
     */
    public String getBFrachises() {
        return BFrachises;
    }

    /**
     * @param BFrachises the BFrachises to set
     */
    public void setBFrachises(String BFrachises) {
        this.BFrachises = BFrachises;
    }

    /**
     * @return the BRent
     */
    public String getBRent() {
        return BRent;
    }

    /**
     * @param BRent the BRent to set
     */
    public void setBRent(String BRent) {
        this.BRent = BRent;
    }

    /**
     * @return the BRates
     */
    public String getBRates() {
        return BRates;
    }

    /**
     * @param BRates the BRates to set
     */
    public void setBRates(String BRates) {
        this.BRates = BRates;
    }

    /**
     * @return the BElectricity
     */
    public String getBElectricity() {
        return BElectricity;
    }

    /**
     * @param BElectricity the BElectricity to set
     */
    public void setBElectricity(String BElectricity) {
        this.BElectricity = BElectricity;
    }

    /**
     * @return the BOtherExpen
     */
    public String getBOtherExpen() {
        return BOtherExpen;
    }

    /**
     * @param BOtherExpen the BOtherExpen to set
     */
    public void setBOtherExpen(String BOtherExpen) {
        this.BOtherExpen = BOtherExpen;
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

    /**
     * @return the CPostalcode
     */
    public Long getCPostalcode() {
        return CPostalcode;
    }

    /**
     * @param CPostalcode the CPostalcode to set
     */
    public void setCPostalcode(Long CPostalcode) {
        this.CPostalcode = CPostalcode;
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
     * @return the CWorkPhone
     */
    public Long getCWorkPhone() {
        return CWorkPhone;
    }

    /**
     * @param CWorkPhone the CWorkPhone to set
     */
    public void setCWorkPhone(Long CWorkPhone) {
        this.CWorkPhone = CWorkPhone;
    }

    /**
     * @return the CFax
     */
    public Long getCFax() {
        return CFax;
    }

    /**
     * @param CFax the CFax to set
     */
    public void setCFax(Long CFax) {
        this.CFax = CFax;
    }

    /**
     * @return the CMobile
     */
    public Long getCMobile() {
        return CMobile;
    }

    /**
     * @param CMobile the CMobile to set
     */
    public void setCMobile(Long CMobile) {
        this.CMobile = CMobile;
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
     * @return the BGrossProfit
     */
    public Long getBGrossProfit() {
        return BGrossProfit;
    }

    /**
     * @param BGrossProfit the BGrossProfit to set
     */
    public void setBGrossProfit(Long BGrossProfit) {
        this.BGrossProfit = BGrossProfit;
    }

    /**
     * @return the BEmployeesNo
     */
    public Long getBEmployeesNo() {
        return BEmployeesNo;
    }

    /**
     * @param BEmployeesNo the BEmployeesNo to set
     */
    public void setBEmployeesNo(Long BEmployeesNo) {
        this.BEmployeesNo = BEmployeesNo;
    }

    /**
     * @return the BRooms
     */
    public Long getBRooms() {
        return BRooms;
    }

    /**
     * @param BRooms the BRooms to set
     */
    public void setBRooms(Long BRooms) {
        this.BRooms = BRooms;
    }

   
}
