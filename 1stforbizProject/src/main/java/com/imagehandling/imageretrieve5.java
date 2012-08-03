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
public class imageretrieve5 extends ActionSupport {

    private spDAO myDao;
    //  private long id=6667;
    private long referenceId;
    private InputStream shimg5;

    @Override
    public String execute() throws Exception {

        try {
            System.out.println("--------referenceid==" + getReferenceId());
//            String s = referenceId.substring(1, referenceId.length() - 1);
//            long id = Integer.parseInt(s);
//            System.out.println("-------hello"+id);

            Imagesfile pimg = (Imagesfile) getMyDao().getDbsession().get(Imagesfile.class, getReferenceId());

            byte[] retadd5 = pimg.getImg5();

            shimg5 = new ByteArrayInputStream(retadd5);

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
     * @return the shimg5
     */
    public InputStream getShimg5() {
        return shimg5;
    }

    /**
     * @param shimg5 the shimg5 to set
     */
    public void setShimg5(InputStream shimg5) {
        this.shimg5 = shimg5;
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
