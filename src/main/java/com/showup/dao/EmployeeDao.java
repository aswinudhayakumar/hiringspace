package com.showup.dao;

import java.util.List;

import com.showup.model.Advertisement;
import com.showup.model.Applied;
import com.showup.model.User;

public interface EmployeeDao {

	void add(Advertisement temp);

	List<Advertisement> getdata(int id);

	Advertisement getAd(int id);

	List<Advertisement> getadresult(String category, String domain, String location);

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

	int gettotal(int aid);

	List<Applied> getallselected(int aid);

}
