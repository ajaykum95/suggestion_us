/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import model.Admin;
import model.Feedback;

/**
 *
 * @author AJAY KUMAR
 */
public class DaoImpl implements User{
    
    @Autowired
    private SessionFactory sessionFactory;
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    
    
    @Transactional
    @Override
    public void save(Feedback feedback) {
        hibernateTemplate.save(feedback);
        System.out.println("Data successfully saved.");
    }


    @Transactional
	@Override
	public boolean isValidUser(String userid, String password) {
    	Session session=sessionFactory.openSession();
    	Query quiry=session.createQuery("from Admin where userid='"+userid+"' and password='"+password+"' ");
    	Object obj=quiry.uniqueResult();
    	Admin admin=(Admin)obj;
    	if(admin!=null)
    	if(admin.getUserid().equals(userid)&&admin.getPassword().equals(password))
		return true;
    	else
    		return false;
    	else
    		return false;
	}



	@Override
	public List<Feedback> getAllFeedbacks() {
		List<Feedback> list=null;
		Session session=sessionFactory.openSession();
    	Query quiry=session.createQuery("from Feedback");
    	list=quiry.list();
		return list;
	}
    
}
