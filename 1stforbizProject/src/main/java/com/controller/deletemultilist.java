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
public class deletemultilist extends ActionSupport implements SessionAware {

    private Long LId;
    private spDAO myDao;
    private List<Mylists> list;
    private Map session;

    @Override
    public String execute() throws Exception {
        try {

            Mylists s = (Mylists) getMyDao().getDbsession().get(Mylists.class, getLId());
            getMyDao().getDbsession().delete(s);
            addActionMessage("One Sell  Request Successfully removed");

            System.out.println("-------row successfully deleted------");
            Criteria crit = getMyDao().getDbsession().createCriteria(Mylists.class);
            crit.addOrder(Order.desc("LId"));
            crit.setMaxResults(20);
            setList((List<Mylists>) crit.list());
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";

        }


    }

    /**
     * @return the LId
     */
    public Long getLId() {
        return LId;
    }

    /**
     * @param LId the LId to set
     */
    public void setLId(Long LId) {
        this.LId = LId;
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
