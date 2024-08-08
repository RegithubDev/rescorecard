package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.CoursesDao;
import com.resustainability.reisp.model.Courses;

@Service
public class CoursesService {

	@Autowired
	CoursesDao dao;

	public List<Courses> getCoursessList(Courses obj)  throws Exception {
		return dao.getCoursessList(obj);
	}

	public boolean addCourse(Courses obj) throws Exception {
		return dao.addCourse(obj);
	}

	public Courses getCourseUpdateForm(Courses obj) throws Exception {
		return dao.getCourseUpdateForm(obj);
	}

	public boolean updateCourseForm(Courses obj) throws Exception {
		return dao.updateCourseForm(obj);
	}

	public List<Courses> getMyCoursessList(Courses obj) throws Exception {
		return dao.getMyCoursessList(obj);
	}

	public List<Courses> getAllCoursessList(Courses obj) throws Exception {
		return dao.getAllCoursessList(obj);
	}

	public List<Courses> getSimeslotsLIst(Courses obj) throws Exception {
		return dao.getSimeslotsLIst(obj);
	}

	public List<Courses> getSlotsByDateList(Courses obj) throws Exception {
		return dao.getSlotsByDateList(obj);
	}

	public boolean updateSLots(Courses obj) throws Exception {
		return dao.updateSLots(obj);
	}

	public List<Courses> getDatesLIst(Courses obj) throws Exception {
		return dao.getDatesLIst(obj);
	}

	public boolean addToCart(Courses obj) throws Exception {
		return dao.addToCart(obj);
	}

	public List<Courses> getMyTransactions(Courses c) throws Exception {
		return dao.getMyTransactions(c);
	}

	public List<Courses> getAllDistictTransactions(Courses ccc)  throws Exception {
		return dao.getAllDistictTransactions(ccc);
	}

	public List<Courses> getPendingActions(Courses ccc)  throws Exception {
		return dao.getPendingActions(ccc);
	}

	public List<Courses> getCoursessDetailsList(Courses obj)  throws Exception {
		return dao.getCoursessDetailsList(obj);
	}
}
