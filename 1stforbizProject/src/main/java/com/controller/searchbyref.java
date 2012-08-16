/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;


import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author D.Mathiazhagan
 */
public class searchbyref extends ActionSupport{
    
     private spDAO myDao;
     private String referenceId;
     private List<Sell> sresult;
     private List<Sell> sresult1;
    @Override
    public String execute() throws Exception {
        try {
            //generating search list  based on referenceId
            System.out.println("-----------"+referenceId);
            Criteria crit=myDao.getDbsession().createCriteria(Sell.class);
         //   System.out.println("----------"+crit.list().size());
            crit.add(Restrictions.eq("referenceId", referenceId));
          
            sresult=(List<Sell>)crit.list();
            
            if(sresult.isEmpty())
            {
                //if the above search list is empty allowing to populate the following list data with error message and size limited to 3. 
                Criteria crit1=myDao.getDbsession().createCriteria(Sell.class);
                crit1.setMaxResults(3);
                sresult1=(List<Sell>)crit1.list();
               addActionError("No ReferenceId or Wrong type of ReferenceId Found");
                
            }
            
            
//            System.out.println("--------"+sresult.get(0).getBCategory());
//            System.out.println("----------"+sresult.get(0).getBSalePrice());
//            System.out.println("----------"+sresult.get(0).getReferenceId());
//            System.out.println("----------"+sresult.get(0).getBPropDesc());
//                    
                        
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
