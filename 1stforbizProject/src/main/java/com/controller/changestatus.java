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
public class changestatus extends ActionSupport implements SessionAware {

    private String referenceId;
    private String status;
    private Map session;
    private spDAO myDao;
    private List<Sell> list;

    @Override
    public String execute() {
        try {
            //based on referenceId provided,changing status of the product
            System.out.println("----status==" + getStatus());
            System.out.println("----ID==" + getReferenceId());

            String s = referenceId.substring(1, referenceId.length() - 1);
            long j = Integer.parseInt(s);
            Sell l1 = (Sell) myDao.getDbsession().get(Sell.class, j);
            if ("Inactive".equals(status)) {
                l1.setStatus("Active");
                myDao.getDbsession().update(l1);
                System.out.println("------------Status updated to Active");
            } else {
                l1.setStatus("Inactive");
                myDao.getDbsession().save(l1);
                System.out.println("------------Status updated to Inactive");
            }

            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            System.out.println("----------------you are in---");
            crit.addOrder(Order.desc("createdDate"));
            crit.setMaxResults(20);
            list = (List<Sell>) crit.list();


        } catch (Exception e) {
            e.printStackTrace();

            return "error";
        }
        return "success";
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
