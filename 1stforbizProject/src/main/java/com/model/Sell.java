package com.model;
// Generated Jul 21, 2012 4:41:27 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Sell generated by hbm2java
 */
public class Sell  implements java.io.Serializable {


     private Long referenceNo;
     private String BTitle;
     private String BFirstName;
     private String BSurname;
     private String BComapnyName;
     private String BHouseNo;
     private String BRoadName;
     private String BTown;
     private String BCountry;
     private Long BPostalCode;
     private Long BTelephone;
     private Long BWorkPhone;
     private Long BMobile;
     private Long BFax;
     private String BEmail;
     private String BSiteUrl;
     private String PHouseNo;
     private String PRoadName;
     private String PTown;
     private String PCountry;
     private Long PPostalCode;
     private String BBusinessType;
     private String BTradingHours;
     private String BLocationDesc;
     private String BBusinessDesc;
     private String BBusinessDetails;
     private String BEquipList;
     private String BAccomDesc;
     private String BTenure;
     private String BViewArrang;
     private String BRates;
     private String BCurrentTakings;
     private Long BSalePrice;
     private String BAdverHeading;
     private String BCategory;
     private String referenceId;
     private Date createdDate;
     private String status;
     private Set<Imagesfile> imagesfiles = new HashSet<Imagesfile>(0);

    public Sell() {
    }

	
    public Sell(String BTitle, String BFirstName, String BSurname, String BComapnyName, String BHouseNo, String BRoadName, String BTown, String BCountry, String BEmail, String BSiteUrl, String BAdverHeading, String BCategory, String referenceId, Date createdDate, String status) {
        this.BTitle = BTitle;
        this.BFirstName = BFirstName;
        this.BSurname = BSurname;
        this.BComapnyName = BComapnyName;
        this.BHouseNo = BHouseNo;
        this.BRoadName = BRoadName;
        this.BTown = BTown;
        this.BCountry = BCountry;
        this.BEmail = BEmail;
        this.BSiteUrl = BSiteUrl;
        this.BAdverHeading = BAdverHeading;
        this.BCategory = BCategory;
        this.referenceId = referenceId;
        this.createdDate = createdDate;
        this.status = status;
    }
    public Sell(String BTitle, String BFirstName, String BSurname, String BComapnyName, String BHouseNo, String BRoadName, String BTown, String BCountry, Long BPostalCode, Long BTelephone, Long BWorkPhone, Long BMobile, Long BFax, String BEmail, String BSiteUrl, String PHouseNo, String PRoadName, String PTown, String PCountry, Long PPostalCode, String BBusinessType, String BTradingHours, String BLocationDesc, String BBusinessDesc, String BBusinessDetails, String BEquipList, String BAccomDesc, String BTenure, String BViewArrang, String BRates, String BCurrentTakings, Long BSalePrice, String BAdverHeading, String BCategory, String referenceId, Date createdDate, String status, Set<Imagesfile> imagesfiles) {
       this.BTitle = BTitle;
       this.BFirstName = BFirstName;
       this.BSurname = BSurname;
       this.BComapnyName = BComapnyName;
       this.BHouseNo = BHouseNo;
       this.BRoadName = BRoadName;
       this.BTown = BTown;
       this.BCountry = BCountry;
       this.BPostalCode = BPostalCode;
       this.BTelephone = BTelephone;
       this.BWorkPhone = BWorkPhone;
       this.BMobile = BMobile;
       this.BFax = BFax;
       this.BEmail = BEmail;
       this.BSiteUrl = BSiteUrl;
       this.PHouseNo = PHouseNo;
       this.PRoadName = PRoadName;
       this.PTown = PTown;
       this.PCountry = PCountry;
       this.PPostalCode = PPostalCode;
       this.BBusinessType = BBusinessType;
       this.BTradingHours = BTradingHours;
       this.BLocationDesc = BLocationDesc;
       this.BBusinessDesc = BBusinessDesc;
       this.BBusinessDetails = BBusinessDetails;
       this.BEquipList = BEquipList;
       this.BAccomDesc = BAccomDesc;
       this.BTenure = BTenure;
       this.BViewArrang = BViewArrang;
       this.BRates = BRates;
       this.BCurrentTakings = BCurrentTakings;
       this.BSalePrice = BSalePrice;
       this.BAdverHeading = BAdverHeading;
       this.BCategory = BCategory;
       this.referenceId = referenceId;
       this.createdDate = createdDate;
       this.status = status;
       this.imagesfiles = imagesfiles;
    }
   
    public Long getReferenceNo() {
        return this.referenceNo;
    }
    
    public void setReferenceNo(Long referenceNo) {
        this.referenceNo = referenceNo;
    }
    public String getBTitle() {
        return this.BTitle;
    }
    
    public void setBTitle(String BTitle) {
        this.BTitle = BTitle;
    }
    public String getBFirstName() {
        return this.BFirstName;
    }
    
    public void setBFirstName(String BFirstName) {
        this.BFirstName = BFirstName;
    }
    public String getBSurname() {
        return this.BSurname;
    }
    
    public void setBSurname(String BSurname) {
        this.BSurname = BSurname;
    }
    public String getBComapnyName() {
        return this.BComapnyName;
    }
    
    public void setBComapnyName(String BComapnyName) {
        this.BComapnyName = BComapnyName;
    }
    public String getBHouseNo() {
        return this.BHouseNo;
    }
    
    public void setBHouseNo(String BHouseNo) {
        this.BHouseNo = BHouseNo;
    }
    public String getBRoadName() {
        return this.BRoadName;
    }
    
