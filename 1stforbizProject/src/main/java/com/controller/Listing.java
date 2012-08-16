/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Imagesfile;
import com.model.SampleMylist;
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
public class Listing extends ActionSupport {

    private spDAO myDao;
    private List<Sell> list1;
    private List<Sell> list2;
    private String BTitle;
    private String BFirstName;
    private String BSurname;
    private String BComapnyName;
    private Long BTelephone;
    private String BEmail;
    private String BBusinessType;
    private String BTradingHours;
    private String BBusinessDesc;
    private Long BSalePrice;
    private Long referenceNo;
    private String BAdverHeading;
    private String BCategory;
    private String referenceId;
    private String status;
    private String PHouseNo;
    private String PRoadName;
    private String PTown;
    private String PCountry;
    private String PPostalCode;
    private Imagesfile img;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public String execute() throws Exception {
        try {
            //inserting data into database table Sell


            Sell sell = new Sell();
            sell.setBTitle(getBTitle());
            sell.setBFirstName(getBFirstName());
            sell.setBSurname(getBSurname());
            sell.setBComapnyName(getBComapnyName());
            sell.setBEmail(getBEmail());
            sell.setBTelephone(BTelephone);
            sell.setBBusinessType(getBBusinessType());
            sell.setBTradingHours(getBTradingHours());
            sell.setBBusinessDesc(getBBusinessDesc());
            sell.setBSalePrice(getBSalePrice());
            sell.setBAdverHeading(getBAdverHeading());
            sell.setBCategory(getBCategory());
            sell.setReferenceId(BCategory + BSalePrice);
            sell.setCreatedDate(new Date());
            sell.setStatus("Inactive");
            sell.setPCountry(PCountry);
            sell.setPHouseNo(PHouseNo);
            sell.setPPostalCode(getPPostalCode());
            sell.setPTown(PTown);
            sell.setPRoadName(PRoadName);
            getMyDao().getDbsession().save(sell);
            //generating list using Sell table data
            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            crit.add(Restrictions.eq("referenceId", BCategory + BSalePrice));
            crit.setMaxResults(1);
            Sell refsel = (Sell) (crit.list().get(0));
            Long z = refsel.getReferenceNo();


            // long z=Integer.parseInt(referenceNo);
            System.out.println("--------z==" + z);
            Sell sell1 = (Sell) getMyDao().getDbsession().get(Sell.class, z);
            //generating referenceId using referencingNo
            //Appending category and 'J' to referenceNo and updating
            Long a = sell1.getReferenceNo();
            System.out.println("---------a==" + a);
            String b = sell1.getBCategory();
            System.out.println("----------b==" + b);
            String c = b + a + 'J';
            System.out.println("--------c==" + c);

            sell1.setReferenceId(c);
            getMyDao().getDbsession().update(sell1);
            //generating sell list with restrictions
            Criteria crit1 = getMyDao().getDbsession().createCriteria(Sell.class);
            crit1.add(Restrictions.eq("referenceId", c));
            setList2((List<Sell>) crit.list());

            //saving list data into SampleMylist table
            SampleMylist sm = new SampleMylist(c, getBAdverHeading());
            getMyDao().getDbsession().save(sm);
            System.out.println("-----------sample mylist data saved-------");
            referenceNo = z;
            referenceId = c;
            img = new Imagesfile();
            img.setId(a);
            myDao.getDbsession().save(img);
             setSubject("Response From 1stforbiz.com");
            setContent("Thank you for your Interest.<br/>Your Business Successfully uploaded in our website.<br/>Please use this Reference id '"+c
                    +"' to view your business at any time in our website<br/>"
                    + "Thanks and Regards<br/>"
                    + "1stforbiz.com");

            getSendMail().test(BEmail, getSubject(), getContent());

            System.out.println("---------mail sended");
            
            addActionMessage("Your Business details successfully saved.Please Upload Images to finish");
            return "success";

        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Server Error Please Recheck all values or Try again later");
            return "error";

        }


    }

    @Override
    public void validate() {
        try {
            if (getBFirstName().isEmpty() || getBFirstName() == null) {
                addActionError("Please Recheck all the fields and submit again");
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
     * @return the BEmail
     */
    public String getBEmail() {
        return BEmail;
    }

    /**
     * @param BEmail the BEmail to set
     */
    public void setBEmail(String BEmail) {
        this.BEmail = BEmail;
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
     * @return the referenceNo
     */
    public Long getReferenceNo() {
        return referenceNo;
    }

    /**
     * @param referenceNo the referenceNo to set
     */
    public void setReferenceNo(Long referenceNo) {
        this.referenceNo = referenceNo;
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
    public String getPPostalCode() {
        return PPostalCode;
    }

    /**
     * @param PPostalCode the PPostalCode to set
     */
    public void setPPostalCode(String PPostalCode) {
        this.PPostalCode = PPostalCode;
    }

    /**
     * @return the img
     */
    public Imagesfile getImg() {
        return img;
    }

    /**
     * @param img the img to set
     */
    public void setImg(Imagesfile img) {
        this.img = img;
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
