package com.resustainability.reisp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
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
import com.resustainability.reisp.model.Teacher;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.TeachersService;
import com.resustainability.reisp.service.UserService;

@Controller
public class TeachersController {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(TeachersController.class);
	
	@Autowired
	TeachersService service;
	
	@Autowired
	UserService service1;
	
	@RequestMapping(value = "/teachers-list", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView teachersList(@ModelAttribute Teacher obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.teachers);
		try {
			List<Teacher> teachersList = service.getTeachersList(obj);
			model.addObject("teachersList", teachersList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	
	@RequestMapping(value = "/ajax/getTeachersList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Teacher> getTeachersList(@ModelAttribute Teacher obj,HttpSession session) {
		List<Teacher> companiesList = null;
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
			companiesList = service.getTeachersListForAdmin(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getTeachersList : " + e.getMessage());
		}
		return companiesList;
	}
	
	@RequestMapping(value = "/add-new-teacher", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addTeachersForm(@ModelAttribute Teacher obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addTeachersPage);
		try {
			model.addObject("action", "add");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-teacher", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView updateTeacherPage(@ModelAttribute Teacher obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.updateTeacherPage);
		User user = new User();
		try {
			
			user.setUser_id(obj.getUser_id());
			model.addObject("action", "edit");
			User userDetails = service1.getUserDetailsForm(user);
			model.addObject("userDetails", userDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}

}
