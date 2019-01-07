package com.showup.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.showup.model.Advertisement;
import com.showup.model.Applied;
import com.showup.model.User;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{
	
	@Autowired
	SessionFactory fact;
	
	@Override
	@Transactional
	public void add(Advertisement temp) {
		
		Session session = fact.getCurrentSession();
		session.save(temp);
		
	}

	@Override
	@Transactional
	public List<Advertisement> getdata(int id) {

		Session session = fact.getCurrentSession();
		List<Advertisement> temp = session.createQuery("from Advertisement s where s.eid =" + id).list();
		return temp;
		
	}

	@Override
	@Transactional
	public Advertisement getAd(int id) {
		
		Session session = fact.getCurrentSession();
		Advertisement temp = session.get(Advertisement.class, id);
		return temp;
	}

	@Override
	@Transactional
	public List<Advertisement> getadresult(String category, String domain, String location) {
		
		
		Session session = fact.getCurrentSession();
		List<Advertisement> temp = null;
		
		if(!category.equals("") && !domain.equals("Any") && !location.equals("Any")) {
			temp = session.createQuery("from Advertisement"
						+ " s where s.category='"+category+"' and s.domain='"+domain+"' and s.location='"+location+"'").list();
		}
		
		else if(!category.equals("") && domain.equals("Any") && !location.equals("Any")) {
			temp = session.createQuery("from Advertisement"
					+ " s where s.category='"+category+"' and s.location='"+location+"'").list();
		}
		
		else if(!category.equals("") && !domain.equals("Any") && location.equals("Any")) {
			temp = session.createQuery("from Advertisement"
					+ " s where s.category='"+category+"' and s.domain='"+domain+"'").list();
		}
		
		else if(!category.equals("") && domain.equals("Any") && location.equals("Any")) {
			System.out.println("2 any");
			temp = session.createQuery("from Advertisement"
					+ " s where s.category='"+category+"'").list();
		}
		
		else {
			temp = null;
		}
		
		
		return temp;
	}

	@Override
	@Transactional
	public Advertisement getsingleresult(int id) {
		
		Session session = fact.getCurrentSession();
		Advertisement temp = session.get(Advertisement.class, id);
		return temp;
		
	}

	@Override
	@Transactional
	public void adduser(User res) {
		
		Session session = fact.getCurrentSession();
		session.save(res);
		
	}

	@Override
	@Transactional
	public int checkemail(String email) {
		
		Session session = fact.getCurrentSession();
		List<User> temp = (List<User>) session.createQuery("from User s where s.email = '"+email+"'").list();
		if(temp.size() == 0) {
			return 0; 
		}
		else {
			return 1;
		}
	}

	@Override
	@Transactional
	public User signin(String email, String pass) {
		
		Session session = fact.getCurrentSession();
		List<User> temp = (List<User>) session.createQuery("from User s where s.email = '"+email+"' and password ='"+pass+"'").list();
		if(temp.size() == 0) {
			return null;
		}
		else {
			for(User i : temp) {
				return i;
			}
		}
		return null;
	}

	@Override
	@Transactional
	public void addapplied(Applied app) {
		
		Session session = fact.getCurrentSession();
		session.save(app);
		
	}

	@Override
	@Transactional
	public Boolean checkapplied(int uid, int aid) {
		
		Session session = fact.getCurrentSession();
		List<Applied> temp = (List<Applied>) session.createQuery("from Applied s where s.uid = "+uid+" and aid ="+aid).list();
		if(temp.size() == 0) {
			return false;
		}
		else {
			return true;
		}
	}

	@Override
	@Transactional
	public List<Applied> getuserapplied(int uid, String category) {
		
		Session session = fact.getCurrentSession();
		List<Applied> temp = (List<Applied>) session.createQuery("from Applied s where s.uid = "+uid+" and category ='"+category+"'").list();
		return temp;
		
	}

	@Override
	@Transactional
	public List<Applied> getapplied(int aid) {
		
		Session session = fact.getCurrentSession();
		List<Applied> temp = (List<Applied>) session.createQuery("from Applied s where s.aid = "+aid).list();
		return temp;
	}

	@Override
	@Transactional
	public void select(int uid) {

		Session session = fact.getCurrentSession();
		List<Applied> temp = session.createQuery("from Applied s where s.uid="+uid).list();
		for(Applied i:temp ) {
				i.setStatus(1);
		}
	}
	
	@Override
	@Transactional
	public void deselect(int uid) {

		Session session = fact.getCurrentSession();
		List<Applied> temp = session.createQuery("from Applied s where s.uid="+uid).list();
		for(Applied i:temp ) {
				i.setStatus(0);
		}
	}

	@Override
	@Transactional
	public List<Applied> getselected(int aid) {
		Session session = fact.getCurrentSession();
		List<Applied> temp = (List<Applied>) session.createQuery("from Applied s where s.aid = "+aid+" and s.status = 0").list();
		return temp;
	}

	@Override
	@Transactional
	public int gettotal(int aid) {
		Session session = fact.getCurrentSession();
		List<Applied> temp = (List<Applied>) session.createQuery("from Applied s where s.aid ="+aid).list();
		return temp.size();
	}

	@Override
	@Transactional
	public List<Applied> getallselected(int aid) {
		Session session = fact.getCurrentSession();
		List<Applied> temp = (List<Applied>) session.createQuery("from Applied s where s.aid ="+aid+" and s.status = 1").list();
		for(Applied i : temp) {
		System.out.println(i.getStatus());
		}
		return temp;
	}

}
