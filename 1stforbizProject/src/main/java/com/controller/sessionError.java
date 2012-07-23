/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.opensymphony.xwork2.ActionSupport;
import javax.ws.rs.core.Response;

/**
 *
 * @author Administrator
 */
public class sessionError extends ActionSupport {
    
    public sessionError()
    {}
    
    @Override
    public String execute() throws Exception {
        
       addActionError("Your Session Expired Please Login to access the content requested");
       return "success";
    }

  

}
