/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author D.Mathiazhagan
 */
public class updatedatabase extends ActionSupport{
    
     private spDAO myDao;
     private String referenceId;
     private List<Sell> list;
     private Sell sell;
     
      @Override
    public void validate() {


        if (referenceId.isEmpty()) {

            addActionError("Please Enter or Select ReferenceID ");
        }
      
    }
     
     @Override
    public String execute() throws Exception {
        try {
            
            Criteria crit=getMyDao().getDbsession().createCriteria(Sell.class);
            crit.add(Restrictions.eq("referenceId", getReferenceId()));
            list=(List<Sell>)crit.list();
            sell=(Sell)crit.list().get(0);
            System.out.println("----------"+list.size());
            
            
        } catch (Exception e) {
            e.printStackTrace();
            return "error1";

        }
        return "success";

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
     * @return the list
     */
    public List<Sell> getList() {
        return list;
    }

    /**
     * @param list the list to set
     */
    public void setList(List<Sell> list) {
        this.list = list;
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
    

