/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.io.File;

/**
 *
 * @author Administrator
 */
public class mailattachment extends ActionSupport {
private File file;
private String fromemail;
private String toemail;
private String subject;
private String content;
private spDAO myDao;
    @Override
    public String execute() throws Exception {
        
        
        return "success";
    }

    /**
     * @return the file
     */
    public File getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(File file) {
        this.file = file;
    }

    /**
     * @return the fromemail
     */
    public String getFromemail() {
        return fromemail;
    }

    /**
     * @param fromemail the fromemail to set
     */
    public void setFromemail(String fromemail) {
        this.fromemail = fromemail;
    }

    /**
     * @return the toemail
     */
    public String getToemail() {
        return toemail;
    }

    /**
     * @param toemail the toemail to set
     */
    public void setToemail(String toemail) {
        this.toemail = toemail;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
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
}
