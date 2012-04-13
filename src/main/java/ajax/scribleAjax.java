/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ajax;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class scribleAjax extends ActionSupport {

    private List<Scribbles> scrlist;
    private spDAO myDao;
    private User user;

    public scribleAjax() {
    }

    @Override
    public String execute() throws Exception {
        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));
            Criteria feedcri = getMyDao().getDbsession().createCriteria(Scribbles.class);
            feedcri.add(Restrictions.eq("user", getUser()));
            feedcri.setMaxResults(50);
            scrlist = feedcri.list();
        } catch (Exception e) {
        }
        return "success";
    }

    /**
     * @return the scrlist
     */
    public List<Scribbles> getScrlist() {
        return scrlist;
    }

    /**
     * @param scrlist the scrlist to set
     */
    public void setScrlist(List<Scribbles> scrlist) {
        this.scrlist = scrlist;
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
}
