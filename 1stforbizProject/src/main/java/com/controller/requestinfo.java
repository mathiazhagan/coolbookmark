/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.RequestinfoTable;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.util.Date;

/**
 *
 * @author Naren
 */
public class requestinfo extends ActionSupport {

    private spDAO myDao;
    private Date RDate;
    private String title;
    private String fname;
    private String sname;
    private String email;
    private String telephone;
    private String WTelephone;
    private String fax;
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
            System.out.println("---------"+fname);
           //Inserting data into requestinfo table
            RequestinfoTable rinfo = new RequestinfoTable(new Date(), getTitle(), getFname(), getSname(), getEmail(), getTelephone(), getWTelephone(), getFax(),
                    getHouseNo(), getRoad(), getTown(), getCountry(), getPostcode(), getReferenceId());
            myDao.getDbsession().save(rinfo);
            System.out.println("----------Request saved ---------");
 
            
            //sending conformation mail
            subject = "Responce from Pegasus:Thank you for your request about property RefId:" + referenceId + "";
           // content="888888888888&&*************";
            content = ("<html><body><table size=fixed border=10><th><div id=header style=background-color:lightblue;>Responce From Pegasus Business Sales...</div></th>"
                    + "<tr><td align=middle>Thank you for your request about the property with referenceId :" + referenceId + "We will send you the Information soon<br> for any other queries visit our web site :"
                    + "<td><a STYLE=text-decoration:none href=www.1stforbiz.com>www.1stforbiz.com</a></td> ");

            System.out.println("----------------"+email);
            sendMail.test(getEmail(), getSubject(), getContent());
            System.out.println("-----------------Responce mail sended successfully ");  


        } catch (Exception e) {
            e.printStackTrace();
            return "error";

        }
       
        return "success";

    }
    
    
     @Override
    public void validate() {
        try {
             if(fname.isEmpty() || fname==null){
             addActionMessage("your form submition failed check the fields and submit again....");            
            }
            if(sname.isEmpty() || sname==null){
             addFieldError("sname", "please ener surname");            
           }
           if(email.isEmpty() || email==null){
              addFieldError("email", "please ener email");                  
           }
            if(telephone.isEmpty() || telephone==null){
             addFieldError("telephone", "please ener telephone no");                    
            }
            if(WTelephone.isEmpty() || WTelephone==null){
             addFieldError("WTelephone", "please ener WTelephone no");                    
            }
            if(fax.isEmpty() || fax==null){
             addFieldError("fax", "please ener fax no");                  
           }
            if(houseNo.isEmpty() || houseNo==null){
             addFieldError("houseNo", "please ener houseNo ");                   
            }
           if(road.isEmpty() || road==null){
             addFieldError("road", "please ener road name");                  
            }
           if(town.isEmpty() || town==null){
            addFieldError("town", "please ener town name");                 
           }
            if(country.isEmpty() || country==null){
           addFieldError("country", "please ener country name");                     
           }
           if(postcode.isEmpty() || postcode==null){
             addFieldError("postcode", "please ener postcode");                 
           }
           
                       
             } catch (Exception e) {
            e.printStackTrace();
            
             
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
     * @return the telephone
     */
    public String getTelephone() {
        return telephone;
    }

    /**
     * @param telephone the telephone to set
     */
   
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    /**
     * @return the WTelephone
     */
    public String getWTelephone() {
        return WTelephone;
    }

    /**
     * @param WTelephone the WTelephone to set
     */
    public void setWTelephone(String WTelephone) {
        this.WTelephone = WTelephone;
    }

    /**
     * @return the fax
     */
    public String getFax() {
        return fax;
    }

    /**
     * @param fax the fax to set
     */
    public void setFax(String fax) {
        this.fax = fax;
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
}
