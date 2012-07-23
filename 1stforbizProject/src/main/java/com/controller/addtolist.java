/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Naren
 */
public class addtolist extends ActionSupport {

    private spDAO myDao;
    private Map session;
    private String referenceId;
    private List<Sell> list = new ArrayList();

    @Override
    public String execute() throws Exception {
        try {
            session = ActionContext.getContext().getSession();

            //generating list using 
            ArrayList<String> my_list = (ArrayList<String>) session.get("my_list");
            if (my_list == null || my_list.isEmpty()) {
                my_list = new ArrayList<String>();

                my_list.add(referenceId);
                session.put("my_list", my_list);
            } else {
                if (!my_list.contains(referenceId)) {
                    my_list.add(referenceId);
                    session.put("my_list", my_list);
                }
            }



            System.out.println("---------" + session.get("my_list"));


        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());
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
}
