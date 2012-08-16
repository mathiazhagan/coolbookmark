/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

/**
 *
 * @author D.Mathiazhagan
 */
public class removeall extends ActionSupport {
    
   
    private spDAO myDao;
     private Map session;
     
     
       @Override
    public String execute() throws Exception {
        try {
             session = ActionContext.getContext().getSession();
             session.remove("my_list");
                          
             } catch (Exception e) {
            e.printStackTrace();
               
                return "error";
            

        }

        return "success";

    }

}