    public void setBRoadName(String BRoadName) {
        this.BRoadName = BRoadName;
    }
    public String getBTown() {
        return this.BTown;
    }
    
    public void setBTown(String BTown) {
        this.BTown = BTown;
    }
    public String getBCountry() {
        return this.BCountry;
    }
    
    public void setBCountry(String BCountry) {
        this.BCountry = BCountry;
    }
    public Long getBPostalCode() {
        return this.BPostalCode;
    }
    
    public void setBPostalCode(Long BPostalCode) {
        this.BPostalCode = BPostalCode;
    }
    public Long getBTelephone() {
        return this.BTelephone;
    }
    
    public void setBTelephone(Long BTelephone) {
        this.BTelephone = BTelephone;
    }
    public Long getBWorkPhone() {
        return this.BWorkPhone;
    }
    
    public void setBWorkPhone(Long BWorkPhone) {
        this.BWorkPhone = BWorkPhone;
    }
    public Long getBMobile() {
        return this.BMobile;
    }
    
    public void setBMobile(Long BMobile) {
        this.BMobile = BMobile;
    }
    public Long getBFax() {
        return this.BFax;
    }
    
    public void setBFax(Long BFax) {
        this.BFax = BFax;
    }
    public String getBEmail() {
        return this.BEmail;
    }
    
    public void setBEmail(String BEmail) {
        this.BEmail = BEmail;
    }
    public String getBSiteUrl() {
        return this.BSiteUrl;
    }
    
    public void setBSiteUrl(String BSiteUrl) {
        this.BSiteUrl = BSiteUrl;
    }
    public String getPHouseNo() {
        return this.PHouseNo;
    }
    
    public void setPHouseNo(String PHouseNo) {
        this.PHouseNo = PHouseNo;
    }
    public String getPRoadName() {
        return this.PRoadName;
    }
    
    public void setPRoadName(String PRoadName) {
        this.PRoadName = PRoadName;
    }
    public String getPTown() {
        return this.PTown;
    }
    
    public void setPTown(String PTown) {
        this.PTown = PTown;
    }
    public String getPCountry() {
        return this.PCountry;
    }
    
    public void setPCountry(String PCountry) {
        this.PCountry = PCountry;
    }
    public Long getPPostalCode() {
        return this.PPostalCode;
    }
    
    public void setPPostalCode(Long PPostalCode) {
        this.PPostalCode = PPostalCode;
    }
    public String getBBusinessType() {
        return this.BBusinessType;
    }
    
    public void setBBusinessType(String BBusinessType) {
        this.BBusinessType = BBusinessType;
    }
    public String getBTradingHours() {
        return this.BTradingHours;
    }
    
    public void setBTradingHours(String BTradingHours) {
        this.BTradingHours = BTradingHours;
    }
    public String getBLocationDesc() {
        return this.BLocationDesc;
    }
    
    public void setBLocationDesc(String BLocationDesc) {
        this.BLocationDesc = BLocationDesc;
    }
    public String getBBusinessDesc() {
        return this.BBusinessDesc;
    }
    
    public void setBBusinessDesc(String BBusinessDesc) {
        this.BBusinessDesc = BBusinessDesc;
    }
    public String getBBusinessDetails() {
        return this.BBusinessDetails;
    }
    
    public void setBBusinessDetails(String BBusinessDetails) {
        this.BBusinessDetails = BBusinessDetails;
    }
    public String getBEquipList() {
        return this.BEquipList;
    }
    
    public void setBEquipList(String BEquipList) {
        this.BEquipList = BEquipList;
    }
    public String getBAccomDesc() {
        return this.BAccomDesc;
    }
    
    public void setBAccomDesc(String BAccomDesc) {
        this.BAccomDesc = BAccomDesc;
    }
    public String getBTenure() {
        return this.BTenure;
    }
    
    public void setBTenure(String BTenure) {
        this.BTenure = BTenure;
    }
    public String getBViewArrang() {
        return this.BViewArrang;
    }
    
    public void setBViewArrang(String BViewArrang) {
        this.BViewArrang = BViewArrang;
    }
    public String getBRates() {
        return this.BRates;
    }
    
    public void setBRates(String BRates) {
        this.BRates = BRates;
    }
    public String getBCurrentTakings() {
        return this.BCurrentTakings;
    }
    
    public void setBCurrentTakings(String BCurrentTakings) {
        this.BCurrentTakings = BCurrentTakings;
    }
    public Long getBSalePrice() {
        return this.BSalePrice;
    }
    
    public void setBSalePrice(Long BSalePrice) {
        this.BSalePrice = BSalePrice;
    }
    public String getBAdverHeading() {
        return this.BAdverHeading;
    }
    
    public void setBAdverHeading(String BAdverHeading) {
        this.BAdverHeading = BAdverHeading;
    }
    public String getBCategory() {
        return this.BCategory;
    }
    
    public void setBCategory(String BCategory) {
        this.BCategory = BCategory;
    }
    public String getReferenceId() {
        return this.referenceId;
    }
    
    public void setReferenceId(String referenceId) {
        this.referenceId = referenceId;
    }
    public Date getCreatedDate() {
        return this.createdDate;
    }
    
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Set<Imagesfile> getImagesfiles() {
        return this.imagesfiles;
    }
    
    public void setImagesfiles(Set<Imagesfile> imagesfiles) {
        this.imagesfiles = imagesfiles;
    }




}


