package com.showup.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.showup.dao.EmployeeDao;
import com.showup.model.Advertisement;
import com.showup.model.Applied;
import com.showup.model.User;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	EmployeeDao dao;
	
	@Override
	public void insert(HttpServletRequest request) {
		
		int id = (int) session.getAttribute("empid");
		System.out.println("session in ser "+id);
		String category = request.getParameter("category");
		String domain = request.getParameter("domain");
		String experience = request.getParameter("experience");
		String position = request.getParameter("position");
		String vacancies = request.getParameter("vacancies");
		String salary = request.getParameter("salary");
		String knowledge = request.getParameter("knowledge");
		String location = request.getParameter("location");
		String lastdate = request.getParameter("lastdate");
		String website = request.getParameter("website");
		String ename = (String) session.getAttribute("empname");
		
		Date temp1 = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");  
	    String posteddate = formatter.format(temp1);  
		
		Advertisement temp = new Advertisement(category,domain,experience,position,vacancies,salary,knowledge,location,lastdate,id,posteddate,website,ename);
	
		dao.add(temp);
		
	}

	@Override
	public List<Advertisement> getdata(int id) {
		List<Advertisement> temp = dao.getdata(id);		
		return temp;
	}

	@Override
	public Advertisement getAd(int id) {
		Advertisement temp = dao.getAd(id);
		return temp;
	}

	@Override
	public List<Advertisement> getadresult(HttpServletRequest request) {
		String category = request.getParameter("category");
		String domain = request.getParameter("domain");
		String location = request.getParameter("location");
		List<Advertisement> temp = dao.getadresult(category, domain, location);
		return temp;
	}

	@Override
	public Advertisement getsingleresult(int id) {
		Advertisement temp = dao.getsingleresult(id);
		return temp;
	}

	@Override
	public void adduser(User res) {
		
		dao.adduser(res);
		
	}

	@Override
	public int checkemail(String email) {
		int check = 0;
		check = dao.checkemail(email);
		return check;
	}

	@Override
	public User signin(String email, String pass) {
		User res = dao.signin(email, pass);
		return res;
	}

	@Override
	public void addapplied(Applied app) {
		dao.addapplied(app);
		
	}

	@Override
	public Boolean checkapplied(int uid, int aid) {
		Boolean result = dao.checkapplied(uid,aid);
		return result;
	}

	@Override
	public List<Applied> getuserapplied(int uid, String category) {
		List<Applied> temp = dao.getuserapplied(uid, category);
		return temp;
	}

	@Override
	public List<Applied> getapplied(int aid) {
		List<Applied> res = dao.getapplied(aid);
		return res;
	}

	@Override
	public void select(int uid) {
		
		dao.select(uid);
		
	}
	
	@Override
	public void deselect(int uid) {
		
		dao.deselect(uid);
		
	}

	@Override
	public List<Applied> getselected(int aid) {
		List<Applied> res = dao.getselected(aid);
		return res;
	}

	@Override
	public int gettotal(int aid) {
		int tot = dao.gettotal(aid);
		return tot;
	}

	@Override
	public List<Applied> getallselected(int aid) {
		List<Applied> temp = dao.getallselected(aid);
		return temp;
	}


}
