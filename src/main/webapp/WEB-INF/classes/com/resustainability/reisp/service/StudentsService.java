package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.StudentsDao;
import com.resustainability.reisp.model.Courses;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.Student;


@Service
public class StudentsService {
	@Autowired
	StudentsDao dao;

	public List<Student> getStudentsList(Student obj) throws Exception {
		return dao.getStudentsList(obj);
	}

	public List<Courses> getCourseSlots(Courses cObj) throws Exception {
		return dao.getCourseSlots(cObj);
	}
}
