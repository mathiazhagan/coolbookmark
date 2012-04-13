/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Administrator
 */
public enum userEnum {

    Male("Male"), Female("Female"), Not_Activated("NotActivated"), Suspend("Suspend"), Active("Active"), scribbles("SCRIBBLES"), bookmarks("BOOKMARKS"), events("EVENTS");
    private String userType;

    private userEnum(String userType) {
        this.userType = userType;
    }

    /**
     * @return the userType
     */
    public String getUserType() {
        return userType;
    }
}
