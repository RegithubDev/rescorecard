package com.resustainability.reisp.dao;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;

import com.resustainability.reisp.common.FileUploads;
import com.resustainability.reisp.constants.CommonConstants;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.User;

@Repository
public class DepartmentDao {
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired 
	DataSource dataSource; 

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<Department> getSBUList(Department obj) throws SQLException {
		List<Department> menuList = null;
		try{  
			String qry = "select sbu_code,sbu_name from [sbu] where status <> 'Inactive' ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Department>(Department.class));

		}catch(Exception e){  
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		} 
		return menuList; 
	}

	public List<Department> getDepartmentsList(Department obj) throws Exception {
		List<Department> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select ";
					qry = qry +"(select count( department_code) from department where department_code is not null  ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
						qry = qry + " and department_code = ?";
						arrSize++;
					}

					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
						qry = qry + " and  assigned_to_sbu like '"+obj.getSbu_code()+"%'  ";
					}
					qry = qry +  " ) as all_department ,";
					qry = qry +	"(select count( department_code) from department where department_code is not null and status = 'Active' ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
						qry = qry + " and department_code = ?";
						arrSize++;
					}

					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
						qry = qry + " and  assigned_to_sbu like '"+obj.getSbu_code()+"%'  ";
					}
							qry = qry + " ) as active_department,"
							+ "(select count( department_code) from department where department_code is not null   and status <> 'Active' ";
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
								qry = qry + " and department_code = ?";
								arrSize++;
							}

							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
								qry = qry + " and status = ? ";
								arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
								qry = qry + " and  assigned_to_sbu like '"+obj.getSbu_code()+"%'  ";
							}
							qry = qry + " ) as inActive_department,"
					+ "s.id,s.department_code,s.created_by,FORMAT(s.created_date, 'dd-MMM-yy  HH:mm') as created_date,FORMAT(s.modified_date, 'dd-MMM-yy  HH:mm') as modified_date,"
					+ "s.modified_by,s.department_name,p.user_name,p1.user_name as  modified_by,assigned_to_sbu as assigned_to_sbu_multiple,s.status from [department] s "
					+ "left join user_profile p on s.created_by = p.user_id "//cross apply STRING_SPLIT ([assigned_to_sbu], ',')
					+ "left join user_profile p1 on s.modified_by = p1.user_id "
					+ " where s.department_code is not null and s.department_code <> '' ";

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and assigned_to_sbu like '"+obj.getSbu_code()+"%' ";
			}
			qry = qry + " ORDER BY s.created_date Desc ";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Department>(Department.class));

		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Department> getSBUsFilterList(Department obj) throws Exception {
		List<Department> objsList = new ArrayList<Department>();
		try {
			String qry = "SELECT  Value as sbu_code,c.sbu_name FROM [department] s cross apply STRING_SPLIT ([assigned_to_sbu], ',') "
					+ " left join [sbu] c on Value = c.sbu_code "
					+ " where Value is not null and Value <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and  assigned_to_sbu like '"+obj.getSbu_code()+"%'  ";
			}
			qry = qry + "group by Value,c.sbu_name order by  Value asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Department>(Department.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Department> getDepartmentFilterList(Department obj) throws Exception {
		List<Department> objsList = new ArrayList<Department>();
		try {
			String qry = "SELECT department_code, department_name FROM [department] s "
					+ " where department_code is not null and department_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and  assigned_to_sbu like '"+obj.getSbu_code()+"%'  ";
			}
			qry = qry + " order by department_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Department>(Department.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Department> getStatusFilterListFromDepartment(Department obj) throws Exception {
		List<Department> objsList = new ArrayList<Department>();
		try {
			String qry = "SELECT status FROM [department] s "
					+ " where status is not null and status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and  assigned_to_sbu like '"+obj.getSbu_code()+"%'  ";
			}
			qry = qry + " group by status order by status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Department>(Department.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addDepartment(Department obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [department] (assigned_to_sbu,department_code,department_name,status,created_by,created_date) VALUES (:assigned_to_sbu,:department_code,:department_name,:status,:craeted_by,getdate())";
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

	public boolean updateDepartment(Department obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [department] set assigned_to_sbu= :assigned_to_sbu,department_code= :department_code,department_name=:department_name,status= :status, modified_by= :modified_by,modified_date= getdate() "
					+ " where id= :id ";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(updateQry, paramSource);
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

	public List<Department> checkUniqueIfForDept(Department obj) throws Exception {
		List<Department> objsList = new ArrayList<Department>();
		try {
			String qry = "SELECT department_code FROM [department]  "
					+ " where status is not null and status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and department_code = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}

			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Department>(Department.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Department> getDepartmentMasterList(Department obj) throws Exception {
		List<Department> objsList = new ArrayList<Department>();
		try {
			String qry = "SELECT s.sbu_code,sbu_name,s.id,department_code,s.department_name,s.url ,s.status,s.created_by,"
					+ "FORMAT(s.created_date, 'dd-MMM-yy  HH:mm') as created_date,FORMAT(s.modified_date, 'dd-MMM-yy  HH:mm') as modified_date,"
					+ "s.modified_by,p.user_name,p1.user_name as  modified_by from [department_master] s "
					+ "left join user_profile p on s.created_by = p.user_id "
					+ "left join user_profile p1 on s.modified_by = p1.user_id "
					+ "left join sbu ss on s.sbu_code = ss.sbu_code "
					+ " where s.department_code is not null and s.department_code <> '' ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Department>(Department.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addDepartmentMaster(Department obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			obj.setCommon_url("/re-curls");
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [department_master] (sbu_code,department_code,department_name,priority,status,created_by,created_date,common_url)"
					+ " VALUES (:sbu_code,:department_code,:department_name,:priority,:status,:craeted_by,getdate(),:common_url)";
			
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

	public boolean updateDepartmentMaster(Department obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [department_master] set sbu_code= :sbu_code,department_code= :department_code,department_name=:department_name,status= :status, modified_by= :modified_by,modified_date= getdate() "
					+ " where id= :id ";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(updateQry, paramSource);
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

	public List<User> getCategoryFilterListForDCForm(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT id as catID,dm_category from [department_category] s "
					+ " where s.dm_category is not null and s.dm_category <> '' ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getSubCategoryFilterListForDCForm(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT s.id as subCatId, sub_category_title from [sub_category] s "
					+ "left join department_category dc on s.category = dc.id "
					+ " where s.sub_category_title is not null and s.sub_category_title <> '' ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	 private static String removeLastComma(String inputString) {
	        // Check if the string contains a comma
		 if (!inputString.isEmpty() && inputString.contains(",")) {
	            // Remove the first comma
	            //inputString = inputString.substring(1);

	            // Remove the last comma
	            int lastCommaIndex = inputString.lastIndexOf(",");
	            inputString = inputString.substring(0, lastCommaIndex) + inputString.substring(lastCommaIndex + 1);

	            System.out.println("Original string: ," + inputString);
	            System.out.println("String without first and last comma: " + inputString);
	        } 
	        // Return the original string if no comma is found
	        return inputString;
	    }
	 
	public boolean addDCForm(User obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			 String fileName  = "";
			 String file_Name  = "";
			    for(int i =0; i < obj.getMediaList().length; i++) {
			    	MultipartFile multipartFile = obj.getMediaList()[i];
					if (null != multipartFile && !multipartFile.isEmpty() || !StringUtils.isEmpty(obj.getDocs()) && obj.getDocs().length > 0) {
						if(null != multipartFile && !multipartFile.isEmpty()) {
							String saveDirectory = CommonConstants.FILE_SAVING_PATH +
									obj.getDepartment_code() + File.separator+ obj.getCategory() + File.separator+ obj.getSub_category() + File.separator;
							fileName = multipartFile.getOriginalFilename();
							if (null != multipartFile && !multipartFile.isEmpty()) {
								FileUploads.singleFileSaving(multipartFile, saveDirectory, fileName);
							}
						}
						file_Name = file_Name+fileName+",";
						//file_Name = removeLastComma(file_Name);
						fileName = file_Name;
						obj.setAttachments(removeLastComma(fileName));
					}
			    }
			    if(!StringUtils.isEmpty(obj.getDocs())) {
				    for(int i =0; i < obj.getDocs().length; i++) {
				    	fileName = fileName+","+obj.getDocs()[i]+",";
						obj.setAttachments(removeLastComma(fileName));
				    }
			    }
			    String stringWithSingleQuotes =  null;
				if(!StringUtils.isEmpty(obj.getTitle_icon())) {
					stringWithSingleQuotes = obj.getTitle_icon().replace("\"", "'");
				}
				obj.setStatus("Active");
		        obj.setTitle_icon(stringWithSingleQuotes);
			String insertQry = "INSERT INTO [dept_content] (company_code,	sbu_code,	department_code	,category,	sub_category,	content_title,	title_icon	,"
					+ "document_type,	Attachments,	link,	description,	url,	status,	created_by,	created_date)"
					+ " VALUES (:company_code,	:sbu_code,	:department_code	,:category,	:sub_category,	:content_title,	:title_icon	,"
					+ ":document_type,	:Attachments,	:link,	:description,	:url,	:status,	:created_by,	getdate())";
			
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

	public User getDCFORM(User user) throws Exception {
		User obj = null;
		try {
			  String qry = "SELECT dc.id,dc.[department_code],dc.company_code,company_name,sbu_name,dc.sbu_code,dc.category,dc.sub_category,dc.content_title,dc.title_icon,dc.document_type,dc.Attachments,dc.link,"
	            		+ "dc.description,dc.url,dc.status,dm.department_name, dc.[status],"
	            		+ "dc.created_by,FORMAT(dc.created_date, 'dd-MMM-yy  HH:mm') as created_date,FORMAT(dc.modified_date, 'dd-MMM-yy  HH:mm') as modified_date,"
	            		+ "dc.modified_by,dm.department_name,p.user_name,p1.user_name as  modified_by "
	            		+ " FROM [dept_content] dc "
	            		+ "left join department_master dm on dc.department_code = dm.department_code "
	            		+ "left join user_profile p on dc.created_by = p.user_id "
						+ "left join user_profile p1 on dc.modified_by = p1.user_id "
	            		+ "left join company c on dc.company_code = c.company_code "
	            		+ "left join sbu s on dc.sbu_code = s.sbu_code "
	            		+ " where dc.[department_code] is not null ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				qry = qry + " and dc.id = ? ";
				arrSize++;
			}
			qry = qry + "order by sub_category desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				pValues[i++] = user.getId();
			}
			obj = (User)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<User>(User.class));
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return obj;
	}

	public boolean updateDCForm(User obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [dept_content] set title_icon= :title_icon,content_title= :content_title,link=:link,status= :status,description= :description, modified_by= :modified_by,modified_date= getdate() "
					+ " where id= :id ";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(updateQry, paramSource);
			if(count > 0) {
				flag = true;
				 String fileName  = "";
				 String file_Name  = "";
				    for(int i =0; i < obj.getMediaListUpdate().length; i++) {
				    	MultipartFile multipartFile = obj.getMediaListUpdate()[i];
						if (null != multipartFile && !multipartFile.isEmpty() || !StringUtils.isEmpty(obj.getDocs()) && obj.getDocs().length > 0) {
							if(null != multipartFile && !multipartFile.isEmpty()) {
								String saveDirectory = CommonConstants.FILE_SAVING_PATH +
										obj.getDepartment_code() + File.separator+ obj.getCategory() + File.separator+ obj.getSub_category() + File.separator;
								fileName = multipartFile.getOriginalFilename();
								if (null != multipartFile && !multipartFile.isEmpty()) {
									FileUploads.singleFileSaving(multipartFile, saveDirectory, fileName);
								}
							}
							file_Name = file_Name+fileName+",";
							//file_Name = removeLastComma(file_Name);
							fileName = file_Name;
							obj.setAttachments(removeLastComma(fileName));
						}
						updateQry = "UPDATE [dept_content] set Attachments= :Attachments where id= :id ";
						paramSource = new BeanPropertySqlParameterSource(obj);		 
					    count = namedParamJdbcTemplate.update(updateQry, paramSource);
				    }
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public List<Department> getDepartmentActionFilterList(Department obj) throws Exception {
		List<Department> objsList = new ArrayList<Department>();
		try {
			String qry = "SELECT department_code,s.department_name from [department_master] s "
					+ " where s.department_code is not null and s.department_code <> '' ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Department>(Department.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Department> getStatusActionFilterList(Department obj) throws Exception {
		List<Department> objsList = new ArrayList<Department>();
		try {
			String qry = "SELECT distinct(status) from [department_master] s "
					+ " where s.status is not null and s.status <> '' ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Department>(Department.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}





}