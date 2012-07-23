/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

public class similarsearch extends ActionSupport {

    private spDAO myDao;
    private String Category;
    private List<Sell> sresult;
    private List<Sell> sresult1;

    @Override
    public String execute() throws Exception {
        try {
            System.out.println("-----------hello----" + Category);
            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            System.out.println("----------helllllo----" + crit.list().size());
            crit.add(Restrictions.like("BCategory", Category));
            crit.setMaxResults(3);
            sresult=(List<Sell>) crit.list();
            
            if(sresult.isEmpty()){
                 Criteria crit1= getMyDao().getDbsession().createCriteria(Sell.class);
                 crit1.setMaxResults(3);
                 sresult1=(List<Sell>) crit1.list();
                
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
     * @return the Category
     */
    public String getCategory() {
        return Category;
    }

    /**
     * @param Category the Category to set
     */
    public void setCategory(String Category) {
        this.Category = Category;
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