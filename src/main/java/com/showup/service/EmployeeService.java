package com.showup.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.showup.model.Advertisement;
import com.showup.model.Applied;
import com.showup.model.User;

@Service
public interface EmployeeService {

	void insert(HttpServletRequest request);
	List<Advertisement> getdata(int id);
	Advertisement getAd(int id);
	List<Advertisement> getadresult(HttpServletRequest request);
	Advertisement getsingleresult(int id);
	void adduser(User res);
	int checkemail(String email);
	User signin(String email, String pass);
	void addapplied(Applied app);
	Boolean checkapplied(int uid, int aid);
	List<Applied> getuserapplied(int uid, String category);
	List<Applied> getapplied(int aid);
	void select(int uid);
	void deselect(int uid);
	List<Applied> getselected(int aid);
	int gettotal(int id);
	List<Applied> getallselected(int id);
	
}
