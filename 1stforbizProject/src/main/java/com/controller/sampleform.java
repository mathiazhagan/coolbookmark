/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

/**
 *
 * @author D.Mathiazhagan
 */
public class sampleform extends ActionSupport{
    private String username;
    private String nickname;
    private String place;
    private String post;
    
    
     @Override
    public String execute() throws Exception {
        try {
            
            
            
                  
        } catch (Exception e) {
            e.printStackTrace();
            return "error1";
            
        }
        return "success";
        
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    @RequiredStringValidator(message="Please enter user name")
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the nickname
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * @param nickname the nickname to set
     */
    @RequiredStringValidator(message="Please enter nick name")
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    /**
     * @return the place
     */
    public String getPlace() {
        return place;
    }

    /**
     * @param place the place to set
     */
    @RequiredStringValidator(message="Please enter place")
    public void setPlace(String place) {
        this.place = place;
    }

    /**
     * @return the post
     */
    public String getPost() {
        return post;
    }

    /**
     * @param post the post to set
     */
    @RequiredStringValidator(message="Please enter job position")
    public void setPost(String post) {
        this.post = post;
    }

        }
    

