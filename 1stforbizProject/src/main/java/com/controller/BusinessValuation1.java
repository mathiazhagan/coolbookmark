/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.BusinessValuation;
import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Naren
 */
public class BusinessValuation1 extends ActionSupport {

    private spDAO myDao;
    private List<Sell> list1;
    private List<Sell> list2;
    private String CTitle;
    private String CFirstName;
    private String CSurname;
    private String CCompName;
    private String CHouseNo;
    private String CRoad;
    private String CTown;
    private String CCountry;
    private long CPostalcode;
    private long CPhone;
    private long CWorkPhone;
    private long CFax;
    private long CMobile;
    private String CEmail;
    private String BSector;
    private String BTradeType;
    private String BLocaTown;
    private String BLocaCountry;
    private long BAnnualTurnover;
    private long BGrossProfit;
    private long BEmployeesNo;
    private String BTenure;
    private String BWithAccom;
    private long BRooms;
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

            //inserting data into databasae table Business Valuation
            
            BusinessValuation valuation = new BusinessValuation(getCTitle(), getCFirstName(), getCSurname(), getCCompName(), getCHouseNo(), getCRoad(), getCTown(), getCCountry(), getCPostalcode(), getCPhone(), getCWorkPhone(),
                    getCFax(), getCMobile(), getCEmail(), getBSector(), getBTradeType(), getBLocaTown(), getBLocaCountry(), getBAnnualTurnover(), getBGrossProfit(), getBEmployeesNo(), getBTenure(), getBWithAccom(), getBRooms(),
                    getBFrachises(), getBRent(), getBRates(), getBElectricity(), getBOtherExpen(), getBComments(), new Date());

            myDao.getDbsession().save(valuation);

            
            //Sending mail to mail address provided in above data (CEmail....)
            
            setSubject("Valuation Request Received");
            setContent("Hi &nbsp;" + "\t\t" + getCFirstName() + "\n\n\n" + " Welcome to www.1stforbiz.com<br><br>\n" + " \n Your Request for valuation is received.We will contact you soon.\n\n<br><br>" + " Thanks & Regards <br>\n " + " 1stforbiz Team\n<br><br>");
            getSendMail().test(getCEmail(), getSubject(), getContent());
            System.out.println("----------------mail sended to your friend successfully");





        } catch (Exception e) {
            e.printStackTrace();
            return "error1";

        }
        return "success";

    }

    /**
     * @return the list1
     */
    public List<Sell> getList1() {
        return list1;
    }

    /**
     * @param list1 the list1 to set
     */
    public void setList1(List<Sell> list1) {
        this.list1 = list1;
    }

    /**
     * @return the list2
     */
    public List<Sell> getList2() {
        return list2;
    }

    /**
     * @param list2 the list2 to set
     */
    public void setList2(List<Sell> list2) {
        this.list2 = list2;
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
     * @return the CHouseNo
     */
    public String getCHouseNo() {
        return CHouseNo;
    }

    /**
     * @param CHouseNo the CHouseNo to set
     */
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
     * @return the CPostalcode
     */
    public long getCPostalcode() {
        return CPostalcode;
    }

    /**
     * @param CPostalcode the CPostalcode to set
     */
    public void setCPostalcode(long CPostalcode) {
        this.CPostalcode = CPostalcode;
    }

    /**
     * @return the CPhone
     */
    public long getCPhone() {
        return CPhone;
    }

    /**
     * @param CPhone the CPhone to set
     */
    public void setCPhone(long CPhone) {
        this.CPhone = CPhone;
    }

    /**
     * @return the CWorkPhone
     */
    public long getCWorkPhone() {
        return CWorkPhone;
    }

    /**
     * @param CWorkPhone the CWorkPhone to set
     */
    public void setCWorkPhone(long CWorkPhone) {
        this.CWorkPhone = CWorkPhone;
    }

    /**
     * @return the CFax
     */
    public long getCFax() {
        return CFax;
    }

    /**
     * @param CFax the CFax to set
     */
    public void setCFax(long CFax) {
        this.CFax = CFax;
    }

    /**
     * @return the CMobile
     */
    public long getCMobile() {
        return CMobile;
    }

    /**
     * @param CMobile the CMobile to set
     */
    public void setCMobile(long CMobile) {
        this.CMobile = CMobile;
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
    public long getBAnnualTurnover() {
        return BAnnualTurnover;
    }

    /**
     * @param BAnnualTurnover the BAnnualTurnover to set
     */
    public void setBAnnualTurnover(long BAnnualTurnover) {
        this.BAnnualTurnover = BAnnualTurnover;
    }

    /**
     * @return the BGrossProfit
     */
    public long getBGrossProfit() {
        return BGrossProfit;
    }

    /**
     * @param BGrossProfit the BGrossProfit to set
     */
    public void setBGrossProfit(long BGrossProfit) {
        this.BGrossProfit = BGrossProfit;
    }

    /**
     * @return the BEmployeesNo
     */
    public long getBEmployeesNo() {
        return BEmployeesNo;
    }

    /**
     * @param BEmployeesNo the BEmployeesNo to set
     */
    public void setBEmployeesNo(long BEmployeesNo) {
        this.BEmployeesNo = BEmployeesNo;
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
     * @return the BRooms
     */
    public long getBRooms() {
        return BRooms;
    }

    /**
     * @param BRooms the BRooms to set
     */
    public void setBRooms(long BRooms) {
        this.BRooms = BRooms;
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

  
}
