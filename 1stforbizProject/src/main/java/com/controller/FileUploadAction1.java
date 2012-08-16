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
import java.util.Iterator;
import java.util.List;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUploadAction1 extends ActionSupport implements
        ServletRequestAware {

    private File userImage;
    private String userImageContentType;
    private String userImageFileName;
    private String imagename;
    private String filePathToSaveInDB;
    private HttpServletRequest servletRequest;

    @Override
    public String execute() {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        try {
            List items = upload.parseRequest(servletRequest);
            Iterator iterator = items.iterator();
            while (iterator.hasNext()) {
                FileItem item = (FileItem) iterator.next();
                String filePath = "C:/Documents and Settings/D.Mathiazhagan/My Documents/NetBeansProjects/1stforbizProject/src/main/webapp/MyFolder/" + imagename;
                // String filePath = servletRequest.getRealPath(path);
                File uploadDir = new File(filePath);
                //if the folder does not exits, creating it
                if (uploadDir.exists() == false) {
                    uploadDir.mkdirs();
                }
                System.out.println("Server path:" + filePath);

                setFilePathToSaveInDB(filePath + "/" + getUserImageFileName());
                FileUtils.copyFile(this.getUserImage(), new File(uploadDir, getUserImageFileName()));
            }
            }  catch (Exception e) {
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
     * @return the userImage
     */
    public File getUserImage() {
        return userImage;
    }

    /**
     * @param userImage the userImage to set
     */
    public void setUserImage(File userImage) {
        this.userImage = userImage;
    }

    /**
     * @return the userImageFileName
     */
    public String getUserImageFileName() {
        return userImageFileName;
    }

    /**
     * @param userImageFileName the userImageFileName to set
     */
    public void setUserImageFileName(String userImageFileName) {
        this.userImageFileName = userImageFileName;
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
}