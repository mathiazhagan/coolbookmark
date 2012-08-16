/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.RequestinfoTable;
import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author D.Mathiazhagan
 */
public class requestinfo extends ActionSupport {

    private spDAO myDao;
    private Date RDate;
    private String title;
    private String fname;
    private String sname;
    private String email;
    private Long telephone;
    private Long WTelephone;
    private Long fax;
    private String houseNo;
    private String road;
    private String town;
    private String country;
    private String postcode;
    private String referenceId;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public String execute() throws Exception {
        try {
            System.out.println("---------" + fname);
            //Inserting data into requestinfo table
            RequestinfoTable rinfo = new RequestinfoTable(new Date(), getTitle(), getFname(), getSname(), getEmail(), getReferenceId());
            rinfo.setWTelephone(WTelephone);
            rinfo.setTelephone(telephone);
            rinfo.setFax(fax);
            rinfo.setHouseNo(houseNo);
            rinfo.setRoad(road);
            rinfo.setCountry(country);
            rinfo.setTown(town);
            rinfo.setPostcode(postcode);


            myDao.getDbsession().save(rinfo);
            System.out.println("----------Request saved ---------");


            //sending conformation mail
            subject = "Response from Pegasus:Thank you for your request about property RefId:" + referenceId + "";
            // content="888888888888&&*************";
            content = ("Response From Pegasus Business Sales..."
                    + "Thank you for your request about the property with referenceId :" + referenceId + "We will send you the Information soon,for any other queries visit our web site :"
                    + "www.1stforbiz.com ");

            System.out.println("----------------" + email);
            sendMail.test(getEmail(), getSubject(), getContent());
            System.out.println("-----------------Response mail sended successfully ");
            addActionMessage("Your Request Received Successfully.We will respond to you soon");

            return "success";

        } catch (Exception e) {
            e.printStackTrace();

            addActionError("Server Error Please Try Again Later");
            return "error";

        }

    }

    @Override
    public void validate() {

        if (fname.isEmpty() && sname.isEmpty() && email.isEmpty()) {
            addActionError("Please Recheck All the fields and submit again.....");
        }

    }

    /**
     * @return the RDate
     */
    public Date getRDate() {
        return RDate;
    }

    /**
     * @param RDate the RDate to set
     */
    public void setRDate(Date RDate) {
        this.RDate = RDate;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the sname
     */
    public String getSname() {
        return sname;
    }

    /**
     * @param sname the sname to set
     */
    public void setSname(String sname) {
        this.sname = sname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the houseNo
     */
    public String getHouseNo() {
        return houseNo;
    }

    /**
     * @param houseNo the houseNo to set
     */
    public void setHouseNo(String houseNo) {
        this.houseNo = houseNo;
    }

    /**
     * @return the road
     */
    public String getRoad() {
        return road;
    }

    /**
     * @param road the road to set
     */
    public void setRoad(String road) {
        this.road = road;
    }

    /**
     * @return the town
     */
    public String getTown() {
        return town;
    }

    /**
     * @param town the town to set
     */
    public void setTown(String town) {
        this.town = town;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return the postcode
     */
    public String getPostcode() {
        return postcode;
    }

    /**
     * @param postcode the postcode to set
     */
    public void setPostcode(String postcode) {
        this.postcode = postcode;
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
     * @return the telephone
     */
    public Long getTelephone() {
        return telephone;
    }

    /**
     * @param telephone the telephone to set
     */
    public void setTelephone(Long telephone) {
        this.telephone = telephone;
    }

    /**
     * @return the WTelephone
     */
    public Long getWTelephone() {
        return WTelephone;
    }

    /**
     * @param WTelephone the WTelephone to set
     */
    public void setWTelephone(Long WTelephone) {
        this.WTelephone = WTelephone;
    }

    /**
     * @return the fax
     */
    public Long getFax() {
        return fax;
    }

    /**
     * @param fax the fax to set
     */
    public void setFax(Long fax) {
        this.fax = fax;
    }
}
