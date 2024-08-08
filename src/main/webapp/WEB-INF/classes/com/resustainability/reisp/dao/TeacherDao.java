package com.resustainability.reisp.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.Teacher;

@Repository
public class TeacherDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<Teacher> getTeachersList(Teacher obj) throws Exception {
		List<Teacher> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select id,user_id,user_name,phone,email_id,adhar,pan_card,address,pin_code,role,status,"
					+ "created_date,created_by,approved_by_admin,modified_date,modified_by from [teachers] t  "
			
					+ " where t.id is not null and t.id <> '' and approved_by_admin <> 'pending' and approved_by_admin <> 'Decline' ";
		
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Teacher>(Teacher.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Teacher> getTeachersListForAdmin(Teacher obj) throws Exception { 
		List<Teacher> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select id,user_id,user_name,phone,email_id,adhar,pan_card,address,pin_code,role,status,"
					+ "created_date,approved_by_admin,created_by,modified_date,modified_by from [teachers] t  "
			
					+ " where t.id is not null and t.id <> '' and approved_by_admin <> 'Decline'  order by approved_by_admin desc";
		
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Teacher>(Teacher.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}
}
