package com.showup.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.showup.model.Advertisement;
import com.showup.model.Applied;
import com.showup.model.User;
import com.showup.service.EmployeeService;

@Controller
public class MainController {
	
	@Autowired
	EmployeeService emp;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/")
	public String signin() {
		
		if(session.getAttribute("empid") == null && session.getAttribute("userid") == null) {
		
		return "login";
		
		}
		else if(session.getAttribute("empid") != null) {
			return "redirect:/employerpannel";
		}
		else {
			return "redirect:/userpannel";
		}
	}
	
	@RequestMapping("/signin")
	public String signin(Model themodel) {
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		User res = emp.signin(email,pass);
		if(res != null) {		
			if(res.getEmporuser() == 1) {
				session.setAttribute("username", res.getName());
				session.setAttribute("userid", res.getId());
				session.setAttribute("mail", res.getEmail());
				return "redirect:/userpannel";
			}
			else {
				session.setAttribute("empname", res.getName());
				session.setAttribute("empid", res.getId());
				session.setAttribute("mail", res.getEmail());
				return "redirect:/employerpannel";
			}	
		}
		else {
			themodel.addAttribute("status", "error");
			return "login";
		}
	}

	@RequestMapping("/signup")
	public String signup() {
		
		if(session.getAttribute("empid") == null && session.getAttribute("userid") == null) {
			return "register";
		}
		else {
			return "redirect:/";
		}
		
		
	}
	
	@RequestMapping("/adduser")
	public String login(Model themodel) {
		
		if(session.getAttribute("empid") == null) {
			
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int age =  Integer.parseInt(request.getParameter("age"));
		String organaization = request.getParameter("organaization");
		String temp = request.getParameter("emporuser");
		System.out.println("emporuser "+temp);
		int emporuser = 0;
		if(temp.equals("student")) {
			emporuser = 1;
		}
		else {
			emporuser = 0;
		}
		
		String error = "error";
		int check = emp.checkemail(email);
		if(check == 0 && (password.length() >= 8 )) {
		
		User res = new User(name, password, email, age, organaization, emporuser);
		emp.adduser(res);
		return "login";
		
		}
		else if(check == 0 && (password.length() < 8) ) {
			themodel.addAttribute("password", error);
			return "register";
		}
		else if(check == 1 && (password.length() >= 8)){
			themodel.addAttribute("status", error);
			return "register";
		}
		else {
			themodel.addAttribute("status", error);
			themodel.addAttribute("password", error);
			return "register";
		}
		
		}
		else {
			System.out.println("why");
			return "redirect:/";
		}
	}
	
