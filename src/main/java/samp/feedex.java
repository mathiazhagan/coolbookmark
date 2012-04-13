/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Scribbles;
import org.hibernate.Criteria;

/**
 *
 * @author Administrator
 */
public final class feedex extends ActionSupport {

    private List<Scribbles> dbs;
    private spDAO myDao;

    public feedex() {


    }

    @Override
    public String execute() throws Exception {


        Criteria md = getMyDao().getDbsession().createCriteria(Scribbles.class);
        md.setMaxResults(50);
        setDbs((List<Scribbles>) md.list());
        return Action.SUCCESS;
    }

    /**
     * @return the dbs
     */
    public List<Scribbles> getDbs() {
        return dbs;
    }

    /**
     * @param dbs the dbs to set
     */
    public void setDbs(List<Scribbles> dbs) {
        this.dbs = dbs;
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
