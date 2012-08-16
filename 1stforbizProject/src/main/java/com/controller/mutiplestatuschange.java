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
public class mutiplestatuschange extends ActionSupport implements SessionAware {

    private List<String> newArray = new ArrayList<String>();
    private String[] check;
    private Map session;
    private spDAO myDao;
    private List<Sell> list;

    @Override
    public String execute() {
        try {

            //getting values from checkbox"checked list" and storing in String[] Array 
            System.out.println("----u r in" + check.length);
            for (int i = 0; i < check.length; i++) {
                newArray.add(check[i]);
            }
            //String array converted into list 
            //substring(referenceId.substring(1,referenceId.length-1))is not working so used .substring(1,5) 
            System.out.println("-------" + newArray.size());
            for (int j = 0; j < newArray.size(); j++) {
                System.out.println("------" + newArray.get(j));
                String referenceId = newArray.get(j);
                System.out.println("-------referenceId==" + referenceId);
                String d = referenceId.substring(1,5);
                long i = Integer.parseInt(d);
                System.out.println("--====" + i);
                Sell l1 = (Sell) myDao.getDbsession().get(Sell.class, i);
                //setting status if it is active--->changed to Inactive  or if status is Inactive--->changed to Active
                if (l1.getStatus().equals("Inactive")) {
                    l1.setStatus("Active");
                    myDao.getDbsession().update(l1);
                    System.out.println("------------Status updated to Active");
                } else {
                    l1.setStatus("Inactive");
                    myDao.getDbsession().save(l1);
                    System.out.println("------------Status updated to Inactive");
                }

            }


        } catch (Exception e) {
            e.printStackTrace();

            return "error";
        }
        return "success";
    }

//    /**
//     * @return the referenceId
//     */
//    public String getReferenceId() {
//        return referenceId;
//    }
//
//    /**
//     * @param referenceId the referenceId to set
//     */
//    public void setReferenceId(String referenceId) {
//        this.referenceId = referenceId;
//    }
//    /**
//     * @return the status
//     */
//    public String getStatus() {
//        return status;
//    }
//
//    /**
//     * @param status the status to set
//     */
//    public void setStatus(String status) {
//        this.status = status;
//    }
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
}
