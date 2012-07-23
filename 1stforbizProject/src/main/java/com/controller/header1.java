/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Naren
 */
public class header1 extends ActionSupport {
    
   
    private spDAO myDao;
    
    
    
       
    public String test(String referenceId) throws Exception {
            
             try {
                 
                 String d=referenceId.substring(1, referenceId.length()-1);
                 
                 Sell s=(Sell)myDao.getDbsession().get(Sell.class, d);
                 String h=s.getBAdverHeading();
                 System.out.println("--------"+h);    
                 return h;
             
                 
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

             }
       
    
    

