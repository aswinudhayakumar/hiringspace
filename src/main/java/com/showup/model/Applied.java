package com.showup.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="applied")
public class Applied {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="uid")
	private int uid;
	
	@Column(name="aid")
	private int aid;
	
	@Column(name="gitlink")
	private String gitlink;
	
	@Column(name="uname")
	private String uname;
	
	@Column(name="ename")
	private String ename;
	
	@Column(name="status")
	private int status;
	
	@Column(name="position")
	private String position;
	
	@Column(name="duedate")
	private String duedate;
	
	@Column(name="category")
	private String category;
	
	@Column(name="mail")
	private String mail;
	
	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getDuedate() {
		return duedate;
	}

	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getGitlink() {
		return gitlink;
	}

	public void setGitlink(String gitlink) {
		this.gitlink = gitlink;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Applied(int uid, int aid, String gitlink, String uname, String ename,String position,
			String duedate, String category, String mail) {
		this.uid = uid;
		this.aid = aid;
		this.gitlink = gitlink;
		this.uname = uname;
		this.ename = ename;
		this.position = position;
		this.duedate = duedate;
		this.category = category;
		this.mail = mail;
	}

	public Applied() {
	}	
	
	
}
