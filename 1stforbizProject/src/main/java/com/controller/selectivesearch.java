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

/**
 *
 * @author Naren
 */
public class selectivesearch extends ActionSupport {

    private spDAO myDao;
    private Long price;
    private String category;
    private String region;
    private String word;
    private List<Sell> sresult;
     private List<Sell> sresult1;

    @Override
    public String execute() throws Exception {
        try {
            System.out.println("-----------" + getPrice());
            System.out.println("-----------" + category);
            System.out.println("-----------" + region);
            System.out.println("-----------" + word);
            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            //crit.add(Restrictions.lt("BSalePrice", getPrice()));
            crit.add(Restrictions.like("BAdverHeading","%"+word+"%" ));
            crit.add(Restrictions.like("BTown", "%" + region + "%"));
           // crit.add(Restrictions.like("BCategory", category));
            //crit.setMaxResults(3);
            sresult = (List<Sell>) crit.list();
            System.out.println("=---------" + sresult.size());
          
            if (sresult.isEmpty()) {
                Criteria crit1 = getMyDao().getDbsession().createCriteria(Sell.class);
                
                 crit.add(Restrictions.like("BTown", "%" + region + "%"));
                 crit.add(Restrictions.sqlRestriction("1=1 order by rand()"));
               // crit.add(Restrictions.eq("BCategory", category));
                //crit.add(Restrictions.like("BAdverHeading", "%" + word + "%"));
                crit1.setMaxResults(3);
                sresult1 = (List<Sell>) crit1.list();
                System.out.println("=---------" + sresult1.size());
            }



        } catch (Exception e) {
            e.printStackTrace();
            return "error";

        }
        return "success";

    }
    
    
//    
//    @Override
//    public void validate() {
//        try {
//            
//            if(price==null || price==0){
//                addFieldError("price","please enter price");
//            }
//            if(word==null || word.isEmpty()){
//                addFieldError("word","please enter search word");
//           
//            }
//            
//            
//            } catch (Exception e) {
//            e.printStackTrace();
//            addActionError("username Is Wrong");
//             
//        }
//       
//    }
    
    

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
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the region
     */
    public String getRegion() {
        return region;
    }

    /**
     * @param region the region to set
     */
    public void setRegion(String region) {
        this.region = region;
    }

    /**
     * @return the word
     */
    public String getWord() {
        return word;
    }

    /**
     * @param word the word to set
     */
    public void setWord(String word) {
        this.word = word;
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
     * @return the price
     */
    public Long getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(Long price) {
        this.price = price;
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
