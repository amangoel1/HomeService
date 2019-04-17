package com.cts.homeservice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.User;
import com.cts.homeservice.bean.Worker;
import com.cts.homeservice.service.AdminService;
import com.cts.homeservice.service.UserService;
import com.cts.homeservice.service.WorkerService;

@Controller
public class RegistrationController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private WorkerService workerService;
	
	@Autowired
	private AdminService adminService;
	
	
	@GetMapping("registerAdmin")
	public String getAdminRegistration() {
		return "registerAdmin";
	}
	
	@GetMapping("registerWorker")
	public String getWorkerRegistration() {
		return "registerWorker";
	}
	
	@GetMapping("registerUser")
	public String getUserRegistration(){
		return "registerUser";
	}
	
	
	@RequestMapping(value="registerUser.html", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User user,  HttpSession httpSession) 
	{

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("error", "");
		if(!userService.checkUser(user.getEmail())){
			int id = userService.getLastId() +1;
			user.setUserId(id);
			
		if("success".equals(userService.addUser(user)))
			modelAndView.setViewName("loginUser");
		}
		else	
		{
//			modelAndView.addObject("error", "Email Id Already Exists!!");
			modelAndView.addObject("user", user);
			modelAndView.setViewName("registerUser");
		}
		return modelAndView;
	}
	
	@PostMapping("registerWorker.html")
	public ModelAndView registerWorker(@ModelAttribute Worker worker, HttpServletRequest request)
	{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("error", "");
		if(!workerService.checkWorker(worker.getEmail())) {
		String skills="";
		String mechanic=request.getParameter("M");
		String electric=request.getParameter("E");
		String plumber=request.getParameter("P");
		
		if(mechanic!=null) {
			skills+="M";
		}
		if(electric!=null) {
			skills+="E";
		}
		if(plumber!=null) {
			skills+="P";
		}
		
		
		worker.setSkills(skills);
		int id=workerService.getLastId();
		worker.setWorkerId(id+1);
		String result=workerService.addWorker(worker);
		if("success".equals(result)) {
			modelAndView.setViewName("loginWorker");
		}
		else {
			modelAndView.setViewName("registerWorker");
		}
		}
		else
		{
			modelAndView.setViewName("registerWorker");
			modelAndView.addObject("error", "Email id already exist");
		}
		return modelAndView;
	}
	
	@RequestMapping(value="registerAdmin.html", method=RequestMethod.POST)
	public ModelAndView registerAdmin(@ModelAttribute Admin admin,  HttpSession httpSession) 
	{

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("error", "");
		if(!adminService.checkAdmin(admin.getEmail())){
			int id = adminService.getLastId() +1;
			admin.setAdminId(id);
			
		if("success".equals(adminService.addAdmin(admin)))
			modelAndView.setViewName("loginAdmin");
		}
		else	
		{
			modelAndView.addObject("error", "Email Id Already Exists!!");
			modelAndView.addObject("admin", admin);
			modelAndView.setViewName("registerAdmin");
		}
		return modelAndView;
	}
	
	
}



