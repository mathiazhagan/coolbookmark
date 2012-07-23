/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
 
import com.opensymphony.xwork2.ActionSupport;
 
public class multiplefileuploading extends ActionSupport{
 
	private List<File> fileUpload = new ArrayList<File>();
	private List<String> fileUploadContentType = new ArrayList<String>();
	private List<String> fileUploadFileName = new ArrayList<String>();
 
	public List<File> getFileUpload() {
		return fileUpload;
	}
 
	public void setFileUpload(List<File> fileUpload) {
		this.fileUpload = fileUpload;
	}
 
	public List<String> getFileUploadContentType() {
		return fileUploadContentType;
	}
 
	public void setFileUploadContentType(List<String> fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}
 
	public List<String> getFileUploadFileName() {
		return fileUploadFileName;
	}
 
	public void setFileUploadFileName(List<String> fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}
 
	public String upload() throws Exception{
 
	    for (File file: fileUpload) {
	        System.out.println("File :" + file);
	    }
 
	    for (String fileName: fileUploadFileName) {
	        System.out.println("Filename : " + fileName);
	    }
 
	    for (String fileContentType: fileUploadContentType) {
	        System.out.println("File type : " + fileContentType);
	    }
 
	    return SUCCESS;
 
	}
 
	public String display() {
		return NONE;
	}
 
}
