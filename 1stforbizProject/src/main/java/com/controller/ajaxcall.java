/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Naren
 */
public class ajaxcall extends ActionSupport {

    private spDAO myDao;
    private Map session;
    private List<Sell> sresult;
    private List<Sell> sresult1;

    @Override
    public String execute() throws Exception {
        try {
            setSession(ActionContext.getContext().getSession());


            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            crit.add(Restrictions.eq("status", "Active"));
            //crit.addOrder(Order.desc("createdDate"));
            crit.add(Restrictions.sqlRestriction("1=1 order by rand()"));
            crit.setMaxResults(8);
            // generator.nextInt(sresult.size());
            //sresult1=getSresult().subList(1,4);
            sresult1 = (List<Sell>) crit.list();

        } catch (Exception e) {
            e.printStackTrace();
            return "error1";

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
     * @return the sresult
     */
    public List<Sell> getSresult() {
        return sresult;
    }

    /**
     * @param sresult the sresult to set
     */
    public void setSresult(List<Sell> sresult) {
        this.sresult = sresult;
    }

    /**
     * @return the sresult1
     */
    public List<Sell> getSresult1() {
        return sresult1;
    }

    /**
     * @param sresult1 the sresult1 to set
     */
    public void setSresult1(List<Sell> sresult1) {
        this.sresult1 = sresult1;
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
