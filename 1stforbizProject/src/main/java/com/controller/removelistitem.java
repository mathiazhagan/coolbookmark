/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author D.Mathiazhagan
 */
public class removelistitem extends ActionSupport {
    
    private String referenceId;
    private spDAO myDao;
     private Map session;
    
         
    @Override
    public String execute() throws Exception {
        try {
             session = ActionContext.getContext().getSession();
            
            ArrayList<String> my_list = (ArrayList<String>) session.get("my_list");
            System.out.println("-----"+my_list.size());
            my_list.remove(referenceId);
            System.out.println("-----"+my_list.size());
            
            
            
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
        
    
}
