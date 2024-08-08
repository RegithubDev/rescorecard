package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.TeacherDao;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.Teacher;


@Service
public class TeachersService {
	@Autowired
	TeacherDao dao;

	public List<Teacher> getTeachersList(Teacher obj) throws Exception {
		return dao.getTeachersList(obj);
	}

	public List<Teacher> getTeachersListForAdmin(Teacher obj) throws Exception {
		return dao.getTeachersListForAdmin(obj);
	}

}
