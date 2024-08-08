package com.resustainability.reisp.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.SBU;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.model.UserPaginationObject;
import com.resustainability.reisp.service.CompanyService;
import com.resustainability.reisp.service.IRMService;
import com.resustainability.reisp.service.UserService;

@Controller
public class HomeController {
	 
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    } 
	Logger logger = Logger.getLogger(HomeController.class);
	  
	@Autowired  
	UserService service;

	@Autowired
	IRMService service2;
	
	@Autowired
	CompanyService serviceC;
	
	@Value("${Login.Form.Invalid}")
	public String invalidUserName;

	
	@RequestMapping(value = "/subcategory_form", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView subcategory_form(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.subcategory_form);
		try {
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	@RequestMapping(value = "/category", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView category_form(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.category_form);
		try {
			List <User> departmentsList = service.getDepartmentsListForCategory(user);
			model.addObject("departmentsList", departmentsList);
			
			/*
			 * List <User> catagoryList = service.getCatagoryList(user);
			 * model.addObject("catagoryList", catagoryList);
			 */
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	

	
	
	@RequestMapping(value = "/Projects", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView projects(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.projectsPage);
	try {
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	@RequestMapping(value = "/recycling", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView recycling(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.recycling);
		try {
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	@RequestMapping(value = "/legal", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView legal(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.legal);
	try {
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	@RequestMapping(value = "/safety", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView safety(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.safety);
	try {
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	@RequestMapping(value = "/waste", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView waste(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.waste);
	try {
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	@RequestMapping(value = "/gallery", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView gallery(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.gallery);
	try {
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	
	
	
	
	@RequestMapping(value = "/msw", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView msw(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.msw);
	try {
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	@RequestMapping(value = "/busines-dev", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView business(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.business);
	try {
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	@RequestMapping(value = "/ajax/getGallaryByDept", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getIRMHistoryList(@ModelAttribute User obj,HttpSession session) {
		List<User> bannerList = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");
			
			bannerList = service.getBannerList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getIRMHistoryList : " + e.getMessage());
		}
		return bannerList;
	}
	
	@RequestMapping(value = "/re-curls/{department_code}/{department_name}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView commonUrls(@ModelAttribute User user,@PathVariable("department_code") String department_code,@PathVariable("department_name") String department_name , HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.categoryMaster);
	try {
		user.setDepartment_code(department_code);
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> catagoryList = service.getCatagoryList(user);
        model.addObject("catagoryList", catagoryList);
        
        List <User> bannerList = service.getBannerList(user);
        model.addObject("bannerList", bannerList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	@RequestMapping(value = "/subcat1/{department_code}/{department_name}/{dm_category}/{catID}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView subCategoryView(@ModelAttribute User user,@PathVariable("department_code") String department_code,@PathVariable("department_name") String department_name 
			,@PathVariable("dm_category") String dm_category ,@PathVariable("catID") String catID 
			, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.categoryMaster2);
	try {
		user.setDepartment_code(department_code);
		user.setCategory(catID);
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> reoneSubcategory = serviceC.getreoneSubcategory(user);
        model.addObject("reoneSubcategory", reoneSubcategory);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	@RequestMapping(value = "/subcat/{department_code}/{department_name}/{dm_category}/{sub_category_title}/{catID}/{subCatId}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView subDeptConView(@ModelAttribute User user,@PathVariable("department_code") String department_code,@PathVariable("dm_category") String dm_category 
			,@PathVariable("sub_category_title") String sub_category_title,@PathVariable("catID") String catID,@PathVariable("subCatId") String subCatId , HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.subcategoryMaster);
	try {
		user.setDepartment_code(department_code);
		user.setCategory(catID);
		user.setSub_category(subCatId);
		List <User> departmentsList = service.getDepartmentsList(user);
		model.addObject("departmentsList", departmentsList);
		List <User> departmentcontentList = service.getDeptContentListView(user);
        model.addObject("departmentcontentList", departmentcontentList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	
	
	@RequestMapping(value = "/Admin", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView admin(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.AdminPage);
		try {
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
			  
		} catch (Exception e) { 
			e.printStackTrace();  
		}  
		return model; 
	} 
	

	@RequestMapping(value = "/F&A", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView finance(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.FinancePage);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	} 
	@RequestMapping(value = "/bmw", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView bmw(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.bmw);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	} 
	
	@RequestMapping(value = "/contracts", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView contracts(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.contracts);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	} 
	@RequestMapping(value = "/corp", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView comunication(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.comunication);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	} 
	
	@RequestMapping(value = "/Incin-IWM", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView iwm(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.iwmPage);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			List <User> catagoryList = service.getCatagoryList(user);
            model.addObject("catagoryList", catagoryList);
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	}
	
	@RequestMapping(value = "/departments-master", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView departmentsMaster(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.departmentsMaster);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			  
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	}
	
	
	@RequestMapping(value = "/settings", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView settings(@ModelAttribute User ss, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.settings);
		try { 
			List <User> departmentsList = service.getDepartmentsList(null);
			model.addObject("departmentsList", departmentsList);
			  
			List <User> settingList = service.getSettingsList(ss);
			model.addObject("settingList", settingList);
		} catch (Exception e) { 
			e.printStackTrace();    
		} 
		return model; 
	}
	

	
	@RequestMapping(value = "/deps", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView deps(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.deps);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
		} catch (Exception e) { 
			e.printStackTrace();    
		} 
		return model; 
	}
	
	@RequestMapping(value = "/reone-category", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView reonecategory(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.reonecategory);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	}
	@RequestMapping(value = "/reone-subcategory", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView reonesubcategory(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.reonesubcategory);
		try { 
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	}
	@RequestMapping(value = "/active-dep", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView activedepartment(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.activedepartment);
		try { 
			List <User> deptContentList = service.getDeptContentList(user);
			model.addObject("deptContentList", deptContentList);
		} catch (Exception e) { 
			e.printStackTrace();   
		} 
		return model; 
	}
	
	
	
	@RequestMapping(value = "/home", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView user(@ModelAttribute User user,IRM obj, HttpSession session) {
		ModelAndView model = null;
		String userId=null;
		String userName = null;
		String role = null;
		List<IRM> companiesList = null;
		try {   
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");
			String email = (String) session.getAttribute("USER_EMAIL");
			obj.setRole(role);
			obj.setUser(userId);
			User uBoj = new User();
			uBoj.setEmail_id(email);
			User userDetails = service.validateUser(uBoj);
			//companiesList = service2.getIRMList(obj);
			user.setUser_id(userId);
			user.setRole(role);
			List<User> rewardsList = service.getRewardsHistory(user);
			if(role.equals("Admin") || role.equals("Management")) {
				 model = new ModelAndView(PageConstants.dashboardAdmin);
				 model.addObject("rewardsList", rewardsList);
				 model.addObject("reward_points", userDetails.getReward_points());
				 if(!StringUtils.isEmpty(companiesList) && companiesList.size() > 0) {
					 model.addObject("all_irm", companiesList.get(0).getAll_irm());
					 model.addObject("active_irm", companiesList.get(0).getActive_irm());
					 model.addObject("inActive_irm", companiesList.get(0).getInActive_irm());
					 model.addObject("not_assigned", companiesList.get(0).getNot_assigned());
				 }
			}else if(role.equals("User")) {
				 model = new ModelAndView(PageConstants.dashboardAdmin);
				 model.addObject("rewardsList", rewardsList);
				 model.addObject("reward_points", userDetails.getReward_points());
				 if(!StringUtils.isEmpty(companiesList) && companiesList.size() > 0) {
					 model.addObject("all_irm", companiesList.get(0).getAll_irm());
					 model.addObject("active_irm", companiesList.get(0).getActive_irm());
					 model.addObject("inActive_irm", companiesList.get(0).getInActive_irm());
					 model.addObject("not_assigned", companiesList.get(0).getNot_assigned());
				 }
			}else {
				model = new ModelAndView(PageConstants.dashboardAdmin);
				model.addObject("rewardsList", rewardsList);
				 model.addObject("reward_points", userDetails.getReward_points());
				 if(!StringUtils.isEmpty(companiesList) && companiesList.size() > 0) {
					 model.addObject("all_irm", companiesList.get(0).getAll_irm());
					 model.addObject("active_irm", companiesList.get(0).getActive_irm());
					 model.addObject("inActive_irm", companiesList.get(0).getInActive_irm());
					 model.addObject("not_assigned", companiesList.get(0).getNot_assigned());
				 }
			}
			List <User> departmentsList = service.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/ajax/get-users", method = { RequestMethod.POST, RequestMethod.GET })
	public void getUsersList(@ModelAttribute User obj, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws IOException {
		PrintWriter pw = null;
		//JSONObject json = new JSONObject();
		String json2 = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");

			pw = response.getWriter();
			//Fetch the page number from client
			Integer pageNumber = 0;
			Integer pageDisplayLength = 0;
			if (null != request.getParameter("iDisplayStart")) {
				pageDisplayLength = Integer.valueOf(request.getParameter("iDisplayLength"));
				pageNumber = (Integer.valueOf(request.getParameter("iDisplayStart")) / pageDisplayLength) + 1;
			}
			//Fetch search parameter
			String searchParameter = request.getParameter("sSearch");

			//Fetch Page display length
			pageDisplayLength = Integer.valueOf(request.getParameter("iDisplayLength"));

			List<User> budgetList = new ArrayList<User>();

			//Here is server side pagination logic. Based on the page number you could make call 
			//to the data base create new list and send back to the client. For com.resustainability.reirm I am shuffling 
			//the same list to show data randomly
			int startIndex = 0;
			int offset = pageDisplayLength;

			if (pageNumber == 1) {
				startIndex = 0;
				offset = pageDisplayLength;
				budgetList = createPaginationData(startIndex, offset, obj, searchParameter);
			} else {
				startIndex = (pageNumber * offset) - offset;
				offset = pageDisplayLength;
				budgetList = createPaginationData(startIndex, offset, obj, searchParameter);
			}

			//Search functionality: Returns filtered list based on search parameter
			//budgetList = getListBasedOnSearchParameter(searchParameter,budgetList);

			int totalRecords = getTotalRecords(obj, searchParameter);

			UserPaginationObject personJsonObject = new UserPaginationObject();
			//Set Total display record
			personJsonObject.setiTotalDisplayRecords(totalRecords);
			//Set Total record
			personJsonObject.setiTotalRecords(totalRecords);
			personJsonObject.setAaData(budgetList);

			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			json2 = gson.toJson(personJsonObject);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(
					"getUsersList : User Id - " + userId + " - User Name - " + userName + " - " + e.getMessage());
		}

		pw.println(json2);
	}

	/**
	 * @param searchParameter 
	 * @param activity 
	 * @return
	 */
	public int getTotalRecords(User obj, String searchParameter) {
		int totalRecords = 0;
		try {
			totalRecords = service.getTotalRecords(obj, searchParameter);
		} catch (Exception e) {
			logger.error("getTotalRecords : " + e.getMessage());
		}
		return totalRecords;
	}

	/**
	 * @param pageDisplayLength
	 * @param offset 
	 * @param activity 
	 * @param clientId 
	 * @return
	 */
	public List<User> createPaginationData(int startIndex, int offset, User obj, String searchParameter) {
		List<User> objList = null;
		try {
			objList = service.getUserList(obj, startIndex, offset, searchParameter);
		} catch (Exception e) {
			logger.error("createPaginationData : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getDesignationFilterListInUser", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getDesignationFilterList(@ModelAttribute User obj) {
		List<User> objsList = null;
		try {
			objsList = service.getDeptFilterList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDesignationFilterList : " + e.getMessage());
		}
		return objsList;
	}
	
	
	@RequestMapping(value = "/delete-user", method = {RequestMethod.GET,RequestMethod.POST})
	public String deleteUser(@ModelAttribute User obj,RedirectAttributes attributes){
		try{
			boolean flag =  service.deleteProject(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "User Deleted Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Something went wrong. Try again.");
			}
		}catch (Exception e) {
			logger.error("deleteUser : " + e.getMessage());
		}
		return "redirect:/home";
	
	}
}