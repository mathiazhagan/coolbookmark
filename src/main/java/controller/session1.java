/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import model.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


    
/**
 *
 * @author Administrator
 */
public class session1 {
    private spDAO myDao;
    public void test() throws Exception
    {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
 
	       spDAO mail = (spDAO) context.getBean("mail");
              // mail.test();
    }
    @Autowired
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
