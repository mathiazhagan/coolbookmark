/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Mylists;
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
public class mylist_request_list extends ActionSupport implements SessionAware {
    
    
    private Map session;
    private spDAO myDao;
    private List<Mylists> list;
    
    
     @Override
    public String execute() {
        try {
            
            Criteria crit=getMyDao().getDbsession().createCriteria(Mylists.class);
            crit.addOrder(Order.desc("LId"));
            crit.setMaxResults(20);
            setList((List<Mylists>)crit.list());
            
            
             } catch (Exception e) {
            e.printStackTrace();
            
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
    public List<Mylists> getList() {
        return list;
    }

    /**
     * @param list the list to set
     */
    public void setList(List<Mylists> list) {
        this.list = list;
    }
    
}
