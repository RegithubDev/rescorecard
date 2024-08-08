package com.resustainability.reisp.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.Courses;
import com.resustainability.reisp.model.Student;

@Repository
public class StudentsDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<Student> getStudentsList(Student obj) throws Exception {
		List<Student> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select id,user_id,user_name,phone,email_id,address,pin_code,user,role,status,credits,"
					+ "created_date,created_by,modified_date,modified_by,gender,student_level from [students] s  "
			
					+ " where s.id is not null and s.id <> ''";
		
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Student>(Student.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Courses> getCourseSlots(Courses cObj)  throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select slot_date from [course_time_slots] s  "
			
					+ " where s.slot_date is not null and s.slot_date <> ''";
			if(!StringUtils.isEmpty(cObj) && !StringUtils.isEmpty(cObj.getCourse_id())) {
				qry = qry + " and s.course_id = ? ";
				arrSize++;
			}
			qry = qry + " order by   s.slot_date desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(cObj) && !StringUtils.isEmpty(cObj.getCourse_id())) {
				pValues[i++] = cObj.getCourse_id();
			}
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Courses>(Courses.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}
}
