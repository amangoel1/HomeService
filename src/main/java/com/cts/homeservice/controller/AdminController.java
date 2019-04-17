package com.cts.homeservice.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.Requests;
import com.cts.homeservice.bean.Services;
import com.cts.homeservice.bean.Worker;
import com.cts.homeservice.service.AdminService;
//import com.cts.homeservice.service.LocationService;
import com.cts.homeservice.service.RequestsService;
import com.cts.homeservice.service.ServicesService;
import com.cts.homeservice.service.WorkerService;

@Controller
public class AdminController {
	
	@Autowired
	private RequestsService requestsService;
	
	//@Autowired
	//private LocationService locationService;
	
	@Autowired
	private WorkerService workerService;
	
	@Autowired
	private ServicesService servicesService;
	
	@Autowired
	private AdminService adminService;
	

	@GetMapping("adminPanel.html")
	public String getAdminPanel() {
		return "adminPanel";
	}
	
	
	
	@GetMapping("adminPanelRequest.html")
	public ModelAndView getRequestPage() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("requestList",requestsService.getAllRequests());
		
		modelAndView.setViewName("adminPanelRequest");
		return modelAndView;
	}
	@GetMapping("adminPanelProfile.html")
	public String getAdminPanelProfile() {
		return "adminPanelProfile";
	}
	
//	@GetMapping("adminAssignTask.html")
//	public ModelAndView getAdminAssignTask(@RequestParam("requestId") int requestId) throws JSONException, IOException, ParseException {
//		ModelAndView modelAndView = new ModelAndView();
//		
//		//modelAndView.addObject("workerList",);
//
//		Requests requests = requestsService.getRequestById(requestId);
//		
//		String locality = requests.getLocality();
//		String serviceType = requests.getServiceType();
//		String latLong = locationService.getLatLong(locality);
//		String vicinity = locationService.getVicinity(latLong).trim();
//		List<Worker> workers = workerService.getWorkerByLocalityAndService(vicinity,serviceType);
//		 workers = workerService.getAvailableWorker(requests.getDate(), requests.getTime(), workers);
//		modelAndView.addObject("workerList", workers);	
//		modelAndView.addObject("requestId", requestId);
//		
//		modelAndView.setViewName("adminAssignTask");
//		return modelAndView;
//	}
//	
//	@PostMapping("adminAssignTask.html")
//	public ModelAndView assignWorker(HttpServletRequest request) {
//		int workerId = Integer.parseInt(request.getParameter("workerId"));
//		int requestId = Integer.parseInt(request.getParameter("requestId"));
//		ModelAndView modelAndView = new ModelAndView();
//	
//		Requests requests = requestsService.getRequestById(requestId);
//		
//		requests.setWorkerId(workerId);
//		try{
//			String result  = requestsService.assignWorker(requests);
//			if("success".equals(result)) {
//				modelAndView.addObject("requestList", requestsService.getAllRequests());
//				modelAndView.setViewName("adminPanelRequest");
//			}
//			else
//				modelAndView.addObject("requestList", requestsService.getAllRequests());
//				modelAndView.setViewName("adminPanelRequest");
//		}
//		catch (Exception e) {
//			// TODO: handle exception
//		}
//		modelAndView.setViewName("adminPanelRequest");
//		return modelAndView;
//	}
	
	@GetMapping("adminPanelService.html")
	public ModelAndView getServicePage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("serviceList", servicesService.getAllServices());
		modelAndView.setViewName("adminPanelService");
		return modelAndView;
	}
	
	@GetMapping("adminPanelUpdateService.html")
	public ModelAndView updateService(@RequestParam("name")String name) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("service", servicesService.getServiceByName(name));
		modelAndView.setViewName("adminPanelUpdateService");
		return modelAndView;
		
	}
	
	@GetMapping("adminPanelAddService.html")
	public String addServicePage() {
		return "adminPanelAddService";
	}
	@PostMapping("adminPanelAddService.html")
	public ModelAndView addService(@ModelAttribute Services service) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		try {
			String result = servicesService.addService(service);
			if("success".equals(result)) {
				modelAndView.addObject("serviceList", servicesService.getAllServices());
				modelAndView.setViewName("adminPanelService");
			}
			else
				modelAndView.setViewName("adminPanelAddService");
			return modelAndView;
		}
		
		catch (Exception e) {
			// TODO: handle exception
		}
		return modelAndView;
	}
	@PostMapping("adminPanelUpdateService.html")
	public ModelAndView getServiceUpdatePage(@ModelAttribute Services service) {
		ModelAndView modelAndView = new ModelAndView();
		
		if("success".equals(servicesService.updateService(service))) {
			modelAndView.addObject("serviceList", servicesService.getAllServices());
			modelAndView.setViewName("adminPanelService");
		}
		
		
		return modelAndView;
	}
	
	@PostMapping("updateAdmin.html")
	public ModelAndView updateAdmin(@ModelAttribute Admin newAdmin, HttpServletRequest request, HttpSession httpSession) {
		//int workerId = Integer.parseInt(request.getParameter("workerId"));
		ModelAndView modelAndView = new ModelAndView();
		httpSession = request.getSession(false);
		Admin admin = (Admin) httpSession.getAttribute("admin");
		
		//System.out.println(admin);
		newAdmin.setAdminId(admin.getAdminId());
		if(admin.getPwd().equals(newAdmin.getPwd()))
		{
			int status = adminService.updateAdmin(newAdmin);
			if(status == 1)
			{
				modelAndView.setViewName("adminPanel");
				//System.out.println("success");
			}
		}
		else
		{
			modelAndView.setViewName("adminPanel");
			System.out.println("failure");
			
		}
		
		
		//System.out.println(workerId + "worker");
		
		return modelAndView;
	}
}

