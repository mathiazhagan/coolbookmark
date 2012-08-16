/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Imagesfile;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/**
 *
 * @author D.Mathiazhagan
 */
public class imageretrieve extends ActionSupport {

    private spDAO myDao;
    //  private long id=6667;
    private long referenceId;
    private InputStream shimg1;
    private InputStream shimg2;
    private InputStream shimg3;
    private InputStream shimg4;
    private InputStream shimg5;

    @Override
    public String execute() throws Exception {

        try {
            System.out.println("--------referenceid==" + getReferenceId());
//            String s = referenceId.substring(1, referenceId.length() - 1);
//            long id = Integer.parseInt(s);
//            System.out.println("-------hello"+id);

            Imagesfile pimg = (Imagesfile) getMyDao().getDbsession().get(Imagesfile.class, getReferenceId());
            byte[] retadd1 = pimg.getImg1();
            byte[] retadd2 = pimg.getImg2();
            byte[] retadd3 = pimg.getImg3();
            byte[] retadd4 = pimg.getImg4();
            byte[] retadd5 = pimg.getImg5();
            shimg1 = new ByteArrayInputStream(retadd1);
            shimg2 = new ByteArrayInputStream(retadd2);
            shimg3 = new ByteArrayInputStream(retadd3);
            shimg4 = new ByteArrayInputStream(retadd4);
            shimg5 = new ByteArrayInputStream(retadd5);
            System.out.println("-------" + shimg1);
            System.out.println("-------" + shimg2);
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
     * @return the shimg1
     */
    public InputStream getShimg1() {
        return shimg1;
    }

    /**
     * @param shimg1 the shimg1 to set
     */
    public void setShimg1(InputStream shimg1) {
        this.shimg1 = shimg1;
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
     * @return the shimg4
     */
    public InputStream getShimg4() {
        return shimg4;
    }

    /**
     * @param shimg4 the shimg4 to set
     */
    public void setShimg4(InputStream shimg4) {
        this.shimg4 = shimg4;
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
