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
 * @author D.Mathiazhagan
 */
public class imageretrieve3 extends ActionSupport {

    private spDAO myDao;
    //  private long id=6667;
    private long referenceId;
    
    private InputStream shimg3;
    

    @Override
    public String execute() throws Exception {

        try {
            System.out.println("--------referenceid==" + getReferenceId());
//            String s = referenceId.substring(1, referenceId.length() - 1);
//            long id = Integer.parseInt(s);
//            System.out.println("-------hello"+id);

            Imagesfile pimg = (Imagesfile) getMyDao().getDbsession().get(Imagesfile.class, getReferenceId());

            byte[] retadd3 = pimg.getImg3();

            shimg3 = new ByteArrayInputStream(retadd3);

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
     * @return the shimg3
     */
    public InputStream getShimg3() {
        return shimg3;
    }

    /**
     * @param shimg3 the shimg3 to set
     */
    public void setShimg3(InputStream shimg3) {
        this.shimg3 = shimg3;
    }

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
