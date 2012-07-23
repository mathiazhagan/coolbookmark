/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Naren
 */
public class update extends ActionSupport implements SessionAware {

    private Map session;
    private spDAO myDao;
    private Long referenceNo;
    private String referenceId;
    private String newheading;
    private Long newprice;
    private Sell sell;

    @Override
    public void validate() {


        if (referenceId.isEmpty()) {

            addActionError("Please Enter New ReferenceID value");
        }
        if (newheading.isEmpty()) {

            addActionError("Please Enter New Heading value");
        }
        if (newprice == null) {

            addActionError("Please Enter New Price value");
        }
    }

    @Override
    public String execute() throws Exception {
        System.out.println("you are in....!");
        try {

            Sell s = (Sell) myDao.getDbsession().get(Sell.class, getReferenceNo());
            s.setBAdverHeading(newheading);
            s.setBSalePrice(getNewprice());
            myDao.getDbsession().update(s);
            System.out.println("------------data updated");
            addActionMessage("Your Property Successfully Updated ");

            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            crit.add(Restrictions.eq("referenceNo",referenceNo));
            setSell((Sell) crit.list().get(0));

        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Server Error Please Try Again Later");
            return "error";

        }
        return "success";

    }

    /**
     * @return the session
     */
    public Map getSession() {
        return session;
    }

    /**
     * @param session the session to set
     */
    public void setSession(Map session) {
        this.session = session;
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
     * @return the newheading
     */
    public String getNewheading() {
        return newheading;
    }

    /**
     * @param newheading the newheading to set
     */
    public void setNewheading(String newheading) {
        this.newheading = newheading;
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
     * @return the newprice
     */
    public Long getNewprice() {
        return newprice;
    }

    /**
     * @param newprice the newprice to set
     */
    public void setNewprice(Long newprice) {
        this.newprice = newprice;
    }

    /**
     * @return the sell
     */
    public Sell getSell() {
        return sell;
    }

    /**
     * @param sell the sell to set
     */
    public void setSell(Sell sell) {
        this.sell = sell;
    }
}
