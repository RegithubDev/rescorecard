package com.resustainability.reisp.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.Company;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.SBU;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.CompanyService;
import com.resustainability.reisp.service.DepartmentService;
import com.resustainability.reisp.service.SBUService;
import com.resustainability.reisp.service.UserService;

@Controller
public class DepartmentController {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(DepartmentController.class);

	
	@Autowired
	DepartmentService service;
	
	@Autowired
	CompanyService serviceC;
	
	@Autowired
	UserService serviceU;
	
	@Autowired
	SBUService serviceS;

	@Value("${common.error.message}")
	public String commonError;

	@Value("${record.dataexport.success}")
	public String dataExportSucess;

	@Value("${record.dataexport.invalid.directory}")
	public String dataExportInvalid;

	@Value("${record.dataexport.error}")
	public String dataExportError;

	@Value("${record.dataexport.nodata}")
	public String dataExportNoData;

	@Value("${template.upload.common.error}")
	public String uploadCommonError;

	@Value("${template.upload.formatError}")
	public String uploadformatError;

	@RequestMapping(value = "/department", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView department(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.department2);
		Department obj = null;
		try {
			List<Department> objList = service.getSBUList(obj);
			model.addObject("objList", objList);
			List <User> departmentsList = serviceU.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/dep-content", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView depContent(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.depContent);
		Department obj = null;
		try {
			List<Department> objList = service.getSBUList(obj);
			model.addObject("objList", objList);
			List <User> departmentsList = serviceU.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/dcform", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView dcform(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.dcform);
		try {
			model.addObject("action", "add");
			List <User> departmentsList = serviceU.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
			Company co = new Company();
			co.setStatus("Active");
			List<Company> companiesList =  serviceC.getCompaniesList(co);
			model.addObject("companiesList", companiesList);
			
			SBU sObj = new SBU();
			sObj.setStatus("Active");
			List<SBU> sbuList  = serviceS.getSBUsList(sObj);
			model.addObject("sbuList", sbuList);
			
			Department dObj = new Department();
			dObj.setStatus("Active");
			List<Department> deptList  = service.getDepartmentMasterList(dObj);
			model.addObject("deptList", deptList);
			
			User cObj = new User();
			cObj.setStatus("Active");
			List<User> ceptList  = service.getCategoryFilterListForDCForm(cObj);
			model.addObject("ceptList", ceptList);
			
			User scObj = new User();
			scObj.setStatus("Active");
			List<User> sceptList  = service.getSubCategoryFilterListForDCForm(scObj);
			model.addObject("sceptList", sceptList);
			
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	
	@RequestMapping(value = "/add-dcform", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addDCForm(@ModelAttribute User obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/dep-content");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.addDCForm(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Form Submitted Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Submitting Form is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Submitting Form is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/get-DCForm", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView getDCFORM(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.dcform);
		try {
			model.addObject("action", "edit");
			List <User> departmentsList = serviceU.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
			List<Company> companiesList =  serviceC.getCompaniesList(null);
			model.addObject("companiesList", companiesList);
			
			SBU sObj = new SBU();
			sObj.setStatus("Active");
			List<SBU> sbuList  = serviceS.getSBUsList(sObj);
			model.addObject("sbuList", sbuList);
			
			Department dObj = new Department();
			dObj.setStatus("Active");
			List<Department> deptList  = service.getDepartmentMasterList(dObj);
			model.addObject("deptList", deptList);
			
			User cObj = new User();
			cObj.setStatus("Active");
			List<User> ceptList  = service.getCategoryFilterListForDCForm(cObj);
			model.addObject("ceptList", ceptList);
			
			User scObj = new User();
			scObj.setStatus("Active");
			List<User> sceptList  = service.getSubCategoryFilterListForDCForm(scObj);
			model.addObject("sceptList", sceptList);
		
			User DCFromDetails = service.getDCFORM(user);
			model.addObject("DCFromDetails", DCFromDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-dcform", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateDCForm(@ModelAttribute User obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/dep-content");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setModified_by(userId);
			flag = service.updateDCForm(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Form Submitted Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Submitting Form is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Submitting Form is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	

	@RequestMapping(value = "/ajax/getSubCategoryfilterListForSubCategory", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User>getSubCategoryfilterListForSubCategory(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getSubCategoryfilterListForSubCategory(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getSubCategoryfilterListForSubCategory : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getStatusfilterListForSubCategory", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User>getStatusfilterListForSubCategory(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getStatusfilterListForSubCategory(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusfilterListForSubCategory : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getCategoryFilterListForSubCategory", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User>getCategoryFilterListForSubCategory(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getCategoryFilterListForSubCategory(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCategoryFilterListForSubCategory : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getDepartmentFilterListForSubCategory", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getDepartmentFilterListForSubCategory(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getDepartmentFilterListForSubCategory(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDepartmentFilterListForSubCategory : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getSubCategoryfilterListForDeptContnt", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User>getSubCategoryfilterListForDeptContnt(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getSubCategoryfilterListForDeptContnt(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getSubCategoryfilterListForDeptContnt : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getStatusfilterListForDeptContnt", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User>getStatusfilterListForDeptContnt(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getStatusfilterListForDeptContnt(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusfilterListForDeptContnt : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getCategoryFilterListForDeptContnt", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User>getCategoryFilterListForDeptContnt(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getCategoryFilterListForDeptContnt(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCategoryFilterListForDeptContnt : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getDepartmentFilterListForDeptContnt", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getDepartmentFilterListForDeptContnt(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		try {
			objList  = serviceS.getDepartmentFilterListForDeptContnt(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDepartmentFilterListForDeptContnt : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getSBUFilterListForDCForm", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<SBU> getSBUFilterListForDCForm(@ModelAttribute SBU obj,HttpSession session) {
		List<SBU> sbuList = null;
		try {
			SBU sObj = new SBU();
			sObj.setStatus("Active");
			sbuList  = serviceS.getSBUsList(sObj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDeptFilterListForDCForm : " + e.getMessage());
		}
		return sbuList;
	}
	
	@RequestMapping(value = "/ajax/getDeptFilterListForDCForm", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getDeptFilterListForDCForm(@ModelAttribute Department obj,HttpSession session) {
		List<Department> deptList = null;
		try {
			obj.setStatus("Active");
			deptList  = service.getDepartmentMasterList(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDeptFilterListForDCForm : " + e.getMessage());
		}
		return deptList;
	}
	
	@RequestMapping(value = "/ajax/getCategoryFilterListForDCForm", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getCategoryFilterListForDCForm(@ModelAttribute User obj,HttpSession session) {
		List<User> deptList = null;
		try {
			obj.setStatus("Active");
			deptList  = service.getCategoryFilterListForDCForm(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCategoryFilterListForDCForm : " + e.getMessage());
		}
		return deptList;
	}
	
	@RequestMapping(value = "/ajax/getSubCategoryFilterListForDCForm", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getSubCategoryFilterListForDCForm(@ModelAttribute User obj,HttpSession session) {
		List<User> deptList = null;
		try {
			obj.setStatus("Active");
			deptList  = service.getSubCategoryFilterListForDCForm(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getSubCategoryFilterListForDCForm : " + e.getMessage());
		}
		return deptList;
	}
	
	@RequestMapping(value = "/department-action", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView departmentAction(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.departmentAction);
		try {
			List <User> departmentsList = serviceU.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			SBU sObj = new SBU();
			sObj.setStatus("Active");
			List <SBU> sbuList = serviceS.getSBUsList(sObj);
			model.addObject("sbuList", sbuList);
		} catch (Exception e) { 
			e.printStackTrace();  
		} 
		return model; 
	}
	

	@RequestMapping(value = "/ajax/getDepartmentList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getCompaniesList(@ModelAttribute Department obj,HttpSession session) {
		List<Department> companiesList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			companiesList = service.getDepartmentsList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCompaniesList : " + e.getMessage());
		}
		return companiesList;
	}

	@RequestMapping(value = "/ajax/getDepartmentActionFilterList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getDepartmentActionFilterList(@ModelAttribute Department obj,HttpSession session) {
		List<Department> companiesList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			companiesList = service.getDepartmentActionFilterList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDepartmentActionFilterList : " + e.getMessage());
		}
		return companiesList;
	}
	
	@RequestMapping(value = "/ajax/getStatusActionFilterList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getStatusActionFilterList(@ModelAttribute Department obj,HttpSession session) {
		List<Department> companiesList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			companiesList = service.getStatusActionFilterList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusActionFilterList : " + e.getMessage());
		}
		return companiesList;
	}

	@RequestMapping(value = "/ajax/getDepartmentMasterList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getDepartmentMasterList(@ModelAttribute Department obj,HttpSession session) {
		List<Department> companiesList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			companiesList = service.getDepartmentMasterList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDepartmentMasterList : " + e.getMessage());
		}
		return companiesList;
	}

	
	@RequestMapping(value = "/ajax/getSBUsFilterListFromDepartment", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getSBUsFilterList(@ModelAttribute Department obj,HttpSession session) {
		List<Department> objsList = null;
		try {
			objsList = service.getSBUsFilterList(obj);

		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getSBUsFilterList : " + e.getMessage());
		}
		return objsList;
	}

	@RequestMapping(value = "/ajax/checkUniqueIfForDept", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> checkUniqueIfForDept(@ModelAttribute Department obj,HttpSession session) {
		List<Department> objsList = null;
		try {
			objsList = service.checkUniqueIfForDept(obj);

		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getSBUsFilterList : " + e.getMessage());
		}
		return objsList;
	}

	@RequestMapping(value = "/ajax/getDepartmentFilterList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getDepartmentFilterList(@ModelAttribute Department obj,HttpSession session) {
		List<Department> objsList = null;
		try {
			objsList = service.getDepartmentFilterList(obj);

		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDepartmentFilterList : " + e.getMessage());
		}
		return objsList;
	}


	@RequestMapping(value = "/ajax/getStatusFilterListFromDepartment", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Department> getStatusFilterListFromDepartment(@ModelAttribute Department obj,HttpSession session) {
		List<Department> objsList = null;
		try {
			objsList = service.getStatusFilterListFromDepartment(obj);

		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusFilterListFromDepartment : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/ajax/getDepartmentContentList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getDepartmentContentList(@ModelAttribute User obj,HttpSession session) {
		List<User> objsList = null;
		try {
			objsList = serviceU.getDeptContentList(obj);

		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDepartmentContentList : " + e.getMessage());
		}
		return objsList;
	}

	@RequestMapping(value = "/add-department", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addDepartment(@ModelAttribute Department obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/department");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCraeted_by(userId);
			flag = service.addDepartment(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Department Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Department is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Department is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}

	
	@RequestMapping(value = "/add-department-master", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addDepartmentMaster(@ModelAttribute Department obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/department-action");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCraeted_by(userId);
			flag = service.addDepartmentMaster(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Department Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Department is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Department is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-department-master", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateDepartmentMaster(@ModelAttribute Department obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/department-action");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setModified_by(userId);
			flag = service.updateDepartmentMaster(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Department Updated Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Updating Department is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Updating Department is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	
	
	
	
	@RequestMapping(value = "/update-department", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateDepartment(@ModelAttribute Department obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/department");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setModified_by(userId);
			flag = service.updateDepartment(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Department Updated Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Updating Department is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Updating Department is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}

	@RequestMapping(value = "/export-department", method = {RequestMethod.GET,RequestMethod.POST})
	public void exportDepartment(HttpServletRequest request, HttpServletResponse response,HttpSession session,@ModelAttribute Department obj,RedirectAttributes attributes){
		ModelAndView view = new ModelAndView(PageConstants.department);
		List<Department> dataList = new ArrayList<Department>();
		String userId = null;String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");userName = (String) session.getAttribute("USER_NAME");
			view.setViewName("redirect:/department");
			dataList = service.getDepartmentsList(obj); 
			if(dataList != null && dataList.size() > 0){
	            XSSFWorkbook  workBook = new XSSFWorkbook ();
	            XSSFSheet sheet = workBook.createSheet(WorkbookUtil.createSafeSheetName("Department"));
		        workBook.setSheetOrder(sheet.getSheetName(), 0);

		        byte[] blueRGB = new byte[]{(byte)0, (byte)176, (byte)240};
		        byte[] yellowRGB = new byte[]{(byte)255, (byte)192, (byte)0};
		        byte[] greenRGB = new byte[]{(byte)146, (byte)208, (byte)80};
		        byte[] redRGB = new byte[]{(byte)255, (byte)0, (byte)0};
		        byte[] whiteRGB = new byte[]{(byte)255, (byte)255, (byte)255};

		        boolean isWrapText = true;boolean isBoldText = true;boolean isItalicText = false; int fontSize = 11;String fontName = "Times New Roman";
		        CellStyle blueStyle = cellFormating(workBook,blueRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle yellowStyle = cellFormating(workBook,yellowRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle greenStyle = cellFormating(workBook,greenRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle redStyle = cellFormating(workBook,redRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle whiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);

		        CellStyle indexWhiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);

		        isWrapText = true;isBoldText = false;isItalicText = false; fontSize = 9;fontName = "Times New Roman";
		        CellStyle sectionStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);

		        XSSFRow heading = sheet.createRow(1);
		        String header = "Department - Report" ;
		        Cell cell1 = heading.createCell(0);
		        cell1.setCellStyle(greenStyle);
				cell1.setCellValue(header);

	            XSSFRow headingRow = sheet.createRow(2);
	        	String headerString = "#,Department,SBUs,Status" + 
	    				"";
	            String[] firstHeaderStringArr = headerString.split("\\,");

	            for (int i = 0; i < firstHeaderStringArr.length; i++) {		        	
		        	Cell cell = headingRow.createCell(i);
			        cell.setCellStyle(greenStyle);
					cell.setCellValue(firstHeaderStringArr[i]);
				}

	            short rowNo = 3,sNo = 1;
	            for (Department obj1 : dataList) {
	                XSSFRow row = sheet.createRow(rowNo);
	                int c = 0;

	                Cell cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(sNo++);

					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					//cell.setCellValue(obj1.getSBUs_code() +" - "+obj1.getSBUs_name());

	                cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getSbu_code() +" - "+obj1.getSbu_name());

				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getStatus());

	                rowNo++;
	            }
	            for(int columnIndex = 0; columnIndex < firstHeaderStringArr.length; columnIndex++) {
	        		sheet.setColumnWidth(columnIndex, 25 * 200);
				}
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
                Date date = new Date();
                String fileName = "Department_"+dateFormat.format(date);

	            try{
	                /*FileOutputStream fos = new FileOutputStream(fileDirectory +fileName+".xls");
	                workBook.write(fos);
	                fos.flush();*/

	               response.setContentType("application/.csv");
	 			   response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	 			   response.setContentType("application/vnd.ms-excel");
	 			   // add response header
	 			   response.addHeader("Content-Disposition", "attachment; filename=" + fileName+".xlsx");

	 			    //copies all bytes from a file to an output stream
	 			   workBook.write(response.getOutputStream()); // Write workbook to response.
		           workBook.close();
	 			    //flushes output stream
	 			    response.getOutputStream().flush();


	                attributes.addFlashAttribute("success",dataExportSucess);
	            	//response.setContentType("application/vnd.ms-excel");
	            	//response.setHeader("Content-Disposition", "attachment; filename=filename.xls");
	            	//XSSFWorkbook  workbook = new XSSFWorkbook ();
	            	// ...
	            	// Now populate workbook the usual way.
	            	// ...
	            	//workbook.write(response.getOutputStream()); // Write workbook to response.
	            	//workbook.close();
	            }catch(FileNotFoundException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportInvalid);
	            }catch(IOException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportError);
	            }
         }else{
        	 attributes.addFlashAttribute("error",dataExportNoData);
         }
		}catch(Exception e){	
			e.printStackTrace();
			logger.error("exportDepartment : : User Id - "+userId+" - User Name - "+userName+" - "+e.getMessage());
			attributes.addFlashAttribute("error", commonError);			
		}
		//return view;
	}


	private CellStyle cellFormating(XSSFWorkbook workBook,byte[] rgb,HorizontalAlignment hAllign, VerticalAlignment vAllign, boolean isWrapText,boolean isBoldText,boolean isItalicText,int fontSize,String fontName) {
		CellStyle style = workBook.createCellStyle();
		//Setting Background color  
		//style.setFillBackgroundColor(IndexedColors.AQUA.getIndex());
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);

		if (style instanceof XSSFCellStyle) {
		   XSSFCellStyle xssfcellcolorstyle = (XSSFCellStyle)style;
		   xssfcellcolorstyle.setFillForegroundColor(new XSSFColor(rgb, null));
		}
		//style.setFillPattern(FillPatternType.ALT_BARS);
		style.setBorderBottom(BorderStyle.MEDIUM);
		style.setBorderTop(BorderStyle.MEDIUM);
		style.setBorderLeft(BorderStyle.MEDIUM);
		style.setBorderRight(BorderStyle.MEDIUM);
		style.setAlignment(hAllign);
		style.setVerticalAlignment(vAllign);
		style.setWrapText(isWrapText);

		Font font = workBook.createFont();
        //font.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
        font.setFontHeightInPoints((short)fontSize);  
        font.setFontName(fontName);  //"Times New Roman"

        font.setItalic(isItalicText); 
        font.setBold(isBoldText);
        // Applying font to the style  
        style.setFont(font); 

        return style;
	}
}