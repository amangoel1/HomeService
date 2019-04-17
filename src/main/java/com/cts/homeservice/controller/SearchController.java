//package com.cts.homeservice.controller;
//
//import java.io.IOException;
//import java.text.ParseException;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.json.JSONException;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.cts.homeservice.bean.Worker;
//import com.cts.homeservice.service.LocationService;
//import com.cts.homeservice.service.WorkerService;
//
//@Controller
//public class SearchController {
//
//	@Autowired
//	private LocationService locationService;
//	@Autowired
//	private WorkerService workerService;
//	
//	@PostMapping("index.html")
//	public ModelAndView getServiceResult(HttpServletRequest request) throws JSONException, IOException, ParseException {
//		String locality = request.getParameter("locality");
//		String service = request.getParameter("service");
//		ModelAndView modelAndView = new ModelAndView();
//		String latLong = locationService.getLatLong(locality);
//		String vicinity = locationService.getVicinity(latLong).trim();
//		System.out.println("worker search starts");
//		List<Worker> workers = workerService.getWorkerByLocalityAndService(vicinity,service);
//		modelAndView.addObject("numOfWorkers", workers.size());
//		modelAndView.addObject("locality", locality);
//		modelAndView.addObject("serviceType", service);
//		modelAndView.setViewName("homepageResult");
//		return modelAndView;
//	}
//
//}