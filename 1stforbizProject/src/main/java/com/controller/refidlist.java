/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Adminlog;
import com.model.Sell;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Criteria;

/**
 *
 * @author Administrator
 */
public class refidlist extends ActionSupport {

    private spDAO myDao;
    private Map session;
    private List<Sell> list;
 private Map<String, String> databases = new HashMap<String, String>();
    public refidlist() {
    }

    @Override
    public String execute() throws Exception {
            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            //crit.setMaxResults(100);
            list = (List<Sell>) crit.list();
       for(int i=0;i<list.size();i++){
       databases.put(list.get(i).getReferenceId(), list.get(i).getReferenceId());
       
       }
            
            return SUCCESS;
       
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
     * @return the databases
     */
    public Map<String, String> getDatabases() {
        return databases;
    }

    /**
     * @param databases the databases to set
     */
    public void setDatabases(Map<String, String> databases) {
        this.databases = databases;
    }
}
