/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

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
public class Immediate_sell_list extends ActionSupport implements SessionAware {

    private Map session;
    private spDAO myDao;
    private List<Sell> list;

    @Override
    public String execute() {
        try {
            //generating list of data to display in table(Immediate_sell_list) in desc order based on date/time
            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            System.out.println("----------------you are in---");
            crit.addOrder(Order.desc("createdDate"));
            crit.setMaxResults(20);
            list = (List<Sell>) crit.list();
            System.out.println("---------------list is created....");

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
    public List<Sell> getList() {
        return list;
    }

    /**
     * @param list the list to set
     */
    public void setList(List<Sell> list) {
        this.list = list;
    }
}
