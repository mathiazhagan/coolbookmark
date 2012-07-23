/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

public class FileUploadAction extends ActionSupport implements
        ServletRequestAware {

    private List<File> userImage;
    private String userImageContentType;
    private List<String> userImageFileName;
    private String imagename;
    private String filePathToSaveInDB;
    private HttpServletRequest servletRequest;

    @Override
    public String execute() {

        try {
            //setting path to uploading image file into local Myfolder 

            String filePath = "C:/Documents and Settings/Naren/My Documents/NetBeansProjects/1stforbizProject/src/main/webapp/MyFolder/" + imagename;
            // String filePath = servletRequest.getRealPath(path);

            File uploadDir = new File(filePath);
            System.out.println("---path---" + uploadDir);
            //if the folder does not exits, creating it
            if (uploadDir.exists() == false) {
                uploadDir.mkdirs();
            }
            System.out.println("Server path:" + filePath);
            for (int i = 0; i <= getUserImage().size(); i++) {
                FileUtils.copyFile(getUserImage().get(i), new File(uploadDir, getUserImageFileName().get(i)));
            }

        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());

            return INPUT;
        }
        return SUCCESS;
    }


    public String getUserImageContentType() {
        return userImageContentType;
    }

    public void setUserImageContentType(String userImageContentType) {
        this.userImageContentType = userImageContentType;
    }

    /**
     * @return the servletRequest
     */
    public HttpServletRequest getServletRequest() {
        return servletRequest;
    }

    /**
     * @param servletRequest the servletRequest to set
     */
    public void setServletRequest(HttpServletRequest servletRequest) {
        this.servletRequest = servletRequest;
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
     * @return the filePathToSaveInDB
     */
    public String getFilePathToSaveInDB() {
        return filePathToSaveInDB;
    }

    /**
     * @param filePathToSaveInDB the filePathToSaveInDB to set
     */
    public void setFilePathToSaveInDB(String filePathToSaveInDB) {
        this.filePathToSaveInDB = filePathToSaveInDB;
    }

    /**
     * @return the userImage
     */
    public List<File> getUserImage() {
        return userImage;
    }

    /**
     * @param userImage the userImage to set
     */
    public void setUserImage(List<File> userImage) {
        this.userImage = userImage;
    }

    /**
     * @return the userImageFileName
     */
    public List<String> getUserImageFileName() {
        return userImageFileName;
    }

    /**
     * @param userImageFileName the userImageFileName to set
     */
    public void setUserImageFileName(List<String> userImageFileName) {
        this.userImageFileName = userImageFileName;
    }
}