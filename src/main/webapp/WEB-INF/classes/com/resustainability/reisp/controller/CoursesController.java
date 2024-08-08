package com.resustainability.reisp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.Company;
import com.resustainability.reisp.model.Courses;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.Teacher;
import com.resustainability.reisp.service.CoursesService;
import com.resustainability.reisp.service.TeachersService;

@Controller
public class CoursesController {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(CoursesController.class);
	
	@Autowired
	CoursesService service;
	
	@Autowired
	TeachersService service1;
	
	@RequestMapping(value = "/courses-list", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView coursessList(@ModelAttribute Courses obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.courses);
		try {
			List<Courses> coursessList = service.getCoursessList(obj);
			model.addObject("coursessList", coursessList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/buy-course", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView buyCourse(@ModelAttribute Courses obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.buyCourse);
		try {
			List<Courses> coursessList = service.getCoursessList(obj);
			model.addObject("coursessList", coursessList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/goto-course/{courde_id}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView goToCourse(@ModelAttribute Courses obj,@PathVariable("courde_id") String courde_id , HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.gotoCoursesPage);
		try {
			List<Courses> coursessList = service.getCoursessList(obj);
			model.addObject("coursessList", coursessList);
			
			List<Courses> timeslotsLIst = service.getSimeslotsLIst(obj);
			model.addObject("timeslotsLIst", timeslotsLIst);
			
			obj.setCourse_id(courde_id);
			Courses courseDetails = service.getCourseUpdateForm(obj);
			model.addObject("courseDetails", courseDetails);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/goto-course-student/{courde_id}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView goToCourseStudent(@ModelAttribute Courses obj,@PathVariable("courde_id") String courde_id , HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.studentslotPage);
		try {
			obj.setCourse_id(courde_id);
			List<Courses> coursessList = service.getCoursessList(obj);
			model.addObject("coursessList", coursessList);
			
			List<Courses> datesList = service.getDatesLIst(obj);
			model.addObject("datesList", datesList);
			
			obj.setCourse_id(courde_id);
			Courses courseDetails = service.getCourseUpdateForm(obj);
			model.addObject("courseDetails", courseDetails);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-course-time-slots", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateSLots(@ModelAttribute Courses obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/home");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.updateSLots(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Course Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Course is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Course is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	
	@RequestMapping(value = "/ajax/getSlotsByDateList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Courses> getSlotsByDateList(@ModelAttribute Courses obj,HttpSession session) {
		List<Courses>coursessList = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
	
			coursessList = service.getSlotsByDateList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getSlotsByDateList : " + e.getMessage());
		}
		return coursessList;
	}
	@RequestMapping(value = "/students-courses-list", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView studentsCoursessList(@ModelAttribute Courses obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.courses);
		try {
			List<Courses> myCoursessList = service.getMyCoursessList(obj);
			model.addObject("myCoursessList", myCoursessList);
			
			List<Courses> allCoursessList = service.getAllCoursessList(obj);
			model.addObject("allCoursessList", allCoursessList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	
	@RequestMapping(value = "/ajax/getCoursesList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Courses> getCoursessList(@ModelAttribute Courses obj,HttpSession session) {
		List<Courses>coursessList = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");
			obj.setUser(userId);
			obj.setRole(role);
	
			//obj.setFrom_date(DateParser.parseTrickyDate(obj.getFrom_date()));
			//obj.setTo_date(DateParser.parseTrickyDate(obj.getTo_date()));
			coursessList = service.getCoursessList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCoursessList : " + e.getMessage());
		}
		return coursessList;
	}
	
	@RequestMapping(value = "/add-new-course", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addCourseForm(@ModelAttribute Courses obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addCoursePage);
		try {
			model.addObject("action", "add");
			List<Teacher> teachersList = service1.getTeachersList(null);
			model.addObject("teachersList", teachersList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/add-course", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addCourse(@ModelAttribute Courses obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/courses-list");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.addCourse(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Course Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Course is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Course is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	@RequestMapping(value = "/update-course-form", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView courseUpdateForm(@ModelAttribute Courses course, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addCoursePage);
		try {
			model.addObject("action", "edit");
			List<Teacher> teachersList = service1.getTeachersList(null);
			model.addObject("teachersList", teachersList);
			Courses courseDetails = service.getCourseUpdateForm(course);
			model.addObject("courseDetails", courseDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	

	@RequestMapping(value = "/update-course", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView updateCourseForm(@ModelAttribute Courses obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/courses-list");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setModified_by(userId);
			flag = service.updateCourseForm(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Course Updated Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Updating Course is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Updating Course is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/add-to-cart", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addToCart(@ModelAttribute Courses obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/home");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setModified_by(userId);
			flag = service.addToCart(obj);
			if(flag == true) {
				String ccc = (String) session.getAttribute("CREDITS");
				double creditsOld = Double.parseDouble(ccc);
				double creditsNew = Double.parseDouble(obj.getPrice());
				double finalCredits = creditsOld - creditsNew;
				session.setAttribute("CREDITS", String.valueOf(finalCredits));
				attributes.addFlashAttribute("success", "Purchase Updated Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Purchasing Course is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Purchasing Course is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	

	@RequestMapping(value = "/get-course-indetail/{user_id},{email_id}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView goToCourseIndetailStudent(@ModelAttribute Courses obj,@PathVariable("user_id") String user_id,@PathVariable("email_id") String email_id , HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.adminCenter);
		try {
			obj.setUser_id(user_id);
			obj.setEmail_id(email_id);
			String userId = null;
			userId = (String) session.getAttribute("USER_ID");
			obj.setUser_id(user_id);
			List<Courses> coursessForStudentList = service.getCoursessDetailsList(obj);
			model.addObject("coursessForStudentList", coursessForStudentList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
}
