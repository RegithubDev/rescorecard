package com.resustainability.reisp.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.SBUDao;
import com.resustainability.reisp.model.Company;
import com.resustainability.reisp.model.SBU;
import com.resustainability.reisp.model.User;

@Service
public class SBUService {
	@Autowired
	SBUDao dao;

	public List<SBU> getSBUsList(SBU obj)  throws Exception {
		return dao.getSBUsList(obj);
	}

	public List<SBU> getCompanyFilterList(SBU obj)  throws Exception {
		return dao.getCompanyFilterList(obj);
	}

	public List<SBU> getSBUFilterList(SBU obj)  throws Exception {
		return dao.getSBUFilterList(obj);
	}

	public boolean addSBU(SBU obj)  throws Exception {
		return dao.addSBU(obj);
	}

	public boolean updateSBU(SBU obj) throws Exception  {
		return dao.updateSBU(obj);
	}

	public List<SBU> getCompaniesList(SBU obj) throws Exception {
		return dao.getCompaniesList(obj);
	}

	public List<SBU> getStatusFilterListFromSBU(SBU obj) throws Exception {
		return dao.getStatusFilterListFromSBU(obj);
	}

	public List<SBU> checkUniqueIfForSBU(SBU obj) throws Exception {
		return dao.checkUniqueIfForSBU(obj);
	}

	public List<User> getDepartmentFilterListForSubCategory(User obj) throws Exception {
		return dao.getDepartmentFilterListForSubCategory(obj);
	}

	public List<User> getCategoryFilterListForSubCategory(User obj) throws Exception {
		return dao. getCategoryFilterListForSubCategory(obj);
	}

	public List<User> getSubCategoryfilterListForSubCategory(User obj) throws Exception {
		return dao. getSubCategoryfilterListForSubCategory(obj);
	}

	public List<User> getStatusfilterListForSubCategory(User obj) throws Exception {
		return dao. getStatusfilterListForSubCategory(obj);
	}

	public List<User> getSubCategoryfilterListForDeptContnt(User obj)throws Exception {
		return dao. getSubCategoryfilterListForDeptContnt(obj);
	}

	public List<User> getStatusfilterListForDeptContnt(User obj)throws Exception {
		return dao. getStatusfilterListForDeptContnt(obj);
	}

	public List<User> getCategoryFilterListForDeptContnt(User obj)throws Exception {
		return dao. getCategoryFilterListForDeptContnt(obj);
	}

	public List<User> getDepartmentFilterListForDeptContnt(User obj)throws Exception {
		return dao. getDepartmentFilterListForDeptContnt(obj);
	}
	
}
