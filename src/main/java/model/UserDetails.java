package model;
// Generated Apr 3, 2012 7:10:18 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * UserDetails generated by hbm2java
 */
public class UserDetails  implements java.io.Serializable {


     private long user;
     private User user_1;
     private String firestName;
     private String lastName;
     private String gender;
     private Date dob;
     private String city;
     private String stateReg;
     private String country;
     private String postalZip;
     private Date lastUpdate;

    public UserDetails() {
    }

	
    public UserDetails(long user, User user_1) {
        this.user = user;
        this.user_1 = user_1;
    }
    public UserDetails(long user, User user_1, String firestName, String lastName, String gender, Date dob, String city, String stateReg, String country, String postalZip, Date lastUpdate) {
       this.user = user;
       this.user_1 = user_1;
       this.firestName = firestName;
       this.lastName = lastName;
       this.gender = gender;
       this.dob = dob;
       this.city = city;
       this.stateReg = stateReg;
       this.country = country;
       this.postalZip = postalZip;
       this.lastUpdate = lastUpdate;
    }
   
    public long getUser() {
        return this.user;
    }
    
    public void setUser(long user) {
        this.user = user;
    }
    public User getUser_1() {
        return this.user_1;
    }
    
    public void setUser_1(User user_1) {
        this.user_1 = user_1;
    }
    public String getFirestName() {
        return this.firestName;
    }
    
    public void setFirestName(String firestName) {
        this.firestName = firestName;
    }
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public Date getDob() {
        return this.dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getCity() {
        return this.city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    public String getStateReg() {
        return this.stateReg;
    }
    
    public void setStateReg(String stateReg) {
        this.stateReg = stateReg;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public String getPostalZip() {
        return this.postalZip;
    }
    
    public void setPostalZip(String postalZip) {
        this.postalZip = postalZip;
    }
    public Date getLastUpdate() {
        return this.lastUpdate;
    }
    
    public void setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }




}

