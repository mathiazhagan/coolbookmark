/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Imagesfile;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;

/**
 *
 * @author Naren
 */
public class imagefile extends ActionSupport {
    
    private spDAO myDao;
    private File userImage1;
    private File userImage2;
    private File userImage3;
    private File userImage4;
    private File userImage5;
    private String imagename;
    
    @Override
    public String execute() throws Exception {
        
        try {
            String s = getImagename().substring(1, getImagename().length() - 1);
            long s1 = Integer.parseInt(s);
            System.out.println("-------" + s1);
            //generating byte code for images....
            Imagesfile img = new Imagesfile();
            byte[] aFile = new byte[(int) userImage1.length()];            
            byte[] bFile = new byte[(int) userImage2.length()];            
            byte[] cFile = new byte[(int) userImage3.length()];            
            byte[] dFile = new byte[(int) userImage4.length()];            
            byte[] eFile = new byte[(int) userImage5.length()];            
            FileInputStream fileInputStream = new FileInputStream(userImage1);
            
                       
            System.out.println("----" + aFile);
            System.out.println("-------" + fileInputStream);
            //convert file into array of bytes
            fileInputStream.read(aFile);            
            img.setId(s1);
            img.setImg1(aFile);
            
            fileInputStream.close();
            FileInputStream fileInputStream1 = new FileInputStream(userImage2);
            fileInputStream1.read(bFile);
            img.setImg2(bFile);
            fileInputStream1.close();
            
            FileInputStream fileInputStream2 = new FileInputStream(userImage3);
            fileInputStream2.read(cFile);
            img.setImg3(cFile);
            fileInputStream2.close();
            
            FileInputStream fileInputStream3 = new FileInputStream(userImage4);
            fileInputStream3.read(dFile);
            img.setImg4(dFile);
            fileInputStream3.close();
            
            FileInputStream fileInputStream4 = new FileInputStream(userImage5);
            fileInputStream4.read(eFile);
            img.setImg5(eFile);
            fileInputStream4.close();
            
            getMyDao().getDbsession().save(img);
            
            
            
            
            
            
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
     * @return the userImage
     */
    public File getUserImage1() {
        return userImage1;
    }

    /**
     * @param userImage the userImage to set
     */
    public void setUserImage1(File userImage1) {
        this.userImage1 = userImage1;
    }

    /**
     * @return the imagename
     */
    public String getImagename() {
        return imagename;
    }

    /**
     * @param imagename the imagename to set
     */
    public void setImagename(String imagename) {
        this.imagename = imagename;
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
}