	@RequestMapping("/employeradd")
	public String employeeadd() {
		
		if(session.getAttribute("empid") != null) {
		
		return "employeradd";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/addtoadvertise")
	public String addtoadvertise() {
		
		if(session.getAttribute("empid") != null) {
		
		emp.insert(request);
		return "redirect:/employerpannel";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/employerpannel")
	public String employeepannel(Model themodel) {
		
		if(session.getAttribute("empid") != null) {
		
		int id = (int) session.getAttribute("empid");
		List<Advertisement> temp =  emp.getdata(id);
		themodel.addAttribute("data", temp);
		return "employerpannel";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/viewaddetails")
	public String viewaddetails(Model themodel) {
		if(session.getAttribute("empid") != null) {
			
		int id = Integer.parseInt(request.getParameter("id")) ;
		Advertisement temp = emp.getAd(id);
		themodel.addAttribute("data", temp);
		return "viewaddetails";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/userpannel")
	public String userpannel() {
		
		if(session.getAttribute("userid") != null) {
		
		return "userpannel";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/usersearch")
	public String usersearch() {
		
		if(session.getAttribute("userid") != null) {
		
		return "usersearch";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/search")
	public String search(Model themodel) {
		
		if(session.getAttribute("userid") != null) {
		
		List<Advertisement> temp = emp.getadresult(request);
		themodel.addAttribute("data", temp);
		return "usersearch";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/viewdetails")
	public String viewdetails(Model themodel) {
		
		if(session.getAttribute("userid") != null) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		int uid = (int) session.getAttribute("userid");
		Advertisement temp = emp.getsingleresult(id);
		Boolean result = emp.checkapplied(uid,id);
		int total = emp.gettotal(id);
		System.out.println(result);
		themodel.addAttribute("applied", result);
		themodel.addAttribute("data", temp);
		themodel.addAttribute("total", total);
		return "viewdetails";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/gotowebsite")
	public RedirectView localRedirect() {
		System.out.println("into goto");
	    RedirectView redirectView = new RedirectView();
	    String temp = (String) request.getParameter("website");
	    System.out.println(temp);
	    redirectView.setUrl("http://"+temp);
	    return redirectView;
	}
	
	@RequestMapping("/apply")
	public String apply() {
		if(session.getAttribute("userid") != null) {
			
			int uid = Integer.parseInt(request.getParameter("uid"));
			int eid = Integer.parseInt(request.getParameter("eid"));
			String gitlink = request.getParameter("gitlink");
			String uname = request.getParameter("uname");
			String ename = request.getParameter("ename");
			String position = request.getParameter("position");
			String duedate = request.getParameter("duedate");
			String category = request.getParameter("category");
			String mail = request.getParameter("mail");
			
			Applied app = new Applied(uid,eid,gitlink,uname,ename,position,duedate,category,mail);
			emp.addapplied(app);
			
			return "redirect:/userpannel";
		}
		else{
		return "redirect:/";
		}
	}
	
	@RequestMapping("/viewapplied")
	public String viewapplied() {
		if(session.getAttribute("userid") != null) {
			return "viewapplied";
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/getuserapplied")
	public String getuserapplied(Model themodel) {
		if(session.getAttribute("userid") != null) {
			
		String category = request.getParameter("category");
		int uid = (int) session.getAttribute("userid");
		List<Applied> temp = emp.getuserapplied(uid, category);
		themodel.addAttribute("data",temp);
		themodel.addAttribute("category", category);
		return "userpannel";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/select")
	public String select(Model themodel) {
		if(session.getAttribute("empid") != null) {

			int aid = Integer.parseInt(request.getParameter("id"));
			List<Applied> res = emp.getapplied(aid);
			themodel.addAttribute("applied", res);
			return "selectuser";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/selected")
	public String selected(Model themodel) {
		if(session.getAttribute("empid") != null) {
			
		int aid = Integer.parseInt(request.getParameter("id"));
		List<Applied> res = emp.getselected(aid);
		themodel.addAttribute("applied", res);
		return "selecteduser";
		
		}
		else {
			return "redirect:/";
		}
		
	}
	
	@RequestMapping("/selecthim")
	public String selecthim(Model themodel) {
		if(session.getAttribute("empid") != null) {
			
		int uid = Integer.parseInt(request.getParameter("uid"));
		emp.select(uid);
		int aid = Integer.parseInt(request.getParameter("aid"));
		List<Applied> res = emp.getapplied(aid);
		themodel.addAttribute("applied", res);
		return "selectuser";
		
		}
		else {
			return "redirect:/";
		}
		
	}
	
	@RequestMapping("/deselecthim")
	public String deselecthim(Model themodel) {
		if(session.getAttribute("empid") != null) {
			
		int uid = Integer.parseInt(request.getParameter("uid"));
		emp.deselect(uid);
		int aid = Integer.parseInt(request.getParameter("aid"));
		List<Applied> res = emp.getapplied(aid);
		themodel.addAttribute("applied", res);
		return "selectuser";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/viewapp")
	public String viewapp(Model themodel) {
		if(session.getAttribute("empid") != null) {
			
		int id = Integer.parseInt(request.getParameter("id"));
		List<Applied> temp = emp.getallselected(id);
		themodel.addAttribute("selected", temp);
		return "viewapplied";
		
		}
		else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
	
}
