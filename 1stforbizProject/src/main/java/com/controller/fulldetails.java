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
public class fulldetails extends ActionSupport {

    private spDAO myDao;
    private String referenceId;
    private List<Sell> sresult;
   

    @Override
    public String execute() throws Exception {
        try {
            System.out.println("==reference id is:----"+referenceId);
            Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
            crit.add(Restrictions.like("referenceId", referenceId));
            sresult = (List<Sell>) crit.list();

//            List<File> results = new ArrayList<File>();
//            File[] files = new File("C:/Documents and Settings/Naren/My Documents/NetBeansProjects/1stforbizProject/src/main/webapp/MyFolder/").listFiles();

//            File folder = new File("C:/Documents and Settings/Naren/My Documents/NetBeansProjects/1stforbizProject/src/main/webapp/MyFolder/" + referenceId);
//            File[] listOfFiles = folder.listFiles();
//            List<String> l1 = new ArrayList<String>();
//
//            for (int i = 0; i < listOfFiles.length; i++) {
//                if (listOfFiles[i].isFile()) {
//                    l1.add(listOfFiles[i].getName());
//                    System.out.println("File " + listOfFiles[i].getName());
//                } else if (listOfFiles[i].isDirectory()) {
//                    System.out.println("Directory " + listOfFiles[i].getName());
//                }
//            }

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
}
