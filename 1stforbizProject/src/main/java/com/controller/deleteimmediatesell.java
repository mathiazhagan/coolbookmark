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
 * @author Naren
 */
public class deleteimmediatesell extends ActionSupport implements SessionAware {

    private String referenceId;
    private spDAO myDao;
    private List<Sell> list;
    private Map session;

    @Override
    public String execute() throws Exception {
        try {
            //Deleting selected row based on referenceId 
            System.out.println("------referenceId::" + referenceId);
            String d = getReferenceId().substring(1, getReferenceId().length() - 1);
            long i = Integer.parseInt(d);
            Sell s = (Sell) myDao.getDbsession().get(Sell.class, i);
            myDao.getDbsession().delete(s);

            System.out.println("-------row successfully deleted------");
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
}
