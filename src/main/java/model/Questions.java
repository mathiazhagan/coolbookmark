package model;
// Generated Apr 3, 2012 7:10:18 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Questions generated by hbm2java
 */
public class Questions  implements java.io.Serializable {


     private Long questionId;
     private User user;
     private String question;
     private Date questTime;
     private String status;
     private Set<Answers> answerses = new HashSet<Answers>(0);

    public Questions() {
    }

	
    public Questions(User user, String question, Date questTime, String status) {
        this.user = user;
        this.question = question;
        this.questTime = questTime;
        this.status = status;
    }
    public Questions(User user, String question, Date questTime, String status, Set<Answers> answerses) {
       this.user = user;
       this.question = question;
       this.questTime = questTime;
       this.status = status;
       this.answerses = answerses;
    }
   
    public Long getQuestionId() {
        return this.questionId;
    }
    
    public void setQuestionId(Long questionId) {
        this.questionId = questionId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getQuestion() {
        return this.question;
    }
    
    public void setQuestion(String question) {
        this.question = question;
    }
    public Date getQuestTime() {
        return this.questTime;
    }
    
    public void setQuestTime(Date questTime) {
        this.questTime = questTime;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Set<Answers> getAnswerses() {
        return this.answerses;
    }
    
    public void setAnswerses(Set<Answers> answerses) {
        this.answerses = answerses;
    }




}

