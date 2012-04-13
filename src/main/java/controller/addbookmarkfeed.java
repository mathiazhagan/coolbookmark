/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;
import java.util.Map;
import model.*;
import bookmark.url.functions.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class addbookmarkfeed extends ActionSupport {

    private spDAO myDao;
    private List<Userfeed> feedlist;
    private User user;
    private String desc;
    //private static userEnum ut;
    private String urls;

    @Override
    public void validate() {

        if (desc == null) {

            addActionError("Please Enter Your Feeds");
        }

    }

    @Override
    public String execute() throws Exception {
        CheckActiveUrl checkurl = new CheckActiveUrl();
        
        
        try {
            Date date = new Date();
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));
            String[] temp;
            System.out.println("---------1");
            /* delimiter */
            String delimiter = ",";
            /* given string will be split by the argument delimiter provided. */
            temp = urls.split(delimiter);
            /* print substrings */

            for (int i = 0; i < temp.length; i++) {
                if (checkurl.exists(temp[i])) {
                   
                    Bookmarks bk = new Bookmarks();
                    bk.setBookmarkCreatetime(date);
                    bk.setBookmarkUrl(temp[i]);
                    bk.setUser(user);
                    bk.setBookmarkName(TitleExtractor.getPageTitle(temp[i]));
                    myDao.getDbsession().save(bk);
                    System.out.println("-------------------------" + temp[i]);
                   
                } else {
                }
            }

            Userfeed urfeed = new Userfeed(user, desc, date, userEnum.bookmarks.getUserType());
            myDao.getDbsession().save(urfeed);

            Criteria feedcri = getMyDao().getDbsession().createCriteria(Userfeed.class);
            feedcri.add(Restrictions.eq("user", user));
            feedcri.setMaxResults(50);
            feedlist = feedcri.list();
            addActionMessage("Your Feed  Successfully Published");
            return "success";


        } catch (HibernateException e) {
            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Try Again ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        }

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
     * @return the feedlist
     */
    public List<Userfeed> getFeedlist() {
        return feedlist;
    }

    /**
     * @param feedlist the feedlist to set
     */
    public void setFeedlist(List<Userfeed> feedlist) {
        this.feedlist = feedlist;
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * @return the urls
     */
    public String getUrls() {
        return urls;
    }

    /**
     * @param urls the urls to set
     */
    public void setUrls(String urls) {
        this.urls = urls;
    }
}