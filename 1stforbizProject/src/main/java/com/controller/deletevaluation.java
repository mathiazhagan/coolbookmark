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
 * @author Naren
 */
public class deletevaluation extends ActionSupport implements SessionAware {
    
    private Long bvId;
    private spDAO myDao;
    private List<BusinessValuation> list;
    private Map session;
    
    @Override
    public String execute() throws Exception {
        try {
            
            BusinessValuation s = (BusinessValuation) getMyDao().getDbsession().get(BusinessValuation.class, getBvId());
            getMyDao().getDbsession().delete(s);
            
            addActionMessage("One Request Successfully Deleted");
            System.out.println("-------row successfully deleted------");
            Criteria crit = myDao.getDbsession().createCriteria(BusinessValuation.class);
            crit.addOrder(Order.desc("createddate"));
            crit.setMaxResults(50);
            setList((List<BusinessValuation>) crit.list());
            
            
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
            
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
     * @return the bvId
     */
    public Long getBvId() {
        return bvId;
    }

    /**
     * @param bvId the bvId to set
     */
    public void setBvId(Long bvId) {
        this.bvId = bvId;
    }
}
