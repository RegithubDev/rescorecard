package com.resustainability.reisp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.common.DBConnectionHandler;
import com.resustainability.reisp.model.Courses;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.Teacher;
import com.resustainability.reisp.model.User;

@Repository
public class CoursesDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	 private static final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
	 private static final Random random = new Random();
	    
	public List<Courses> getCoursessList(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select c.id,	c.course_id,	c.course_name,hours	,c.course_faculty,	c.course_status	,c.course_cost,u.user_name,"
					+ "	c.discount,	c.created_date,	c.created_by,c.modified_date,	c.modified_by,c.description from [courses] c  "
					+" left join [teachers] t on c.course_faculty = t.user_id "
					+" left join [users] u on c.course_faculty = u.user_id "
					+ " where c.id is not null and c.id <> '' and c.course_status <> 'Inactive' ";
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getUser_id())) {
				qry = qry + "and c.course_faculty = ?";
				arrSize++;
			}
			
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getUser_id())) {
				pValues[i++] = obj.getUser_id();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Courses>(Courses.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addCourse(Courses obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			obj.setCourse_status("Active");
			String randID = getSeriesOfUniqueId();
			obj.setCourse_id(randID);
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [courses] (course_id,course_name,course_faculty,course_status,hours,course_cost,discount,description,created_by,created_date,price_after_discount)"
					+ " VALUES "
					+ "(:course_id,:course_name,:course_faculty,:course_status,:hours,:course_cost,:discount,:description,:created_by,getdate(),:price_after_discount)";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}
	
	private String getSeriesOfUniqueId() throws Exception {
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String uId = null;
		Connection con = null;
		try{
			con = dataSource.getConnection();
			String maxIdQry = "select CONCAT('CR0',ISNULL(max(id) + 1, 1)) as maxId from courses ";
			stmt = con.prepareStatement(maxIdQry);
			rs = stmt.executeQuery();  
			if(rs.next()) {
				uId = rs.getString("maxId");
				if(StringUtils.isEmpty(uId)) {
					uId =  "CR01";
				}
			}
			
		}catch(Exception e){ 		
			e.printStackTrace();
			throw new Exception(e);
		}
		finally {
			DBConnectionHandler.closeJDBCResoucrs(con, stmt, rs);
		}
		return uId;
	}

	public Courses getCourseUpdateForm(Courses obj1) throws Exception {
		Courses obj = null;
		try {
			String qry = "select c.id,course_id,course_name,course_faculty,course_status,hours,course_cost,price_after_discount,discount,c.created_by,u.user_name,"
					+ "FORMAT(c.created_date, 'dd-MMM-yy  HH:mm') as created_date ,FORMAT(c.modified_date, 'dd-MMM-yy  HH:mm') as modified_date,"
					+ "c.modified_by,c.description,c.price_after_discount from [courses] c "
					+" left join [teachers] t on c.course_faculty = t.user_id "
					+" left join [users] u on c.course_faculty = u.user_id "
					
					+" where  course_id is not null  " ; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj1) && !StringUtils.isEmpty(obj1.getCourse_id())) {
				qry = qry + " and c.course_id = ? ";
				arrSize++;
			}
			qry = qry + "order by course_id desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj1) && !StringUtils.isEmpty(obj1.getCourse_id())) {
				pValues[i++] = obj1.getCourse_id();
			}
			obj = (Courses)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<Courses>(Courses.class));
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return obj;
	}

	public boolean updateCourseForm(Courses obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "UPDATE [courses] set "
					+ " course_name= :course_name,course_faculty= :course_faculty,course_status= :course_status,hours= :hours"
					+ ",course_cost= :course_cost,discount= :discount,description= :description,modified_by= :modified_by,modified_date= getdate(),price_after_discount= :price_after_discount"
					+ "  WHERE course_id= :course_id ";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public List<Courses> getMyCoursessList(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			String qry ="SELECT  sc.id ,sus_user_id ,sus_course_id,course_completed,hours,sc.course_cost ,sc.created_date,last_modified "
					+ "  FROM courseTM.dbo.suscribed_courses sc "
					+ "  left join courses c on course_id = sus_user_id "
					+ "  where  sus_user_id = ?  order by last_modified  ";
			int arrSize = 1;
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getUser_id())) {
				pValues[i++] = obj.getUser_id();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Courses>(Courses.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Courses> getAllCoursessList(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select c.id,	c.course_id,	c.course_name	,c.course_faculty,hours,	c.course_status	,c.course_cost,u.user_name,"
					+ "	c.discount,	c.created_date,	c.created_by,c.modified_date,	c.modified_by,c.description from [courses] c  "
					+" left join [teachers] t on c.course_faculty = t.user_id "
					+" left join [users] u on c.course_faculty = u.user_id "
					+ " where c.id is not null and c.id <> '' and c.course_status <> 'Inactive' and c.course_faculty <> ''  ";
		
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Courses>(Courses.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Courses> getSimeslotsLIst(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			String qry =" select time_slot from [time_slots] ts  ";
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Courses>(Courses.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Courses> getSlotsByDateList(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" SELECT convert(varchar, slot_date, 107) as slot_dateOG,slot_date, value time_slot FROM [course_time_slots] c CROSS APPLY STRING_SPLIT(time_slot, ',')   "
					
					+ " where c.time_slot is not null and c.time_slot <> ''  ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCourse_id())) {
				qry = qry + "and c.course_id = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSlot_date())) {
				qry = qry + "and c.slot_date = ? ";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCourse_id())) {
				pValues[i++] = obj.getCourse_id();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSlot_date())) {
				pValues[i++] = obj.getSlot_date();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Courses>(Courses.class));
			if(!StringUtils.isEmpty(obj.getUser_id())) {
				List<Courses> objsList1 = null;
				String qry1 ="  SELECT value [time_and_date] "
						+ "   FROM [cart] c CROSS APPLY STRING_SPLIT([time_and_date], ',')"
						+ "   where c.[time_and_date] is not null and c.[time_and_date] <> ''  and [user_id] = '"+obj.getUser_id()+"'  ";
				objsList1 = jdbcTemplate.query( qry1, new BeanPropertyRowMapper<Courses>(Courses.class));
				for(Courses ccc : objsList1) {
					int v = 0;
					int index = 0;
					String vals[] = ccc.getTime_and_date().split("#");
					String fVal = vals[v].replaceAll("_", "-");
				    		if(fVal.contains(obj.getSlot_date())){
								String val = vals[1];
								if(val.contains("^")) {
									String val2 [] = val.split("\\^");
									while(v < val2.length) {
										String vvv = val2[v];
										for(int b = 0; b< objsList.size(); b++) {
											 if (objsList.get(b).getTime_slot().equals(vvv)) {
										    	 index = b; 
										        }
										}
										objsList.remove(index);
										v++;
									}
								}else {
									String vvv = val;
									for(int b = 0; b< objsList.size(); b++) {
										 if (objsList.get(b).getTime_slot().equals(vvv)) {
									    	 index = b; 
									        }
									}
									objsList.remove(index);
								}
							}
				      }
				}
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean updateSLots(Courses obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			
			String delQry = "delete from course_time_slots where course_id= :course_id and slot_date= :slot_date";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(delQry, paramSource);
		    String input = obj.getTime_slot();
		    String[] elements = input.split(",");
		    LinkedHashSet<String> set = new LinkedHashSet<>(Arrays.asList(elements));
		    String output = String.join(",", set);
		    obj.setTime_slot(output);
		    System.out.println(output);
			String insertQry = "INSERT INTO [course_time_slots] (course_id,slot_date,time_slot,created_date)"
					+ " VALUES "
					+ "(:course_id,:slot_date,:time_slot,getdate())";
			 paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public List<Courses> getDatesLIst(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" SELECT  course_id,convert(varchar, slot_date, 107) as slot_date, slot_date as slot_dateOG FROM [course_time_slots] c  "
					
					+ " where c.time_slot is not null and c.time_slot <> ''  ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCourse_id())) {
				qry = qry + "and c.course_id = ? ";
				arrSize++;
			}
			qry = qry + " and CAST(slot_date AS DATE) >= CAST(GETDATE() AS DATE)";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCourse_id())) {
				pValues[i++] = obj.getCourse_id();
			}
			
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Courses>(Courses.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addToCart(Courses obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			obj.setCourse_status("Active");
			String randID = generateOrderId();
			obj.setCart_id(randID);
			
			User uObj = new User();
			if(StringUtils.isEmpty(uObj.getPayment_id())) {
				uObj.setPayment_id(obj.getCart_id());
			   }
			uObj.setPayment_status("Failed");
			uObj.setAmount_paid(obj.getPrice());
			uObj.setModule("Course Purchase");
			uObj.setStatus("N");
			uObj.setUser_id(obj.getUser_id());
			String insertTrasactionQry = "INSERT into [transactions]  "
					+ " (user_id,payment_id,module,amount_paid,remarks,status,payment_status,payment_intiated_time)"
					+" Values "
					+ " (:user_id,:payment_id,:module,:amount_paid,:remarks,:status,:payment_status,getdate())";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(uObj);		 
		    count = namedParamJdbcTemplate.update(insertTrasactionQry, paramSource);
		   
			String insertQry = "INSERT INTO [cart] (cart_id,course_id,user_id,created_date,time_and_date,price)"
					+ " VALUES "
					+ "(:cart_id,:course_id,:user_id,getdate(),:time_and_date,:price)";
			 paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				String updatetQry = "UPDATE [students] set credits= ([credits]  - cast (:price as decimal (32,0))) where user_id= :user_id ";
				paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(updatetQry, paramSource);
			    
			    uObj.setPayment_status("Success");
			    uObj.setRemarks(obj.getPrice()+" Credits has been Debited by the Purchase!");
				String updateTrasactionQry = "UPDATE [transactions]  "
						+ " set remarks= :remarks,payment_status= :payment_status,payment_completed_time= getdate() "
						+" where user_id= :user_id and payment_id= :payment_id ";
				paramSource = new BeanPropertySqlParameterSource(uObj);		 
			    count = namedParamJdbcTemplate.update(updateTrasactionQry, paramSource);
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}
	
	  public static String generateOrderId() {
	        LocalDateTime now = LocalDateTime.now();
	        String timestamp = now.format(formatter);
	        int randomNum = random.nextInt(1000000);
	        return timestamp + String.format("%06d", randomNum);
	    }

	public List<Courses> getMyTransactions(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" SELECT  c.user_id,payment_id,module,amount_paid,remarks,payment_status,c.status,u.user_name,"
					+ "convert(varchar, payment_intiated_time, 0) as payment_intiated_time,convert(varchar, payment_completed_time, 0) as payment_completed_time "
					+ "FROM [transactions] c "
					+ "left join users u on c.user_id = u.user_id  "
					
					+ " where c.user_id is not null and c.user_id <> ''  ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getUser_id())) {
				qry = qry + "and c.user_id = ? ";
				arrSize++;
			}
			qry = qry + " order by payment_completed_time desc ";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getUser_id())) {
				pValues[i++] = obj.getUser_id();
			}
			
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Courses>(Courses.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Courses> getAllDistictTransactions(Courses object) throws Exception {
		List<Courses> objsList = null;
		try {
			String qry =" SELECT "
					+ "    u.user_id, "
					+ "    u.user_name,u.email_id, "
					+ "    SUM(CASE WHEN t.status = 'P' and [payment_status] = 'Success' THEN CAST(t.amount_paid AS DECIMAL(10, 2)) ELSE 0 END) AS profit, "
					+ "    SUM(CASE WHEN t.status = 'N' and [payment_status] = 'Success' THEN CAST(t.amount_paid AS DECIMAL(10, 2)) ELSE 0 END) AS debit, "
					+ "    SUM(CASE WHEN t.status = 'P' and [payment_status] = 'Success' THEN CAST(t.amount_paid AS DECIMAL(10, 2)) ELSE 0 END) - SUM(CASE WHEN t.status = 'N' THEN CAST(t.amount_paid AS DECIMAL(10, 2)) ELSE 0 END) AS remaining_balance,"
					+ "    convert(varchar, MAX(t.payment_intiated_time), 0) AS payment_intiated_time "
					+ "FROM "
					+ "    transactions t "
					+ "    INNER JOIN users u ON t.user_id = u.user_id "
					+ "GROUP BY "
					+ "    u.user_id, "
					+ "    u.user_name,u.email_id order by MAX(t.payment_intiated_time) desc";
			
			
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Courses>(Courses.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Courses> getPendingActions(Courses cccc) throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" SELECT c.user_id, u.user_name,u.email_id, count(distinct(c.course_id)) as suscribedCoursesCount  "
					+ "FROM cart c "
					+ "JOIN users u ON c.user_id = u.user_id "
					+ "JOIN courses s ON c.course_id = s.course_id ";
					
					qry = qry + " GROUP BY c.user_id, u.user_name,u.email_id ";
					
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Courses>(Courses.class));
			
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Courses> getCoursessDetailsList(Courses obj) throws Exception {
		List<Courses> objsList = null;
		try {
			int arrSize = 0;
			String qry =" SELECT cart.course_id,u.user_id,u.user_name, courses.course_name,course_cost,hours,discount,price_after_discount,course_faculty,users.email_id,users.user_name "
					+ "FROM cart  "
					+ "INNER JOIN courses ON cart.course_id = courses.course_id   "
					+ "INNER JOIN users ON courses.course_faculty = users.user_id "
					+ "  INNER JOIN users u ON cart.user_id = u.user_id  "
					+ " where cart.user_id is not null and cart.user_id <> ''  ";
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getUser_id())) {
				qry = qry + "and cart.user_id = ? ";
				arrSize++;
			}
			qry = qry + " GROUP BY cart.course_id,u.user_id,u.user_name, courses.course_name,course_cost,hours,discount,price_after_discount,course_faculty,users.email_id,users.user_name ";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getUser_id())) {
				pValues[i++] = obj.getUser_id();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Courses>(Courses.class));
			for(Courses cc : objsList) {
				int arrSize3 = 1;
				List<Courses> objsList1 = null;
				String qry2 = "SELECT convert(varchar, slot_date, 107) as slot_dateOG,[slot_date] FROM [course_time_slots] where course_id = ?";
				qry2 = qry2 + " order by  slot_date";
				Object[] pValues1 = new Object[arrSize3];
				int j = 0;
				
				if(!StringUtils.isEmpty(cc) && !StringUtils.isEmpty(cc.getCourse_id())) {
					pValues1[j++] = cc.getCourse_id();
				}
				objsList1 = jdbcTemplate.query( qry2,pValues1, new BeanPropertyRowMapper<Courses>(Courses.class));
				cc.setDatesList(objsList1);
			
		
			for(Courses ccc : objsList1) {
				int arrSize4 = 0;
				List<Courses> objsList4 = null;
				String qry4 =" SELECT convert(varchar, slot_date, 107) as slot_dateOG,slot_date, value time_slot FROM [course_time_slots] c CROSS APPLY STRING_SPLIT(time_slot, ',')   "
						
					+ " where c.time_slot is not null and c.time_slot <> ''  ";
			
			if(!StringUtils.isEmpty(cc) && !StringUtils.isEmpty(cc.getCourse_id())) {
				qry4 = qry4 + "and c.course_id = ? ";
				arrSize4++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(ccc.getSlot_date())) {
				qry4 = qry4 + "and c.slot_date = ? ";
				arrSize4++;
			}
			Object[] pValues4 = new Object[arrSize4];
			int l = 0;
			
			if(!StringUtils.isEmpty(cc) && !StringUtils.isEmpty(cc.getCourse_id())) {
				pValues4[l++] = cc.getCourse_id();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(ccc.getSlot_date())) {
				pValues4[l++] = ccc.getSlot_date();
			}
			objsList4 = jdbcTemplate.query( qry4,pValues4, new BeanPropertyRowMapper<Courses>(Courses.class));
			
				List<Courses> objsList2 = null;
				String qry3 ="  SELECT value [time_and_date] "
						+ "   FROM [cart] c CROSS APPLY STRING_SPLIT([time_and_date], ',')"
						+ "   where c.[time_and_date] is not null and c.[time_and_date] <> ''  and [user_id] = '"+obj.getUser_id()+"'  ";
				objsList2 = jdbcTemplate.query( qry3, new BeanPropertyRowMapper<Courses>(Courses.class));
				
				for(Courses cccc : objsList2) {
					int iIndex = 0;
					int v = 0;
					int index = 0;
					String vals[] = cccc.getTime_and_date().split("#");
					String fVal = vals[v].replaceAll("_", "-");
				    		if(fVal.contains(ccc.getSlot_date())){ 
				    			for (int z = 0; z < objsList1.size(); z++) {
				    			    if (objsList1.get(z).equals(ccc)) {
				    			    	iIndex = z;
				    			        break; // exit the loop as soon as targetPerson is found
				    			    }
				    			}
				    			objsList1.get(iIndex).slot_date = ccc.getSlot_date()+"_checked";
								String val = vals[1];
								if(val.contains("^")) {
									String val2 [] = val.split("\\^");
									while(v < val2.length) {
										String vvv = val2[v];
										for(int b = 0; b< objsList4.size(); b++) {
											 if (objsList4.get(b).getTime_slot().equals(vvv)) {
										    	 index = b; 
										        }
										}
										objsList4.get(index).time_slot = objsList4.get(index).getTime_slot()+"_checked";
										v++;
									}
								}else {
									String vvv = val;
									for(int b = 0; b< objsList4.size(); b++) {
										 if (objsList4.get(b).getTime_slot().equals(vvv)) {
									    	 index = b; 
									        }
									}
									objsList4.get(index).time_slot = objsList4.get(index).getTime_slot()+"_checked";
								}
							}
				    		ccc.setSlotsList(objsList4);
				      }
				}
			}
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}
}
