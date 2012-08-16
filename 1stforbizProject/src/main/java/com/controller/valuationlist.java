/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.BusinessValuation;
import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;

/**
 *
 * @author D.Mathiazhagan
 */
public class valuationlist extends ActionSupport implements SessionAware{
    
    
    private Map session;
    private spDAO myDao;
    private List<BusinessValuation> list;
    
     @Override
    public String execute() {
        try {
            
            Criteria crit=myDao.getDbsession().createCriteria(BusinessValuation.class);
            crit.addOrder(Order.desc("createddate"));
            crit.setMaxResults(50);
            setList((List<BusinessValuation>)crit.list());
            
            
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
     * @return the list
     */
    public List<BusinessValuation> getList() {
        return list;
    }

    /**
     * @param list the list to set
     */
    public void setList(List<BusinessValuation> list) {
        this.list = list;
    }

   
        }
    
    

