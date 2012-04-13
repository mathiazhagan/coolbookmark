/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class bookmarksearch extends ActionSupport {

    private spDAO myDao;
    private List<Bookmarks> bookmarklist;
    private User user;
 private String search;
    @Override
    public String execute() throws Exception {


        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));

            Criteria bookmarkcri = getMyDao().getDbsession().createCriteria(Bookmarks.class);
            bookmarkcri.add(Restrictions.eq("user", user));
            bookmarkcri.add(Restrictions.or(Restrictions.like("bookmarkName", search+"%"), Restrictions.like("bookmarkUrl", search+"%")));
            bookmarkcri.setMaxResults(50);
            bookmarklist= bookmarkcri.list();
             addActionMessage(bookmarklist.size() + " Results Found");
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
     * @return the bookmarklist
     */
    public List<Bookmarks> getBookmarklist() {
        return bookmarklist;
    }

    /**
     * @param bookmarklist the bookmarklist to set
     */
    public void setBookmarklist(List<Bookmarks> bookmarklist) {
        this.setBookmarklist(bookmarklist);
    }

 

    /**
     * @return the search
     */
    public String getSearch() {
        return search;
    }

    /**
     * @param search the search to set
     */
    public void setSearch(String search) {
        this.search = search;
    }
}