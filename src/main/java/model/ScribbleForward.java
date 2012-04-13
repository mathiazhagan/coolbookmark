package model;
// Generated Apr 3, 2012 7:10:18 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * ScribbleForward generated by hbm2java
 */
public class ScribbleForward  implements java.io.Serializable {


     private Long forwardId;
     private User user;
     private Scribbles scribbles;
     private String forwardType;
     private String forwardDesc;
     private String status;
     private Date forwardTime;

    public ScribbleForward() {
    }

    public ScribbleForward(User user, Scribbles scribbles, String forwardType, String forwardDesc, String status, Date forwardTime) {
       this.user = user;
       this.scribbles = scribbles;
       this.forwardType = forwardType;
       this.forwardDesc = forwardDesc;
       this.status = status;
       this.forwardTime = forwardTime;
    }
   
    public Long getForwardId() {
        return this.forwardId;
    }
    
    public void setForwardId(Long forwardId) {
        this.forwardId = forwardId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public Scribbles getScribbles() {
        return this.scribbles;
    }
    
    public void setScribbles(Scribbles scribbles) {
        this.scribbles = scribbles;
    }
    public String getForwardType() {
        return this.forwardType;
    }
    
    public void setForwardType(String forwardType) {
        this.forwardType = forwardType;
    }
    public String getForwardDesc() {
        return this.forwardDesc;
    }
    
    public void setForwardDesc(String forwardDesc) {
        this.forwardDesc = forwardDesc;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Date getForwardTime() {
        return this.forwardTime;
    }
    
    public void setForwardTime(Date forwardTime) {
        this.forwardTime = forwardTime;
    }




}

