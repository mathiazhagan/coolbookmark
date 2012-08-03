/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagehandling;

import com.controller.spDAO;
import com.model.Imagesfile;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/**
 *
 * @author Naren
 */
public class imageretrieve2 extends ActionSupport {

    private spDAO myDao;
    //  private long id=6667;
    private long referenceId;
   
    private InputStream shimg2;
    

    @Override
    public String execute() throws Exception {

        try {
            System.out.println("--------referenceid==" + getReferenceId());
//            String s = referenceId.substring(1, referenceId.length() - 1);
//            long id = Integer.parseInt(s);
//            System.out.println("-------hello"+id);

            Imagesfile pimg = (Imagesfile) getMyDao().getDbsession().get(Imagesfile.class, getReferenceId());
          
            byte[] retadd2 = pimg.getImg2();
         
            shimg2 = new ByteArrayInputStream(retadd2);
           
           
    return "success";

        } catch (Exception e) {
            e.printStackTrace();

            return "error";

        }
    

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
     * @return the shimg2
     */
    public InputStream getShimg2() {
        return shimg2;
    }

    /**
     * @param shimg2 the shimg2 to set
     */
    public void setShimg2(InputStream shimg2) {
        this.shimg2 = shimg2;
    }

    /**
  
    /**
     * @return the referenceId
     */
    public long getReferenceId() {
        return referenceId;
    }

    /**
     * @param referenceId the referenceId to set
     */
    public void setReferenceId(long referenceId) {
        this.referenceId = referenceId;
    }
}
