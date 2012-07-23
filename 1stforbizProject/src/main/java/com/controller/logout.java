/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Naren
 */
public class logout extends ActionSupport implements SessionAware {

    private Map session;

    @Override
    public String execute() throws Exception {


        getSession().put("User", null);
        getSession().clear();
        addActionMessage("Successfully Logged Out");
        return "success";
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