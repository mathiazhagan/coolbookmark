/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Imagesfile;
import com.model.Sell;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author D.Mathiazhagan
 */
public class update extends ActionSupport implements SessionAware {

    private Map session;
    private spDAO myDao;
    private Long referenceNo;
    private String referenceId;
    private String newheading;
    private Long newprice;
    private Sell sell;
    private File userImage1;
    private File userImage2;
    private File userImage3;
    private File userImage4;
    private File userImage5;
    private Imagesfile img;
    private List<Imagesfile> getlist;

    @Override
    public void validate() {


        if (referenceId.isEmpty()) {

            addActionError("Please Enter New ReferenceID value");
        }
        if (newheading.isEmpty()) {

            addActionError("Please Enter New Heading value");
        }
        if (newprice == null) {

            addActionError("Please Enter New Price value");
        }
    }

    @Override
    public String execute() throws Exception {
        System.out.println("you are in....!");
        try {
            if (userImage1 == null && userImage2 == null && userImage3 == null && userImage4 == null && userImage5 == null) {
                Sell s = (Sell) myDao.getDbsession().get(Sell.class, getReferenceNo());
                s.setBAdverHeading(newheading);
                s.setBSalePrice(getNewprice());
                myDao.getDbsession().update(s);
                System.out.println("-------No Image---data updated");
                addActionMessage("Your Property Successfully Updated ");
                Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
                crit.add(Restrictions.eq("referenceNo", referenceNo));
                setSell((Sell) crit.list().get(0));
            } else {
//                Criteria crit1 = getMyDao().getDbsession().createCriteria(Imagesfile.class);
//                crit1.add(Restrictions.eq("id", referenceNo));
//                getlist = crit1.list();
                Sell s = (Sell) myDao.getDbsession().get(Sell.class, getReferenceNo());
                s.setBAdverHeading(newheading);
                s.setBSalePrice(getNewprice());
                myDao.getDbsession().update(s);

                img = (Imagesfile)myDao.getDbsession().get(Imagesfile.class, getReferenceNo());
                if (userImage1 != null) {
                    FileInputStream fileInputStream = new FileInputStream(userImage1);

                    byte[] aFile = new byte[(int) userImage1.length()];
                    System.out.println("----" + aFile);
                    System.out.println("-------" + fileInputStream);
                    //convert file into array of bytes
                    fileInputStream.read(aFile);

                    img.setImg1(aFile);

                    fileInputStream.close();
                }
                if (userImage2 != null) {
                    FileInputStream fileInputStream1 = new FileInputStream(userImage2);
                    byte[] bFile = new byte[(int) userImage2.length()];
                    fileInputStream1.read(bFile);

                    img.setImg2(bFile);

                    fileInputStream1.close();
                }
                if (userImage3 != null) {
                    FileInputStream fileInputStream2 = new FileInputStream(userImage3);
                    byte[] cFile = new byte[(int) userImage3.length()];
                    fileInputStream2.read(cFile);

                    img.setImg3(cFile);

                    fileInputStream2.close();
                }
                if (userImage4 != null) {
                    FileInputStream fileInputStream3 = new FileInputStream(userImage4);
                    byte[] dFile = new byte[(int) userImage4.length()];
                    fileInputStream3.read(dFile);

                    img.setImg4(dFile);

                    fileInputStream3.close();
                }
                if (userImage5 != null) {
                    FileInputStream fileInputStream4 = new FileInputStream(userImage5);
                    byte[] eFile = new byte[(int) userImage5.length()];
                    fileInputStream4.read(eFile);

                    img.setImg5(eFile);

                    fileInputStream4.close();
                }
//                if (getlist!= null) {
//                    img.setId(referenceNo);
//                    getMyDao().getDbsession().update(img);
//                } else {
                    img.setId(referenceNo);
                    getMyDao().getDbsession().update(img);
                
                System.out.println("------Image------data updated");
                addActionMessage("Your Property Successfully Updated ");
                Criteria crit = getMyDao().getDbsession().createCriteria(Sell.class);
                crit.add(Restrictions.eq("referenceNo", referenceNo));
                setSell((Sell) crit.list().get(0));

            }

            return "success";

        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Server Error Please Try Again Later");
            return "error";

        }

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
     * @return the newheading
     */
    public String getNewheading() {
        return newheading;
    }

    /**
     * @param newheading the newheading to set
     */
    public void setNewheading(String newheading) {
        this.newheading = newheading;
    }

    /**
     * @return the referenceNo
     */
    public Long getReferenceNo() {
        return referenceNo;
    }

    /**
     * @param referenceNo the referenceNo to set
     */
    public void setReferenceNo(Long referenceNo) {
        this.referenceNo = referenceNo;
    }

    /**
     * @return the newprice
     */
    public Long getNewprice() {
        return newprice;
    }

    /**
     * @param newprice the newprice to set
     */
    public void setNewprice(Long newprice) {
        this.newprice = newprice;
    }

    /**
     * @return the sell
     */
    public Sell getSell() {
        return sell;
    }

    /**
     * @param sell the sell to set
     */
    public void setSell(Sell sell) {
        this.sell = sell;
    }

    /**
     * @return the userImage1
     */
    public File getUserImage1() {
        return userImage1;
    }

    /**
     * @param userImage1 the userImage1 to set
     */
    public void setUserImage1(File userImage1) {
        this.userImage1 = userImage1;
    }

    /**
     * @return the userImage2
     */
    public File getUserImage2() {
        return userImage2;
    }

    /**
     * @param userImage2 the userImage2 to set
     */
    public void setUserImage2(File userImage2) {
        this.userImage2 = userImage2;
    }

    /**
     * @return the userImage3
     */
    public File getUserImage3() {
        return userImage3;
    }

    /**
     * @param userImage3 the userImage3 to set
     */
    public void setUserImage3(File userImage3) {
        this.userImage3 = userImage3;
    }

    /**
     * @return the userImage4
     */
    public File getUserImage4() {
        return userImage4;
    }

    /**
     * @param userImage4 the userImage4 to set
     */
    public void setUserImage4(File userImage4) {
        this.userImage4 = userImage4;
    }

    /**
     * @return the userImage5
     */
    public File getUserImage5() {
        return userImage5;
    }

    /**
     * @param userImage5 the userImage5 to set
     */
    public void setUserImage5(File userImage5) {
        this.userImage5 = userImage5;
    }

    /**
     * @return the img
     */
    public Imagesfile getImg() {
        return img;
    }

    /**
     * @param img the img to set
     */
    public void setImg(Imagesfile img) {
        this.img = img;
    }

    /**
     * @return the getlist
     */
    public List<Imagesfile> getGetlist() {
        return getlist;
    }

    /**
     * @param getlist the getlist to set
     */
    public void setGetlist(List<Imagesfile> getlist) {
        this.getlist = getlist;
    }
}
