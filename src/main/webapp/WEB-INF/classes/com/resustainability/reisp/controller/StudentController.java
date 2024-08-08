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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.Courses;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.Student;
import com.resustainability.reisp.model.Teacher;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.CoursesService;
import com.resustainability.reisp.service.StudentsService;
import com.resustainability.reisp.service.UserService;

@Controller
public class StudentController {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(StudentController.class);
	
	@Autowired
	StudentsService service;
	
	@Autowired
	CoursesService service2;
	
	@Autowired
	UserService service1;
	
	@RequestMapping(value = "/students-list", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView studentsList(@ModelAttribute Student obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.students);
		try {
			List<Student> studentsList = service.getStudentsList(obj);
			model.addObject("studentsList", studentsList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	
	@RequestMapping(value = "/ajax/getStudentsList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Student> getStudentsList(@ModelAttribute Student obj,HttpSession session) {
		List<Student>studentsList = null;
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
			studentsList = service.getStudentsList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStudentsList : " + e.getMessage());
		}
		return studentsList;
	}
	@RequestMapping(value = "/add-new-student", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addStudentsForm(@ModelAttribute Student obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addstudentPage);
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-student", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView updateStudentPage(@ModelAttribute Student obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.updateStudentPage);
		User user = new User();
		try {
			
			user.setUser_id(obj.getUser_id());
			User userDetails = service1.getUserDetailsForm(user);
			model.addObject("userDetails", userDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/courses-for-student", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView coursesForStudent(@ModelAttribute Courses obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.coursesForStudent);
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");
			obj.setUser(userId);
			obj.setRole(role);
			List<Courses> coursessList = service2.getCoursessList(obj);
			model.addObject("coursessList", coursessList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/get-course-slots", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView getCourseSlots(@ModelAttribute Courses cObj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.studentslotPage);
		try {
			
			List <Courses> courseSlotDetails = service.getCourseSlots(cObj);
			model.addObject("courseSlotDetails", courseSlotDetails);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
}
