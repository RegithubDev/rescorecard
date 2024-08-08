package com.resustainability.reisp.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.DepartmentDao;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.User;

@Service
public class DepartmentService {
	@Autowired
	DepartmentDao dao;

	public List<Department> getSBUList(Department obj) throws Exception {
		return dao.getSBUList(obj);
	}

	public List<Department> getDepartmentsList(Department obj) throws Exception  {
		return dao.getDepartmentsList(obj);
	}

	public List<Department> getSBUsFilterList(Department obj)  throws Exception {
		return dao.getSBUsFilterList(obj);
	}

	public List<Department> getDepartmentFilterList(Department obj) throws Exception  {
		return dao.getDepartmentFilterList(obj);
	}

	public List<Department> getStatusFilterListFromDepartment(Department obj)  throws Exception {
		return dao.getStatusFilterListFromDepartment(obj);
	}

	public boolean addDepartment(Department obj) throws Exception  {
		return dao.addDepartment(obj);
	}

	public boolean updateDepartment(Department obj)  throws Exception {
		return dao.updateDepartment(obj);
	}

	public List<Department> checkUniqueIfForDept(Department obj) throws Exception {
		return dao.checkUniqueIfForDept(obj);
	}

	public List<Department> getDepartmentMasterList(Department obj) throws Exception {
		return dao.getDepartmentMasterList(obj);
	}

	public boolean addDepartmentMaster(Department obj) throws Exception {
		return dao.addDepartmentMaster(obj);
	}

	public boolean updateDepartmentMaster(Department obj) throws Exception {
		return dao. updateDepartmentMaster(obj);
	}

	public List<User> getCategoryFilterListForDCForm(User obj) throws Exception {
		return dao. getCategoryFilterListForDCForm(obj);
	}

	public List<User> getSubCategoryFilterListForDCForm(User obj) throws Exception {
		return dao. getSubCategoryFilterListForDCForm(obj);
	}

	public boolean addDCForm(User obj) throws Exception {
		return dao. addDCForm(obj);
	}

	public User getDCFORM(User user) throws Exception {
		return dao. getDCFORM(user);
	}

	public boolean updateDCForm(User obj)  throws Exception {
		return dao. updateDCForm(obj);
	}

	public List<Department> getDepartmentActionFilterList(Department obj) throws Exception {
		return dao. getDepartmentActionFilterList(obj);
	}

	public List<Department> getStatusActionFilterList(Department obj)  throws Exception {
		return dao. getStatusActionFilterList(obj);
	}
}