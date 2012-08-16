/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;

/**
 *
 * @author D.Mathiazhagan
 */
public class mainpage extends ActionSupport {

    private spDAO myDao;
    private List<Sell> sresult;
    private List<Sell> sresult1;

    @Override
    public String execute() throws Exception {
        try {
            System.out.println("============you are here");
            Criteria crit = myDao.getDbsession().createCriteria(Sell.class);
            crit.addOrder(Order.desc("createdDate"));
            sresult = (List<Sell>) crit.list();
            setSresult1(sresult.subList(1, 4));

            List<String> Mylist = new ArrayList<String>();
            Mylist = crit.list();
            System.out.println("------------" + Mylist);

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
}
