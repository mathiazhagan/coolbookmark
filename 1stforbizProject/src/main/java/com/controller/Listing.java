/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.SampleMylist;
import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Naren
 */

public class Listing extends ActionSupport {
    
    private spDAO myDao;
    private List<Sell> list1;
    private List<Sell> list2;
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
    private String BPropDesc;
    private String BCategory;
    private String referenceNo;
    private String referenceId;
    private Date createdDate;
     private String status;
    private Set<SampleMylist> sampleMylistsForReference = new HashSet<SampleMylist>(0);
    private Set<SampleMylist> sampleMylistsForHeading = new HashSet<SampleMylist>(0);
   

    
    
    @Override
    public String execute() throws Exception {
        try {
              //inserting data into database table Sell
         

                   Sell sell=new Sell();
                   sell.setBTitle(BTitle);
                   sell.setBFirstName(BFirstName);
                   sell.setBSurname(BSurname);
                   sell.setBComapnyName(BComapnyName);
                   sell.setBHouseNo(BHouseNo);
                   sell.setBRoadName(BRoadName);
                   sell.setBTown(BTown);
                   sell.setBCountry(BCountry);
                   sell.setBPostalCode(BPostalCode);
                   sell.setBTelephone(BTelephone);
                   sell.setBWorkPhone(BWorkPhone);
                   sell.setBMobile(BMobile);
                   sell.setBFax(BFax);
                   sell.setBEmail(BEmail);
                   sell.setBSiteUrl(BSiteUrl);
                   sell.setPHouseNo(PHouseNo);
                   sell.setPRoadName(PRoadName);
                   sell.setPTown(PTown);
                   sell.setPCountry(PCountry);
                   sell.setPPostalCode(PPostalCode);
                   sell.setBBusinessType(BBusinessType);
                   sell.setBTradingHours(BTradingHours);
                   sell.setBLocationDesc(BLocationDesc);
                   sell.setBBusinessDesc(BBusinessDesc);
                   sell.setBBusinessDetails(BBusinessDetails);
                   sell.setBEquipList(BEquipList);
                   sell.setBAccomDesc(BAccomDesc);
                   sell.setBTenure(BTenure);
                   sell.setBViewArrang(BViewArrang);
                   sell.setBRates(BRates);
                   sell.setBCurrentTakings(BCurrentTakings);
                   sell.setBSalePrice(BSalePrice);
                   sell.setBAdverHeading(BAdverHeading);
                   sell.setBCategory(BCategory);
                   sell.setReferenceId(referenceId);
                   sell.setCreatedDate(new Date());
                   sell.setStatus("Inactive");
                   
                  myDao.getDbsession().save(sell); 
            //generating list using Sell table data
            Criteria crit=myDao.getDbsession().createCriteria(Sell.class);
            crit.add(Restrictions.eq("referenceId",referenceId));
            list1=(List<Sell>)crit.list();
            Long z=list1.get(0).getReferenceNo();
            
           // long z=Integer.parseInt(referenceNo);
            System.out.println("--------z=="+z);
            Sell sell1 = (Sell) myDao.getDbsession().get(Sell.class, z);
            //generating referenceId using referencingNo
            //Appending category and 'J' to referenceNo and updating
            Long a = sell1.getReferenceNo();
            System.out.println("---------a==" + a);
            String b = sell1.getBCategory();
            System.out.println("----------b==" + b);
            String c = b + a + 'J';
            System.out.println("--------c==" + c);
            
            sell1.setReferenceId(c);
            myDao.getDbsession().update(sell1);
            //generating sell list with restrictions
            Criteria crit1=myDao.getDbsession().createCriteria(Sell.class);
            crit1.add(Restrictions.eq("referenceId",c));
            list2=(List<Sell>)crit.list();
            
            //saving list data into SampleMylist table
            SampleMylist sm=new SampleMylist(c,getBAdverHeading());
            myDao.getDbsession().save(sm);
            System.out.println("-----------sample mylist data saved-------");
            
            
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
            
        }
        return "success";
        
    }
    
    
      @Override
    public void validate() {
        try {
             if(BFirstName.isEmpty() || BFirstName==null){
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
     * @return the BTitle
     */
    public String getBTitle() {
        return BTitle;
    }

    /**
     * @param BTitle the BTitle to set
     */
     
    public void setBTitle(String BTitle) {
        this.BTitle = BTitle;
    }

    /**
     * @return the BFirstName
     */
    
    public String getBFirstName() {
        return BFirstName;
    }

    /**
     * @param BFirstName the BFirstName to set
     */
   @RequiredStringValidator(message="First Name Required")
    public void setBFirstName(String BFirstName) {
        this.BFirstName = BFirstName;
    }

    /**
     * @return the BSurname
     */
    
    public String getBSurname() {
        return BSurname;
    }

    /**
     * @param BSurname the BSurname to set
     */
    @RequiredStringValidator(message="Sur Name Required")
    public void setBSurname(String BSurname) {
        this.BSurname = BSurname;
    }

    /**
     * @return the BComapnyName
     */
   
    public String getBComapnyName() {
        return BComapnyName;
    }

    /**
     * @param BComapnyName the BComapnyName to set
     */
    
    public void setBComapnyName(String BComapnyName) {
        this.BComapnyName = BComapnyName;
    }

    /**
     * @return the BHouseNo
     */
    
    public String getBHouseNo() {
        return BHouseNo;
    }

    /**
     * @param BHouseNo the BHouseNo to set
     */
    
    public void setBHouseNo(String BHouseNo) {
        this.BHouseNo = BHouseNo;
    }

    /**
     * @return the BRoadName
     */
    public String getBRoadName() {
        return BRoadName;
    }

    /**
     * @param BRoadName the BRoadName to set
     */
  
    public void setBRoadName(String BRoadName) {
        this.BRoadName = BRoadName;
    }

    /**
     * @return the BTown
     */
    public String getBTown() {
        return BTown;
    }

    /**
     * @param BTown the BTown to set
     */
   
    public void setBTown(String BTown) {
        this.BTown = BTown;
    }

    /**
     * @return the BCountry
     */
    public String getBCountry() {
        return BCountry;
    }

    /**
     * @param BCountry the BCountry to set
     */
     
    public void setBCountry(String BCountry) {
        this.BCountry = BCountry;
    }

   

    /**
     * @return the BWorkPhone
     */
    public Long getBWorkPhone() {
        return BWorkPhone;
    }

    /**
     * @param BWorkPhone the BWorkPhone to set
     */
    public void setBWorkPhone(Long BWorkPhone) {
        this.BWorkPhone = BWorkPhone;
    }

    /**
     * @return the BMobile
     */
    public Long getBMobile() {
        return BMobile;
    }

    /**
     * @param BMobile the BMobile to set
     */
    public void setBMobile(Long BMobile) {
        this.BMobile = BMobile;
    }

    /**
     * @return the BFax
     */
    public Long getBFax() {
        return BFax;
    }

    /**
     * @param BFax the BFax to set
     */
    public void setBFax(Long BFax) {
        this.BFax = BFax;
    }

    /**
     * @return the BEmail
     */
    public String getBEmail() {
        return BEmail;
    }

    /**
     * @param BEmail the BEmail to set
     */
    @RequiredStringValidator(message="Email address is Required")
    public void setBEmail(String BEmail) {
        this.BEmail = BEmail;
    }

    /**
     * @return the BSiteUrl
     */
    public String getBSiteUrl() {
        return BSiteUrl;
    }

    /**
     * @param BSiteUrl the BSiteUrl to set
     */
    public void setBSiteUrl(String BSiteUrl) {
        this.BSiteUrl = BSiteUrl;
    }

    /**
     * @return the PHouseNo
     */
    public String getPHouseNo() {
        return PHouseNo;
    }

    /**
     * @param PHouseNo the PHouseNo to set
     */
    public void setPHouseNo(String PHouseNo) {
        this.PHouseNo = PHouseNo;
    }

    /**
     * @return the PRoadName
     */
    public String getPRoadName() {
        return PRoadName;
    }

    /**
     * @param PRoadName the PRoadName to set
     */
    public void setPRoadName(String PRoadName) {
        this.PRoadName = PRoadName;
    }

    /**
     * @return the PTown
     */
    public String getPTown() {
        return PTown;
    }

    /**
     * @param PTown the PTown to set
     */
    public void setPTown(String PTown) {
        this.PTown = PTown;
    }

    /**
     * @return the PCountry
     */
    public String getPCountry() {
        return PCountry;
    }

    /**
     * @param PCountry the PCountry to set
     */
    
    public void setPCountry(String PCountry) {
        this.PCountry = PCountry;
    }

    /**
     * @return the PPostalCode
     */
    public Long getPPostalCode() {
        return PPostalCode;
    }

    /**
     * @param PPostalCode the PPostalCode to set
     */
    public void setPPostalCode(Long PPostalCode) {
        this.PPostalCode = PPostalCode;
    }

    /**
     * @return the BBusinessType
     */
    public String getBBusinessType() {
        return BBusinessType;
    }

    /**
     * @param BBusinessType the BBusinessType to set
     */
    public void setBBusinessType(String BBusinessType) {
        this.BBusinessType = BBusinessType;
    }

    /**
     * @return the BTradingHours
     */
    public String getBTradingHours() {
        return BTradingHours;
    }

    /**
     * @param BTradingHours the BTradingHours to set
     */
    public void setBTradingHours(String BTradingHours) {
        this.BTradingHours = BTradingHours;
    }

    /**
     * @return the BLocationDesc
     */
    public String getBLocationDesc() {
        return BLocationDesc;
    }

    /**
     * @param BLocationDesc the BLocationDesc to set
     */
    public void setBLocationDesc(String BLocationDesc) {
        this.BLocationDesc = BLocationDesc;
    }

    /**
     * @return the BBusinessDesc
     */
    public String getBBusinessDesc() {
        return BBusinessDesc;
    }

    /**
     * @param BBusinessDesc the BBusinessDesc to set
     */
    public void setBBusinessDesc(String BBusinessDesc) {
        this.BBusinessDesc = BBusinessDesc;
    }

    /**
     * @return the BEquipList
     */
    public String getBEquipList() {
        return BEquipList;
    }

    /**
     * @param BEquipList the BEquipList to set
     */
    public void setBEquipList(String BEquipList) {
        this.BEquipList = BEquipList;
    }

    /**
     * @return the BAccomDesc
     */
    public String getBAccomDesc() {
        return BAccomDesc;
    }

    /**
     * @param BAccomDesc the BAccomDesc to set
     */
    public void setBAccomDesc(String BAccomDesc) {
        this.BAccomDesc = BAccomDesc;
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
     * @return the BViewArrang
     */
    public String getBViewArrang() {
        return BViewArrang;
    }

    /**
     * @param BViewArrang the BViewArrang to set
     */
    public void setBViewArrang(String BViewArrang) {
        this.BViewArrang = BViewArrang;
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
     * @return the BCurrentTakings
     */
    public String getBCurrentTakings() {
        return BCurrentTakings;
    }

    /**
     * @param BCurrentTakings the BCurrentTakings to set
     */
    public void setBCurrentTakings(String BCurrentTakings) {
        this.BCurrentTakings = BCurrentTakings;
    }

   

    /**
     * @return the BAdverHeading
     */
   
    public String getBAdverHeading() {
        return BAdverHeading;
    }

    /**
     * @param BAdverHeading the BAdverHeading to set
     */
    
    public void setBAdverHeading(String BAdverHeading) {
        this.BAdverHeading = BAdverHeading;
    }

    /**
     * @return the BPropDesc
     */
    public String getBPropDesc() {
        return BPropDesc;
    }

    /**
     * @param BPropDesc the BPropDesc to set
     */
    
    public void setBPropDesc(String BPropDesc) {
        this.BPropDesc = BPropDesc;
    }

    /**
     * @return the BCategory
     */
   
    public String getBCategory() {
        return BCategory;
    }

    /**
     * @param BCategory the BCategory to set
     */
    public void setBCategory(String BCategory) {
        this.BCategory = BCategory;
    }

    /**
     * @return the referenceNo
     */
    public String getReferenceNo() {
        return referenceNo;
    }

    /**
     * @param referenceNo the referenceNo to set
     */
     
    public void setReferenceNo(String referenceNo) {
        this.referenceNo = referenceNo;
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
     * @return the BBusinessDetails
     */
    public String getBBusinessDetails() {
        return BBusinessDetails;
    }

    /**
     * @param BBusinessDetails the BBusinessDetails to set
     */
    public void setBBusinessDetails(String BBusinessDetails) {
        this.BBusinessDetails = BBusinessDetails;
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
     * @return the BSalePrice
     */
    public Long getBSalePrice() {
        return BSalePrice;
    }

    /**
     * @param BSalePrice the BSalePrice to set
     */
    public void setBSalePrice(Long BSalePrice) {
        this.BSalePrice = BSalePrice;
    }

    /**
     * @return the BPostalCode
     */
    public Long getBPostalCode() {
        return BPostalCode;
    }

    /**
     * @param BPostalCode the BPostalCode to set
     */
    public void setBPostalCode(Long BPostalCode) {
        this.BPostalCode = BPostalCode;
    }

    /**
     * @return the BTelephone
     */
    public Long getBTelephone() {
        return BTelephone;
    }

    /**
     * @param BTelephone the BTelephone to set
     */
    public void setBTelephone(Long BTelephone) {
        this.BTelephone = BTelephone;
    }

    /**
     * @return the sampleMylistsForReference
     */
    public Set<SampleMylist> getSampleMylistsForReference() {
        return sampleMylistsForReference;
    }

    /**
     * @param sampleMylistsForReference the sampleMylistsForReference to set
     */
    public void setSampleMylistsForReference(Set<SampleMylist> sampleMylistsForReference) {
        this.sampleMylistsForReference = sampleMylistsForReference;
    }

    /**
     * @return the sampleMylistsForHeading
     */
    public Set<SampleMylist> getSampleMylistsForHeading() {
        return sampleMylistsForHeading;
    }

    /**
     * @param sampleMylistsForHeading the sampleMylistsForHeading to set
     */
    public void setSampleMylistsForHeading(Set<SampleMylist> sampleMylistsForHeading) {
        this.sampleMylistsForHeading = sampleMylistsForHeading;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the createdDate
     */
    public Date getCreatedDate() {
        return createdDate;
    }

    /**
     * @param createdDate the createdDate to set
     */
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    
}
