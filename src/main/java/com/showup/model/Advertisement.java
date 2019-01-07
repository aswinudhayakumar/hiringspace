package com.showup.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Advertisement")
public class Advertisement {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="category")
	private String category;
	
	@Column(name="domain")
	private String domain;
	
	@Column(name="experience")
	private String experience;
	
	@Column(name="position")
	private String position;
	
	@Column(name="vacancies")
	private String vacancies;
	
	@Column(name="salary")
	private String salary;
	
	@Column(name="requiredknowledge")
	private String requiredknowledge;
	
	@Column(name="location")
	private String location;
	
	@Column(name="lastdate")
	private String lastdate;
	
	@Column(name="eid")
	private int eid;
	
	@Column(name="posteddate")
	private String posteddate;
	
	@Column(name="website")
	private String website;
	
	@Column(name="ename")
	private String ename;

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getPosteddate() {
		return posteddate;
	}

	public void setPosteddate(String posteddate) {
		this.posteddate = posteddate;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getVacancies() {
		return vacancies;
	}

	public void setVacancies(String vacancies) {
		this.vacancies = vacancies;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getRequiredknowledge() {
		return requiredknowledge;
	}

	public void setRequiredknowledge(String requiredknowledge) {
		this.requiredknowledge = requiredknowledge;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLastdate() {
		return lastdate;
	}

	public void setLastdate(String lastdate) {
		this.lastdate = lastdate;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Advertisement(String category, String domain, String experience, String position, String vacancies,
			String salary, String requiredknowledge, String location, String lastdate, int eid, String posteddate, String website, String ename) {
		this.category = category;
		this.domain = domain;
		this.experience = experience;
		this.position = position;
		this.vacancies = vacancies;
		this.salary = salary;
		this.requiredknowledge = requiredknowledge;
		this.location = location;
		this.lastdate = lastdate;
		this.eid = eid;
		this.posteddate = posteddate;
		this.website = website;
		this.ename = ename;
	}

	public Advertisement() {
	} 
	
}
