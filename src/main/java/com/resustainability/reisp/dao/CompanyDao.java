package com.resustainability.reisp.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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

import com.resustainability.reisp.common.DBConnectionHandler;
import com.resustainability.reisp.common.EncryptDecrypt;
import com.resustainability.reisp.common.FileUploads;
import com.resustainability.reisp.constants.CommonConstants;
import com.resustainability.reisp.model.Company;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.User;

@Repository
public class CompanyDao {

	@Autowired
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	
	@Autowired
	DataSourceTransactionManager transactionManager;
	
	public List<Company> getCompaniesList(Company obj) throws Exception {
		List<Company> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select ";
					qry = qry +"(select count( company_code) from company where company_code is not null  ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
						qry = qry + " and company_code = ? ";
						arrSize++;
					}
					qry = qry +  " ) as all_companies ,";
					qry = qry +	"(select count( company_code) from company where company_code is not null and status = 'Active' ";
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
										qry = qry + "  and status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
										qry = qry + " and company_code = ? ";
										arrSize++;
									}
									qry = qry + " ) as active_companies,"
									+ "(select count( company_code) from company where company_code is not null   and status <> 'Active' ";
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
										qry = qry + " and status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
										qry = qry + " and company_code = ? ";
										arrSize++;
									}
									qry = qry + " ) as inActive_companies,"
					+ "c.id	,company_code,	company_name,	status,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,up.user_name as 	"
					+ " created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,up1.user_name as  modified_by from [company] c "
					+ " left join [user_profile] up on c.created_by = up.user_id "
					+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
					+ " where c.company_code is not null and c.company_code <> '' ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + " and c.company_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and status = ? ";
				arrSize++;
			}
			qry = qry + " ORDER BY c.created_date Desc ";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<Company>(Company.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Company> getCompanyFilterList(Company obj) throws Exception {
		List<Company> objsList = new ArrayList<Company>();
		try {
			String qry = "SELECT  id,	company_code,	company_name,	status "
					+ " FROM [company] where company_code is not null and company_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + "and company_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and status = ? ";
				arrSize++;
			}
			qry = qry + " group by id,	company_code,	company_name,	status order by company_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}	
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Company>(Company.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public Company getStacksDetails(Company obj) throws SQLException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Company companyDetails = null;
		int i = 1;
		try{  
			con = dataSource.getConnection();
			String qry = "SELECT TOP 1 (select count( company_code) from company where company_code is not null  ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
						qry = qry + " and company_code = ? ";
					}
					qry = qry +  " ) as all_companies ,"
					+ "(select count( company_code) from company where company_code is not null ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
					}else {
						qry = qry + " and status = 'Active' ";
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
						qry = qry + " and company_code = ? ";
					}
					qry = qry + " ) as active_companies,"
					+ "(select count( company_code) from company where company_code is not null ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
					}else {
						qry = qry + " and status <> 'Active' ";
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
						qry = qry + " and company_code = ? ";
					}
					qry = qry + " ) as inActive_companies  FROM company";
			stmt = con.prepareStatement(qry);
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				stmt.setString(i++, obj.getStatus());
				stmt.setString(i++, obj.getStatus());
				stmt.setString(i++, obj.getStatus());
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				stmt.setString(i++, obj.getCompany_code());
				stmt.setString(i++, obj.getCompany_code());
				stmt.setString(i++, obj.getCompany_code());
			}
			
			rs = stmt.executeQuery();  
			if(rs.next()) {
				companyDetails = new Company();
				companyDetails.setAll_companies(rs.getString("all_companies"));
				companyDetails.setActive_companies(rs.getString("active_companies"));
				companyDetails.setInActive_companies(rs.getString("inActive_companies"));
			}
		}catch(Exception e){ 
			throw new SQLException(e.getMessage());
		}finally {
			DBConnectionHandler.closeJDBCResoucrs(con, stmt, rs);
		}
		return companyDetails;
	}

	public boolean addCompany(Company obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [company] (company_name,company_code,status,created_by) VALUES (:company_name,:company_code,:status,:created_by)";
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

	public boolean updateCompany(Company obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [company] set company_name= :company_name,company_code= :company_code,status=:status,modified_by= :modified_by,modified_date= getdate() "
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

	public List<Company> getStatusFilterList(Company obj) throws Exception {
		List<Company> objsList = new ArrayList<Company>();
		try {
			String qry = "SELECT  status "
					+ " FROM [company] where status is not null and status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + "and status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + " and company_code = ? ";
				arrSize++;
			}
			qry = qry + " group by  status order by status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Company>(Company.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<Company> checkUniqueIfForCompany(Company obj) throws Exception {
		List<Company> objsList = new ArrayList<Company>();
		try {
			String qry = "SELECT company_code FROM [company]  "
					+ " where status is not null and status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + " and company_code = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<Company>(Company.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getreonecategory(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		List<User> employeesDistinctByName = new ArrayList<User>();
		try {
			String qry = "SELECT  c.id as catID,c.department_code,dm.department_name,dm_category,c.status,dm.status as dept_status,no_further_categories,c.link,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
					+ "up.user_name as created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,"
					+ "up1.user_name as  modified_by FROM [department_category] c "
					+ " left join [department_master] dm on c.department_code = dm.department_code "
					+ " left join [user_profile] up on c.created_by = up.user_id "
					+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
					+ "where c.status is not null and c.status <> 'Inactive' and no_further_categories is null "; 
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and c.department_code = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<User>(User.class));
			Set<String> nameSet = new HashSet<>();
			employeesDistinctByName = objsList.stream()
			            .filter(e -> nameSet.add(e.getDepartment_code()))
			            .collect(Collectors.toList());
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addreonecategory(User obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			
			String insertQry = "INSERT INTO [department_category] (department_code,description,dm_category,no_further_categories,link,status,created_by,created_date) "
					+ "VALUES "
					+ "(:department_code,:description,:dm_category,:no_further_categories,:link,:status,:created_by,getdate())";
			//String [] categorys = obj.getDm_category().split(",");
			//String [] description = obj.getDescription().split(",");
			//String [] statuss = obj.getStatus().split(",");
			//int i = 0;
			//for (String set : categorys) {
				//obj.setDm_category(categorys[i]);
				//obj.setDescription(description[i]);
				//obj.setStatus(statuss[i]);
				BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			  //  i++;
			//}
			
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
	
	
	public boolean updatereonecategory(User obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			/*
			 * 
			 * 
			 * String insertQry =
			 * "INSERT INTO [department_category] (department_code,description,dm_category,status,created_by,created_date) "
			 * + "VALUES " +
			 * "(:department_code,:description,:dm_category,:status,:created_by,getdate())";
			 */
			String updateQry = "UPDATE [department_category] SET no_further_categories= :no_further_categories,link= :link,dm_category = :dm_category,description = :description, status = :status, modified_by = :modified_by,modified_date = getdate() WHERE id = :id";
			/*
			 * String [] categorys = obj.getDm_category().split(","); String [] description
			 * = obj.getDescription().split(","); String [] statuss =
			 * obj.getStatus().split(","); String [] ids = obj.getId().split(",");
			 */
			//int i = 0;
			/*for (String set : categorys) {
				obj.setDm_category(categorys[i]);
				obj.setDescription(description[i]);
				obj.setStatus(statuss[i]);
				obj.setId(ids[i]);*/
				
				/*if(ids[i].equalsIgnoreCase("New")) {
					BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
				    count = namedParamJdbcTemplate.update(insertQry, paramSource);
				}else {*/
					BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
				    count = namedParamJdbcTemplate.update(updateQry, paramSource);
				//}
				
				/*
				 * i++; }
				 */
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

	public User getCategoryDocumentDEtails(User user) throws Exception {
		List<User> objsList = new ArrayList<User>();
		List<User> employeesDistinctByName = new ArrayList<User>();
		User obj = null;
		try {
			String qry = "SELECT  c.id,c.department_code,dm.department_name,dm_category,c.status,c.description,no_further_categories,c.link,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
					+ "up.user_name as created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,"
					+ "up1.user_name as  modified_by FROM [department_category] c "
					+ " left join [department_master] dm on c.department_code = dm.department_code "
					+ " left join [user_profile] up on c.created_by = up.user_id "
					+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
					+ "where c.status is not null "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				qry = qry + " and c.id = ? ";
				arrSize++;
			}
			qry = qry + "order by dm_category desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				pValues[i++] = user.getId();
			}
			obj = (User)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<User>(User.class));
			
			if(StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				String qryDetails =  "SELECT  c.id,c.department_code,dm.department_name,dm_category,c.description,c.status,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
						+ "up.user_name as created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,"
						+ "up1.user_name as  modified_by FROM [department_category] c "
						+ " left join [department_master] dm on c.department_code = dm.department_code "
						+ " left join [user_profile] up on c.created_by = up.user_id "
						+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
						+ "where c.status is not null and c.department_code = ? " 
						+ "order by dm_category asc ";
				
				objsList = jdbcTemplate.query(qryDetails, new Object[] {obj.getDepartment_code()}, new BeanPropertyRowMapper<User>(User.class));
				obj.setCategoryList(objsList);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return obj;
	}

	public List<User> getreoneSubcategory(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		List<User> employeesDistinctByName = new ArrayList<User>();
		try {
			String qry = "SELECT  c.id as subCatId, dc.id as catID,c.department_code,dm.status as dept_status ,no_further_categories,dc.link,dc.status as cat_status, c.icon_text,dm.department_name,c.category,c.sub_category_title,dm_category,c.status,c.description,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
					+ "up.user_name as created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,"
					+ "up1.user_name as  modified_by FROM [sub_category] c "
					+ " left join [department_master] dm on c.department_code = dm.department_code "
					+ " left join [department_category] dc on c.category = dc.id "
					+ " left join [user_profile] up on c.created_by = up.user_id "
					+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
					+ "where c.department_code is not null "; 
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and c.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and dc.id = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and c.id = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and c.status = ? ";
				arrSize++;
			}
			qry = qry + " order by c.category desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<User>(User.class));
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addreoneSubcategory(User obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			String file_name = "";
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			if(!StringUtils.isEmpty(obj.getMediaList())) {
				for (int i = 0; i < (obj.getMediaList().length); i++) {
					MultipartFile multipartFile = obj.getMediaList()[i];
					if (null != multipartFile && !multipartFile.isEmpty()) {
						String saveDirectory = CommonConstants.FILE_SAVING_PATH + obj.getDepartment_code() + File.separator+ obj.getCategory() + File.separator;
						String fileName = multipartFile.getOriginalFilename();
						//obj.setCreated_date(DateParser.parse(date));
						if (null != multipartFile && !multipartFile.isEmpty()) {
							FileUploads.singleFileSaving(multipartFile, saveDirectory, fileName);
						}
						file_name = file_name+ fileName+",";
						obj.setDocumants(file_name);
					}
				}
				}
			  String stringWithSingleQuotes =  null;
			if(!StringUtils.isEmpty(obj.getIcon_text())) {
				stringWithSingleQuotes = obj.getIcon_text().replaceAll("\"", "'");
			}
	        obj.setIcon_text(stringWithSingleQuotes);
			obj.setStatus("Active");
			String insertQry = "INSERT INTO [sub_category]"
					+ " (department_code,category,sub_category_title,icon_text,description,documants,created_by,created_date,status) "
					+ "VALUES "
					+ "(:department_code,:category,:sub_category_title,:icon_text,:description,:documants,:created_by,getdate(),:status)";
		
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

	public boolean updatereoneSubcategory(User obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			  String stringWithSingleQuotes =  null;
				if(!StringUtils.isEmpty(obj.getIcon_text())) {
					stringWithSingleQuotes = obj.getIcon_text().replaceAll("\"", "'");
				}
		        obj.setIcon_text(stringWithSingleQuotes);
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [sub_category] SET sub_category_title = :sub_category_title,icon_text =:icon_text,description =:description,"
					+ " status = :status, modified_by = :modified_by,modified_date = getdate() WHERE id = :id";
			
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

	public User getSubCategoryDocumentDEtails(User user) throws Exception {
		List<User> objsList = new ArrayList<User>();
		List<User> employeesDistinctByName = new ArrayList<User>();
		User obj = null;
		try {
			String qry = "SELECT  c.id,c.department_code,c.description,dm.department_name,category,dm_category,no_further_categories,dc.link,sub_category_title,icon_text,documants,c.status,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
					+ "up.user_name as created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,"
					+ "up1.user_name as  modified_by FROM [sub_category] c "
					+ " left join [department_master] dm on c.department_code = dm.department_code "
					+ " left join [department_category] dc on c.category = dc.id "
					+ " left join [user_profile] up on c.created_by = up.user_id "
					+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
					+ "where c.status is not null "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				qry = qry + " and c.id = ? ";
				arrSize++;
			}
			qry = qry + "order by category desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				pValues[i++] = user.getId();
			}
			obj = (User)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<User>(User.class));

		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return obj;
	}

	public List<User> getreonecategory1(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		List<User> employeesDistinctByName = new ArrayList<User>();
		try {
			String qry = "SELECT  c.id  as catID,c.department_code,dm.status as dept_status,dm.department_name,dm_category,c.status,no_further_categories,c.link,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
					+ "up.user_name as created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,"
					+ "up1.user_name as  modified_by FROM [department_category] c "
					+ " left join [department_master] dm on c.department_code = dm.department_code "
					+ " left join [user_profile] up on c.created_by = up.user_id "
					+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
					+ "where c.status is not null  "; 
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and c.department_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				qry = qry + " and c.dm_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and c.status = ? ";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				pValues[i++] = obj.getDm_category();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<User>(User.class));
			Set<String> nameSet = new HashSet<>();
			/*
			 * employeesDistinctByName = objsList.stream() .filter(e ->
			 * nameSet.add(e.getDepartment_code())) .collect(Collectors.toList());
			 */
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getreoneSubcategory1(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		List<User> employeesDistinctByName = new ArrayList<User>();
		try {
			String qry = "SELECT  c.id,c.department_code,dm.department_name,c.category,c.sub_category_title,c.status,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
					+ "up.user_name as created_by,FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date,"
					+ "up1.user_name as  modified_by FROM [sub_category] c "
					+ " left join [department_master] dm on c.department_code = dm.department_code "
					+ " left join [user_profile] up on c.created_by = up.user_id "
					+ " left join [user_profile] up1 on c.modified_by = up1.user_id "
					+ "where c.department_code is not null "; 
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and c.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and c.category = ? ";
				arrSize++;
			}
			qry = qry + "order by c.category desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<User>(User.class));
			Set<String> nameSet = new HashSet<>();
			employeesDistinctByName = objsList.stream()
			            .filter(e -> nameSet.add(e.getDepartment_code()))
			            .collect(Collectors.toList());
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return employeesDistinctByName;
	}

	public List<User> getDepartmentfilterInCat(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT  distinct(c.department_code) as department_code,dm.department_name FROM [department_category] c "
					+ " left join [department_master] dm on c.department_code = dm.department_code "
					+ "where c.department_code is not null "; 
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and c.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				qry = qry + " and c.dm_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and c.status = ? ";
				arrSize++;
			}
			qry = qry + " group by c.department_code,dm.department_name order by c.department_code desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				pValues[i++] = obj.getDm_category();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<User>(User.class));

		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getCategoryfilterInCat(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT  distinct(c.dm_category) as dm_category FROM [department_category] c "
					+ "where c.department_code is not null "; 
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and c.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				qry = qry + " and c.dm_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and c.status = ? ";
				arrSize++;
			}
			qry = qry + " order by c.dm_category desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				pValues[i++] = obj.getDm_category();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<User>(User.class));

		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getStatusfilterInCat(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT  distinct(c.status) as status FROM [department_category] c "
					+ "where c.department_code is not null "; 
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and c.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				qry = qry + " and c.dm_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and c.status = ? ";
				arrSize++;
			}
			qry = qry + " order by c.status desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDm_category())) {
				pValues[i++] = obj.getDm_category();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<User>(User.class));

		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	

}
