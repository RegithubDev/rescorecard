package com.resustainability.reisp.login.filer;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.resustainability.reisp.common.UrlGenerator;
import com.resustainability.reisp.dao.UserDao;
import  com.resustainability.reisp.model.User;


public class AuthenticationInterceptor extends HandlerInterceptorAdapter{
	Logger logger = Logger.getLogger(AuthenticationInterceptor.class);
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws IOException {
		String requestURI = null;
		String context_path = null;
		try {
			requestURI = request.getRequestURI();
			UrlGenerator ugObj = new UrlGenerator();
			context_path = ugObj.getContextPath();
			if(requestURI.equals("/"+context_path+"/add-new-user") &&  !requestURI.equals("/"+context_path+"/login")) {
				
				 return true;
			}
			if( !requestURI.equals("/"+context_path+"/") && !requestURI.equals("/"+context_path+"/login") 
					&& !requestURI.equals("/") && !requestURI.equals("/login") && !requestURI.equals("/"+context_path+"/logout")){
				 User userData = (User) request.getSession().getAttribute("user");
				 int session_count = 0;
				 try {
					// session_count =  checkUserLoginDetails(userData);
				 	} finally {
				 	   if(userData == null && !requestURI.equals("/courses/add-user")){
					    	if(request.getRequestURI().contains("/"+context_path+"/")){
					    		request.getSession().invalidate();
					    		response.sendRedirect("/"+context_path+"/login");
					    		return false;
					    	}else{
					    		response.sendRedirect("/login");
					    	}
					    }
				 	  if( session_count > 1 ){
							/*
							 * NamedParameterJdbcTemplate namedParamJdbcTemplate = new
							 * NamedParameterJdbcTemplate(dataSource); String updateQry =
							 * "update [user_audit_log] set user_logout_time=GETDATE()  where user_id= :user_id and user_logout_time is null or  user_logout_time = '' "
							 * ; BeanPropertySqlParameterSource paramSource = new
							 * BeanPropertySqlParameterSource(userData);
							 * namedParamJdbcTemplate.update(updateQry, paramSource);
							 */
							/*
							 * request.getSession().invalidate();
							 * response.sendRedirect("/"+context_path+"/logout"); return false;
							 */
				 	  }
				 	}
			}else {
				if( !requestURI.equals("/"+context_path+"/logout")){
					 User userData = (User) request.getSession().getAttribute("user");
					 String single_login_session_id = (String)request.getSession().getAttribute("SESSION_ID");
					 if(userData != null){
						 int session_count = 0;
						
					 }
				}
			}
		} catch (Exception e) {
			logger.error("preHandle : " + e.getMessage());
			return false;
		}
		  return true;
	}
	public int checkUserLoginDetails(User obj) throws Exception {
		int totalRecords = 0;
		try {
		
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return totalRecords;
		
		
	}
}
