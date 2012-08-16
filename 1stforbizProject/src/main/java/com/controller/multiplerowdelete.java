/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author D.Mathiazhagan
 */
public class multiplerowdelete extends ActionSupport implements SessionAware {

    private List<String> newArray = new ArrayList<String>();
    private String[] check;
    private spDAO myDao;
    private List<Sell> list;
    private Map session;

    @Override
    public String execute() throws Exception {
        try {
            System.out.println("----u r in"+check.length);
            for (int i = 0; i < check.length; i++) {
                newArray.add(check[i]);

            }
             System.out.println("-------"+newArray.size());
            for (int j = 0; j < newArray.size(); j++) {
                System.out.println("------" + newArray.get(j));
                String referenceId = newArray.get(j);
                System.out.println("-------referenceId=="+referenceId);
                String d = referenceId.substring(1,5);
                long i = Integer.parseInt(d);
                System.out.println("--===="+i);
                Sell s = (Sell) myDao.getDbsession().get(Sell.class, i);
                myDao.getDbsession().delete(s);

                System.out.println("-------row successfully deleted------");

            }




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
     * @return the newArray
     */
    public List<String> getNewArray() {
        return newArray;
    }

    /**
     * @param newArray the newArray to set
     */
    public void setNewArray(List<String> newArray) {
        this.newArray = newArray;
    }

    /**
     * @return the check
     */
    public String[] getCheck() {
        return check;
    }

    /**
     * @param check the check to set
     */
    public void setCheck(String[] check) {
        this.check = check;
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
