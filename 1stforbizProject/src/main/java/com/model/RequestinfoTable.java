package com.model;
// Generated Jul 21, 2012 4:41:27 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * RequestinfoTable generated by hbm2java
 */
public class RequestinfoTable  implements java.io.Serializable {


     private Long RId;
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

    public RequestinfoTable() {
    }

	
    public RequestinfoTable(Date RDate, String title, String fname, String sname, String email, String telephone, String houseNo, String road, String town, String country, String postcode, String referenceId) {
        this.RDate = RDate;
        this.title = title;
        this.fname = fname;
        this.sname = sname;
        this.email = email;
        this.telephone = telephone;
        this.houseNo = houseNo;
        this.road = road;
        this.town = town;
        this.country = country;
        this.postcode = postcode;
        this.referenceId = referenceId;
    }
    public RequestinfoTable(Date RDate, String title, String fname, String sname, String email, String telephone, String WTelephone, String fax, String houseNo, String road, String town, String country, String postcode, String referenceId) {
       this.RDate = RDate;
       this.title = title;
       this.fname = fname;
       this.sname = sname;
       this.email = email;
       this.telephone = telephone;
       this.WTelephone = WTelephone;
       this.fax = fax;
       this.houseNo = houseNo;
       this.road = road;
       this.town = town;
       this.country = country;
       this.postcode = postcode;
       this.referenceId = referenceId;
    }
   
    public Long getRId() {
        return this.RId;
    }
    
    public void setRId(Long RId) {
        this.RId = RId;
    }
    public Date getRDate() {
        return this.RDate;
    }
    
    public void setRDate(Date RDate) {
        this.RDate = RDate;
    }
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    public String getFname() {
        return this.fname;
    }
    
    public void setFname(String fname) {
        this.fname = fname;
    }
    public String getSname() {
        return this.sname;
    }
    
    public void setSname(String sname) {
        this.sname = sname;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelephone() {
        return this.telephone;
    }
    
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
    public String getWTelephone() {
        return this.WTelephone;
    }
    
    public void setWTelephone(String WTelephone) {
        this.WTelephone = WTelephone;
    }
    public String getFax() {
        return this.fax;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
    }
    public String getHouseNo() {
        return this.houseNo;
    }
    
    public void setHouseNo(String houseNo) {
        this.houseNo = houseNo;
    }
    public String getRoad() {
        return this.road;
    }
    
    public void setRoad(String road) {
        this.road = road;
    }
    public String getTown() {
        return this.town;
    }
    
    public void setTown(String town) {
        this.town = town;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public String getPostcode() {
        return this.postcode;
    }
    
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
    public String getReferenceId() {
        return this.referenceId;
    }
    
    public void setReferenceId(String referenceId) {
        this.referenceId = referenceId;
    }




}


