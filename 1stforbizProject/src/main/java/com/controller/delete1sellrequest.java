/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.RequestinfoTable;
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
public class delete1sellrequest extends ActionSupport implements SessionAware {

    private Long RId;
    private spDAO myDao;
    private List<RequestinfoTable> list;
    private Map session;

    @Override
    public String execute() throws Exception {
        try {

//             String d=getReferenceId().substring(1, getReferenceId().length()-1);
//            long i=Integer.parseInt(d);

            RequestinfoTable s = (RequestinfoTable) getMyDao().getDbsession().get(RequestinfoTable.class, getRId());
            getMyDao().getDbsession().delete(s);


            System.out.println("-------row successfully deleted------");
            Criteria crit = getMyDao().getDbsession().createCriteria(RequestinfoTable.class);
            crit.addOrder(Order.desc("RDate"));
            crit.setMaxResults(20);
            setList((List<RequestinfoTable>) crit.list());
 return "success";

        } catch (Exception e) {
            e.printStackTrace();
            return "error";

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
     * @return the list
     */
    public List<RequestinfoTable> getList() {
        return list;
    }

    /**
     * @param list the list to set
     */
    public void setList(List<RequestinfoTable> list) {
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
     * @return the RId
     */
    public Long getRId() {
        return RId;
    }

    /**
     * @param RId the RId to set
     */
    public void setRId(Long RId) {
        this.RId = RId;
    }
}
