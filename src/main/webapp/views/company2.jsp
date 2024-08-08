<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta tags  -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />

    <title>ReOne - Company</title>
    <link rel="icon" type="image/png" href="/index/resources/images/favicon.svg" />

    <!-- CSS Assets -->
    <link rel="stylesheet" href="/index/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/index/resources/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
      <script src="https://code.jquery.com/jquery-3.6.0.min.8js"></script>
          <link rel="stylesheet" type="text/css" href="/index/resources/vendors/css/forms/select/select2.min.css">
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <style>
     
     th,td{
    	text-align:left;
    }
*, :after, :before {
    border: 0 solid #e5e7eb;
    box-sizing: border-box;
}

.pagination{
  background-color: #e9eef5!important;
  border-bottom-left-radius: 0.5rem;
  border-top-left-radius: 0.5rem;
  border-bottom-right-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
}

.pagination button {
  display: inline-block;
  background-color: #e9eef5;
  border-bottom-left-radius: 0.5rem;
  border-top-left-radius: 0.5rem;
  border-bottom-right-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
}
.pagination .mdl-button {
 padding: 5px 10px;
}
.pagination .mdl-button--raised {
  text-decoration: none;
  padding: 5px 10px;
  background-color: #4f46e5!important;
  color: #fff;
}

.pagination button:hover {
  background-color: #ddd;
}

.pagination .active button {
  background-color: #4f46e5!important;
  color: #fff;
}
    .input-sm {
  border: 1px solid #ccc;
  border-radius: 15px;
  background-image: url('<i class="fa fa-search" aria-hidden="true"></i>'); /* Provide the path to your search icon image */
  background-position: right center;
  background-repeat: no-repeat;
  font-size: 13px;
  margin-left: 0.3rem;
}

.input-sm::after {
  padding: 8px 30px 8px 10px; /* Adjust padding to make room for the icon */

  content: ""; /* Add empty content for the search icon */
  background-image: url('<i class="fa fa-search" aria-hidden="true"></i>'); /* Provide the path to your search icon image */
  width: 20px; /* Adjust the width of the icon */
  height: 20px; /* Adjust the height of the icon */
  position: absolute;
  top: 50%;
  right: 10px; /* Adjust the right position to position the icon correctly */
  transform: translateY(-50%);
}
   input[type="search"] {
  padding: 8px 30px 8px 10px;
  border: 1px solid #ccc; /* Optional: Add a border for better visibility */
  border-radius: 5px; /* Optional: Add border-radius for rounded corners */
}
    .dataTables_info{
    font-size: .8125rem;
    line-height: 1.125rem;
    }
   .mdl-grid{
   align-items: center;
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
} 
.mdl-grid:nth-child(3) .mdl-cell--6-col {
	    margin-left: 2rem !important;
}
.mdl-grid:nth-child(3) .mdl-cell--4-col {
	    margin-right: 2rem !important;
}
.dt-table{
display: block !important;
height: 100%;
}
.modal {
    width: 100% !important;
}
.required{
	color:red;
}
.my-error-class {
 	 color:red;
}
select .my-error-class {
 	 color:red;
}
.my-valid-class {
 	 color:green;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
     left: -25% !important;
    margin-top: 1p% !important;
}
#select2-status_add-container{
    color: black !important;
}


body {
    font-family: var(--bs-body-font-family) !important;
}
.dark-layout h1, .dark-layout h2, .dark-layout h3, .dark-layout h4, .dark-layout h5, .dark-layout h6, .dark-layout span  {
    color: #D0D2D6;
}
.select2-container--classic .select2-selection--single .select2-selection__arrow b, .select2-container--default .select2-selection--single .select2-selection__arrow b {
    background-image: url(data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23d8d6de\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-chevron-down\'%3E%3Cpolyline points=\'6 9 12 15 18 9\'%3E%3C/polyline%3E%3C/svg%3E);
    background-size: 18px 14px,18px 14px !important;
    background-repeat: no-repeat !important;
    height: 1rem !important;
    padding-right: 1.5rem !important;
    margin-left: 0 !important;
    margin-top: 0 !important;
    left: -8px !important;
    border-style: none !important;
}

button.disabled {
  pointer-events: none; /* Disable pointer events to prevent interaction */
  background-color: #e1dcdc; /* Change background color to a muted color */
  color: #666; /* Change text color to a muted color */
  cursor: not-allowed; /* Change cursor to indicate it's not clickable */
  opacity: 0.5; /* Reduce opacity to visually indicate it's disabled */
  /* Add any other styles as needed */
}

  </style>
    <script>
      /**
       * THIS SCRIPT REQUIRED FOR PREVENT FLICKERING IN SOME BROWSERS
       */
      localStorage.getItem("_x_darkMode_on") === "true" &&
        document.documentElement.classList.add("dark");
    </script>
  </head>

  <body x-data class="is-header-blur" x-bind="$store.global.documentBody">
    <!-- App preloader-->
    <div class="app-preloader fixed z-50 grid h-full w-full place-content-center bg-slate-50 dark:bg-navy-900" >
      <div class="app-preloader-inner relative inline-block h-48 w-48"></div>
    </div>

    <!-- Page Wrapper -->
    <div
      id="root"
      class="min-h-100vh flex grow bg-slate-50 dark:bg-navy-900"
      x-cloak
    >
      <!-- Sidebar -->
      <div class="sidebar print:hidden">
        <!-- Main Sidebar -->
       
            <!-- Main Sections Links -->
 			<jsp:include page="../views/layout/header.jsp"></jsp:include> 

            <!-- Bottom Links -->
         



        <!-- Sidebar Panel -->
        <div class="sidebar-panel">
          <div
            class="flex h-full grow flex-col bg-white pl-[var(--main-sidebar-width)] dark:bg-navy-750"
          >
            <!-- Sidebar Panel Header -->
            <div class="flex h-18 w-full items-center justify-between pl-4 pr-1">
              <p class="text-base tracking-wider text-slate-800 dark:text-navy-100">
                All Functions
              </p>
              <button @click="$store.global.isSidebarExpanded = false" class="btn h-7 w-7 rounded-full p-0 text-primary hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:text-accent-light/80 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 xl:hidden">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path>
                </svg>
              </button>
            </div>
         <!-- Sidebar Panel Body -->
            <div class="flex h-[calc(100%-4.5rem)] grow flex-col">
              <div class="is-scrollbar-hidden grow overflow-y-auto">
                <div class="mt-2 px-4">
                 
                </div>

                <div x-data="{expanded:true}">
                  <div class="mt-4 flex items-center justify-between px-4">
                    <span class="text-xs font-medium uppercase">Departments </span>
                    <div class="-mr-1.5 flex">
                      <button
                        @click="expanded =! expanded"
                        class="btn h-6 w-6 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-3.5 w-3.5"
                          :class="expanded && 'rotate-180'"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="#e21e26"
                          stroke-width="2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M19 9l-7 7-7-7"
                          />
                        </svg>
                      </button>
                    </div>
                  </div>
                  <div x-show="expanded" x-collapse>
                   <ul
                      class="mt-1 space-y-1.5 px-2 font-inter text-xs+ font-medium"
                    >
                                <c:forEach var="obj" items="${departmentsList }"  varStatus="index">
                    
                      <li>
                        <a
                          class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                           href="<%=request.getContextPath() %>/re-curls/${obj.department_code}/${obj.department_name}"
                        >
                        <div class="h-2 w-2 mt-1.5 rounded-full bg-current " style="color:#e21e26;"></div>
                          </svg>
                          <span>${obj.department_name }</span>
                        </a>
                      </li>
                       
                </c:forEach>
                      
                    </ul>
                  </div>
                </div>
                
             
              </div>

              <div class="flex items-center spacex-3 p-4">
                
               
              </div>
            </div>
            
            
            
            
            
            
            
            
          </div>
        </div>
      </div>

      <!-- Right Sidebar -->
    
      <!-- App Header Wrapper-->
      <nav class="header print:hidden">
        <!-- App Header  -->
        <div
          class="header-container relative flex w-full bg-white dark:bg-navy-750 print:hidden"
        >
          <!-- Header Items -->
          <div class="flex w-full items-center justify-between">
            <!-- Left: Sidebar Toggle Button -->
            <div class="h-7 w-7" style=" color: #e21e26; ">
            <button
                class="menu-toggle ml-0.5 flex h-7 w-7 flex-col justify-center space-y-1.5 text-re outline-none focus:outline-none dark:text-accent-light/80"
                :class="$store.global.isSidebarExpanded && 'active'"
                @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded"
              >
                <span></span>
                <span></span>
                <span></span>
              </button> 
            </div>

            <!-- Right: Header buttons -->
            <div class="-mr-1.5 flex items-center space-x-2">
              

              <!-- Main Searchbar -->
              <template x-if="$store.breakpoints.smAndUp">
              </template>

              <!-- Dark Mode Toggle -->
              <button
                @click="$store.global.isDarkModeEnabled = !$store.global.isDarkModeEnabled"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <svg
                  x-show="$store.global.isDarkModeEnabled"
                  x-transition:enter="transition-transform duration-200 ease-out absolute origin-top"
                  x-transition:enter-start="scale-75"
                  x-transition:enter-end="scale-100 static"
                  class="h-6 w-6 text-amber-400"
                  fill="#e21e26"
                  viewBox="0 0 24 24"
                >
                  <path
                    d="M11.75 3.412a.818.818 0 01-.07.917 6.332 6.332 0 00-1.4 3.971c0 3.564 2.98 6.494 6.706 6.494a6.86 6.86 0 002.856-.617.818.818 0 011.1 1.047C19.593 18.614 16.218 21 12.283 21 7.18 21 3 16.973 3 11.956c0-4.563 3.46-8.31 7.925-8.948a.818.818 0 01.826.404z"
                  />
                </svg>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  x-show="!$store.global.isDarkModeEnabled"
                  x-transition:enter="transition-transform duration-200 ease-out absolute origin-top"
                  x-transition:enter-start="scale-75"
                  x-transition:enter-end="scale-100 static"
                  class="h-6 w-6 text-amber-400"
                  viewBox="0 0 20 20"
                  fill="#e21e26"
                >
                  <path
                    fill-rule="evenodd"
                    d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
                    clip-rule="evenodd"
                  />
                </svg>
              </button>
             
              
              <!-- Monochrome Mode Toggle -->
              <button
                @click="$store.global.isMonochromeModeEnabled = !$store.global.isMonochromeModeEnabled"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <i
                  class="fa-solid fa-palette bg-gradient-to-r from-sky-400 to-blue-600 bg-clip-text text-lg font-semibold text-transparent"
                ></i>
              </button>

              <!-- Notification-->

              <!-- Right Sidebar Toggle -->
            
            </div>
          </div>
        </div>
      </nav>

      <!-- Mobile Searchbar -->
    

      <!-- Main Content Wrapper -->
     
     <main class="main-content w-full p-6 pb-8">
     
     
     
   
       <div class="flex items-center space-x-4 py-5 lg:py-6 p-6">
       
          <h2 class=" sm:text-sm font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
         Companies
          </h2> 
          <div class=" h-full py-1 sm:flex">
            <div class="h-full w-px bg-slate-300 dark:bg-navy-600"></div>
          </div>
          <ul class=" flex-wrap items-center space-x-2 sm:flex">
            <li class="flex items-center space-x-2">
              <a x-tooltip.placement.top-end.success="'Go Back to Settings Page'" class="text-primary transition-colors hover:text-primary-focus dark:text-accent-light dark:hover:text-accent" href="<%=request.getContextPath() %>/settings">Masters</a>
              <svg x-ignore="" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 hidden sm:flex" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
              </svg>
            </li>
            <li class="hidden sm:flex">Company</li>
          </ul>
         
        </div>
      <div class="p-4 sm:p-5">
     
     
                
                  <div class="mt-4 grid grid-cols-12 gap-4 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6">
          <div class="col-span-12 lg:col-span-8 xl:col-span-9">
            <div class="grid grid-cols-2 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-3 lg:gap-6">
          <label class="block">
                  <select id="select2-company_filter-container"  onchange="getCompanyFilterList();" class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent">
                    <option value="">Select Company</option>
                   	
                  </select>
                </label>
     
                  <label class="block">
                  <select  id="select2-status_filter-container" onchange="getStatusFilterList();" class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent">
                    <option value="">Select Status</option>
                    
                  </select>
                </label>
               <!--  <label class="block hidden sm:flex">
                </label>
                 -->
              <div class="grid grid-cols-2 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-2 lg:gap-6">
            <button onclick="getCompanyList();" class="btn bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus
                     active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="margin-top: 17px; color: white !important;">
                  <i class="fa fa-search" aria-hidden="true"></i> &nbsp;<span class="hidden sm:flex">Search </span>
                </button>
                <button onclick="clearFilter();" class="btn bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus 
                active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="margin-top: 17px;color: white !important;">
                  <i class="fa fa-undo" aria-hidden="true"></i> &nbsp;<span class="hidden sm:flex">Refresh </span>
                </button> 
              
            </div>
            </div>

            

            
          </div>
          <div class="col-span-12 lg:col-span-4 xl:col-span-3 px-4 py-3 sm:px-5">
            <div class="grid grid-cols-2 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-2 lg:gap-6">
         
                <div x-data="{showModal:false}">
                
                    <button x-tooltip.placement.top-end.success="'Add New Record'"  @click="showModal = true" class="btn space-x-2 bg-primary font-medium text-white shadow-lg shadow-primary/50 hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:shadow-accent/50 dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="margin-top: 17px; color: white !important; background-color: orange !important; width: 100%;">
                  <i class="fa fa-add" aria-hidden="true"></i>  &nbsp;Add
                </button>
             <template x-teleport="#x-teleport-target" data-teleport-template="true">
                    <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                      <div class="absolute inset-0 bg-slate-900/60 transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                      <div class="scrollbar-sm relative flex max-w-md flex-col overflow-y-auto rounded-lg bg-white pt-10 pb-4 text-center transition-all duration-300 dark:bg-navy-700" x-show="showModal" x-transition:enter="easy-out" x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave="easy-in" x-transition:leave-start="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave-end="opacity-0 [transform:translate3d(0,1rem,0)]">
                       <div class="col-span-12 sm:col-span-8">
            <div class="card p-4 sm:p-5">
              <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                Add Company
              </p>
              <div class="mt-4 space-y-4">
                 <form id="addCompanyForm"  class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-company" method="post" class="form-horizontal" role="form" >
                <label class="block  text-left">
                 <span>Company Name </span><span class="required"> *</span>
                  <span class="relative mt-1.5 ">
                    <input 
                      id="company_name_add"
		              name="company_name" 
                    class=" form-control form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="eg : Re Sustainablity" type="text"/>
                   <span id="company_name_addError"></span>
                    
                  </span>
                </label>
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                  <label class="block  text-left">
                    <span>Company Code </span><span class="required"> *</span>
                    <span class="relative mt-1.5 ">
                      <input 
                       id="company_code_add"
              		   name="company_code" 
                      class="form-control form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="eg : RE" onkeyup="checkUniqueId();"  type="text">
                     
                    </span>
                     <span class="required" id="sbu_code_addError"></span>
                  </label>
                 <label class="block  text-left">
                    <span>Status</span><span class="required"> *</span>
                    
                  <select
                   id="select2-status_add-container"
              		name="status" 
                   class=" select2 form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent">
                    <option value="">Select status</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                  </select>
                  </label>
                </div>
                <div class="flex justify-center space-x-2 pt-4">
                 <button type="button" class="btn mt-6 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus
                  active:bg-primary-focus/90"   onclick="addCompany()">
                    <span>Add </span>
                  </button>
                  <a @click="showModal = false" class="btn mt-6 bg-slate-150 font-medium text-slate-800 hover:bg-slate-800-focus focus:bg-slate-150-focus active:bg-slate-800-focus/90">
                    Discard
                  </a>
                </div>
                 </form>
              </div>
            </div>
          </div>
          </div>
          </div>
            </template>
                </div>
                  <a onclick="exportCompany();" x-tooltip.placement.top-end.success="'Export Data'" class="btn space-x-2 bg-primary font-medium text-white shadow-lg shadow-primary/50 hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:shadow-accent/50 dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="margin-top: 17px; color: white !important; background-color: green !important; width: 100%;">
                  <i class="fas fa-file-export"></i>  &nbsp;Export
                </a>   
              
              
            </div>
          </div> 
        </div>
    
              
        
              </div>
		<br>
		<div class="grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-3 lg:gap-6">
	
          <div class=" card  rounded-lg  p-4 dark:bg-navy-600">
                <div class="flex justify-between space-x-1">
                  <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                   <span id= "allCompanies"></span>
                  </p>
         <svg style="width: 5rem;height: 2rem;" xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users font-medium-5"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                </div>
                <p class="mt-1 text-xs+">Total Companies</p>
           </div>
            <div class=" card  rounded-lg  p-4 dark:bg-navy-600">
                <div class="flex justify-between space-x-1">
                  <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                   <span id= "activeCompanies"></span>
                  </p>
         <svg style="width: 5rem;height: 2rem;" xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-zap font-medium-5"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"></polygon></svg>          
                </div>
                <p class="mt-1 text-xs+"> Active Companies</p>
           </div>
           <div class=" card  rounded-lg  p-4 dark:bg-navy-600">
                <div class="flex justify-between space-x-1">
                  <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                   <span id= "inActiveCompanies"></span>
                  </p>
<svg style="width: 5rem;height: 2rem;" xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-zap-off font-medium-5"><polyline points="12.41 6.75 13 2 10.57 4.92"></polyline><polyline points="18.57 12.91 21 10 15.66 10"></polyline><polyline points="8 8 3 14 12 14 11 22 16 16"></polyline><line x1="1" y1="1" x2="23" y2="23"></line></svg>
                </div>
                <p class="mt-1 text-xs+"> Inactive Companies</p>
           </div>
        </div>
          <div class="row">
            <div class="card mt-3">
		     <div class="card invoice-list-wrapper">
		      <div class="card-datatable table-responsive">
		       <div class="dt-buttons" style="height : 0.5em;">
		        </div>
                <table class="invoice-list-table table is-zebra w-full text-left" id="datatable-company">
                  <thead>
                    <tr>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        #
                      </th>
                    <%--  <c:if test="${sessionScope.ROLE eq 'Admin' }" > --%>
                       <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Action
                      </th>
                      <%-- </c:if> --%>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Company Code
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Company Name
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Status
                      </th>
                        <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Created Date
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Created By
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Modified Date
                      </th>
                        <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Modified By
                      </th>
                    </tr>
                  </thead>
                  <tbody class="text-center">
                  </tbody>
                </table>
              </div>
              </div>
            </div>
          </div>
            
      </main>
     <div x-data="{showModal:false}">
       <button style="display : none"; @click="showModal = true" id="updateModal" class="btn bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent 
                    dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="margin-top: 17px; color: white !important; background-color: orange !important; width: 100%;">
                  <i class="fa fa-add" aria-hidden="true"></i>  &nbsp;Add
                </button>
                  <template x-teleport="#x-teleport-target" data-teleport-template="true">
                    <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                      <div class="absolute inset-0 bg-slate-900/60 transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                      <div class="scrollbar-sm relative flex max-w-md flex-col overflow-y-auto rounded-lg bg-white pt-10 pb-4 text-center transition-all duration-300 dark:bg-navy-700" x-show="showModal" x-transition:enter="easy-out" x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave="easy-in" x-transition:leave-start="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave-end="opacity-0 [transform:translate3d(0,1rem,0)]">
                       <div class="col-span-12 sm:col-span-8">
            <div class="card p-4 sm:p-5">
              <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                update Company
              </p>
              <div class="mt-4 space-y-4">
                <form id="updateCompany" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-company" method="post" class="form-horizontal" role="form" >
                <label class="block  text-left">
                 <span>Company Name </span><span class="required"> *</span>
                  <span class="relative mt-1.5 flex">
                    <input 
                      id="company_name_edit"
		              name="company_name"
		              value=""
                    class=" form-control form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="eg : Re Sustainablity" type="text">
                    <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                      <i class="fa-regular fa-building text-base"></i>
                    </span>
                  </span>
                </label>
                 <input type="hidden" id="id" name="id" />
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                  <label class="block  text-left">
                    <span>Company Code </span><span class="required"> *</span>
                    <span class="relative mt-1.5 flex">
                      <input 
                       value="" readonly
                       id="company_code_edit"
              		   name="company_code"
                      class="form-control form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="eg : RE" onkeyup="checkUniqueId();"  type="text">
                      <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                        <i class="far fa-user text-base"></i>
                      </span>
                    </span>
                  </label>
                 <label class="block  text-left" style="padding-top: 1rem;">
                    <span>Status</span><span class="required"> *</span>
                  <select
                   id="select2-status_add-container"
              		name="status"
                   class=" select2 form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent">
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                  </select>
                  </label>
                </div>
                <div class="flex justify-center space-x-2 pt-4">
                 <a class="btn mt-6 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90" id="addBtn" onclick="();">
                    <span>update </span>
                  </a>
                  <button  id="toggleElementButton" class="btn mt-6 bg-slate-150 font-medium text-slate-800 hover:bg-slate-800-focus focus:bg-slate-150-focus active:bg-slate-800-focus/90">
                          Discard
                        </button>
                </div>
                  </form>
              </div>
            </div>
          </div>
                      </div>
                    </div>
                  </template>
                </div>
   
    </div>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>
    <form action="<%=request.getContextPath() %>/logout" name="logoutForm" id="logoutForm" method="post">
		<input type="hidden" name="email" id="email"/>
	</form>
	 <script src="/index/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/index/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
 <script src="/index/resources/js/jquery-validation-1.19.1.min.js"  ></script>
     <script src="/index/resources/js/datetime-moment-v1.10.12.js"  ></script>
       <script src="/index/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/index/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/index/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
      <script src="/index/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/index/resources/js/datetime-moment-v1.10.12.js"  ></script>
       <script src="/index/resources/js/jquery-validation-1.19.1.min.js"  ></script>
         <script src="/index/resources/js/dataTables.material.min.js"  ></script>
      <script src="/index/resources/js/moment-v2.8.4.min.js"  ></script>
        <script src="/index/resources/vendors/js/forms/select/select2.full.min.js"></script>
           <script src="/index/resources/js/scripts/forms/form-select2.min.js"></script>
	<form action="<%=request.getContextPath()%>/export-company" name="exportCompanyForm" id="exportCompanyForm" target="_blank" method="post">
        <input type="hidden" name="status" id="exportStatus_filter" />
	</form>
	 <form action="<%=request.getContextPath()%>/update-company" name="updateCompany" id="updateCompany" method="post">	
	</form>
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
 $(window).on("load",(function(){
	  $('select').select2(); 
          getCompanyList();
         }));
      
      function clearFilter(){
		    	$("#select2-company_filter-container").val("");
		    	$("#select2-status_filter-container").val("");
		    	window.location.href= "<%=request.getContextPath()%>/company";
	    }
      
      function getCompanyFilterList() {
	        var company_code = $("#select2-company_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(company_code) == "") {
	        	$("#select2-company_filter-container option:not(:first)").remove();
	        	var myParams = { company_code: company_code, status: status };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getCompanyFilterList",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-company_filter-container").append('<option value="' + val.company_code + '">'+ "[ "+$.trim(val.company_code) +" ]"+" - " + $.trim(val.company_name) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      function getStatusFilterList() {
    	  var company_code = $("#select2-company_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(status) == "") {
	        	$("#select2-status_filter-container option:not(:first)").remove();
	        	var myParams = { company_code: company_code, status: status };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getStatusFilterList",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-status_filter-container").append('<option value="' + val.status + '">' + $.trim(val.status) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

	    function exportCompany(){
	    	 var company_code = $("#select2-company_filter-container").val();
	         var status = $("#select2-status_filter-container").val();
	    	
	    	 $("#exportCompany_filter").val(company_code);
	     	 $("#exportStatus_filter").val(status);
	     	 $("#exportCompanyForm ").submit();
	  	}
	    
	    function getCompanyList(){
	    	getCompanyFilterList('');
	    	getStatusFilterList('');
	    	var company_code = $("#select2-company_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        $('#allCompanies').html(0)
    		$('#activeCompanies').html(0)
    		$('#inActiveCompanies').html(0)
    		
	     	table = $('#datatable-company').DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-company').DataTable({
				"bStateSave": true,  
	     		fixedHeader: true,
	         	//Default: Page display length
					"iDisplayLength" : 10,
					"iData" : {
						"start" : 52
					},"iDisplayStart" : 0,
					"drawCallback" : function() {
					},
	           columnDefs: [
	            	{
	                    targets: [0, 1, 2, 3, 4, 5, 6, 7, 8],
	                    className: ' px-3 py-3 font-medium text-slate-700 dark:text-navy-100 lg:px-5 '
	                  
	                }
	            ],
	            rowCallback: function(row, data, index) {
	                // Check a condition based on a column value
	                  $(row).addClass('border-y border-transparent border-b-slate-200 dark:border-b-navy-500');
	            },
	            // "ScrollX": true,
	            //"scrollCollapse": true,
	            "sScrollX": "100%",
	            "sScrollXInner": "100%",
	            "bScrollCollapse": true,
	            "initComplete" : function() {
									
					}
	        }).rows().remove().draw();
			table.state.clear();		
		 	var myParams = {company_code: company_code, status: status};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getCompanies",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		         			var company_data = "'"+val.company_code+"','"+val.status+"','"+val.company_name+"','"+val.id+"'";
		                    var actions = '<a href="javascript:void(0);" @click="showModal = true"  onclick="getCompany('+company_data+');" class="btn btn-primary"  title="Edit"><i class="fa fa-pencil"></i></a>';
		                    key++;
		                   	var rowArray = [];    	                 
		            		$('#allCompanies').html(val.all_companies)
		            		$('#activeCompanies').html(val.active_companies)
		            		$('#inActiveCompanies').html(val.inActive_companies)
		                   	rowArray.push($.trim(key));
		                	rowArray.push($.trim(actions));  
		                   	rowArray.push($.trim(val.company_code));
		                   	rowArray.push($.trim(val.company_name));
		                   	var status = $.trim(val.status);
		                	if (status == 'Active') {
		                		status = '<p class="badge bg-success/10 text-success dark:bg-success/15">'+$.trim(val.status)+' </p>'
	                		} else {
	                			status = '<p class="badge bg-error/10 text-error dark:bg-error/15">'+$.trim(val.status)+' </p>'
	                		}
		                   	rowArray.push(status);
		                   	rowArray.push($.trim(val.created_date));  
		                   	rowArray.push($.trim(val.created_by));
		                   	rowArray.push($.trim(val.modified_date));
		                   	rowArray.push($.trim(val.modified_by));
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
	    } 
	    
	    $("#toggleElementButton").click(function() {
	    	 $("#x-teleport-target").css("display","none");
	      });
	    
	    function getCompany(company_code,status,company_name,id){
	    	   $("#updateModal").click();
	    	   $('#company_name_edit').val('');
				 $('#company_code_edit').val('');
				 $('select[name^="status"] option:selected').removeAttr("selected");
				 $("#x-teleport-target1").css("display","none");
				// $("#x-teleport-target1").css("display","block");
			      $('#id').val($.trim(id));
			      $('#updateCompany #company_name_edit').val($.trim(company_name)).focus();
			      $('#updateCompany #company_code_edit').val($.trim(company_code)).focus();
			      if(status != null && status != ''  && status != "undefined"){
			    	  $('select[name^="status"] option[value="'+ status +'"]').attr("selected",true);
			    	 // $('select').select2();
			      }
	   }
	    
	    function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.status === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.status == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.status == 500) {
	  	        msg = 'Internal Server Error [500].';
	  	    } else if (exception === 'parsererror') {
	  	        msg = 'Requested JSON parse failed.';
	  	    } else if (exception === 'timeout') {
	  	        msg = 'Time out error.';
	  	    } else if (exception === 'abort') {
	  	        msg = 'Ajax request aborted.';
	  	    } else {
	  	        msg = 'Uncaught Error.\n' + jqXHR.responseText;
	  	    }
	  	    console.log(msg);
        }
	    
	   
	    function addCompany(){
	    	
	    	 var validator =	$('#addCompanyForm').validate({
			   	 errorClass: "my-error-class",
			   	 validClass: "my-valid-class",
			   	 ignore: ":hidden:not(.select2 form-select)",
			   		    rules: {
			   		 		  "company_name": {
			   			 			required: true
			   			 	  },"company_code": {										
			   			 			required: true
			   			 	  },"status": {
			   	                 	required: true,
			   			 	  }
			   		 	},
			   		    messages: {
			   		 		 "company_name": {
			   				 	required: 'Required',
			   			 	  },"company_code": {
			   			 		required: 'Required'
			   			 	  },"status": {
			   		 			required: 'Required'
			   		 	  	  }
			      		},
			      		errorPlacement:function(error, element){
			      		 /* 	if (element.attr("id") == "company_name_add" ){
			   				 document.getElementById("company_name_addError").innerHTML="";
			   		 		 error.appendTo('#company_name_addError');
			   			}else if(element.attr("id") == "company_code_add" ){
			   			   document.getElementById("company_code_addError").innerHTML="";
			   		 	   error.appendTo('#company_code_addError');
			   			}else if(element.attr("id") == "select2-status_add-container" ){
			   				document.getElementById("select2-status_add-containerError").innerHTML="";
			   			 	error.appendTo('#select2-status_add-containerError');
			   			}else{ */
			   					error.insertAfter(element);
			   			 //  } 
			      		},invalidHandler: function (form, validator) {
			               var errors = validator.numberOfInvalids();
			               console.log('invalidHandler',errors);
			               if (errors) {
			                   var position = validator.errorList[0].element;
			                   jQuery('html, body').animate({
			                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
			                   }, 1000);
			               }
			           },submitHandler:function(form){
			        	   console.log('submit handler')
			   	    	form.submit();
			   	    	document.getElementById("addCompanyForm").submit();	
			   	    }
			   	}); 
		    
	    	console.log(validator.form());
	    	if(validator.form()){ // validation perform
	        	document.getElementById("addCompanyForm").submit();	
	    	}
	    }
	    function updateCompany(){
	    	if(validator1.form()){ // validation perform
	        	document.getElementById("updateCompany").submit();	
	    	}
	    }
	    var validator1 =	$('#updateCompanyForm').validate({
		   	 errorClass: "my-error-class",
		   	 validClass: "my-valid-class",
		   	 ignore: ":hidden:not(.select2 form-select)",
		   		    rules: {
		   		 		  "company_name": {
		   			 			required: true
		   			 	  },"company_code": {										
		   			 			required: true
		   			 	  },"status": {
		   	                 	required: true,
		   			 	  }
		   		 	},
		   		    messages: {
		   		 		 "company_name": {
		   				 	required: 'Required',
		   			 	  },"company_code": {
		   			 		required: 'Required'
		   			 	  },"status": {
		   		 			required: 'Required'
		   		 	  	  }
		      		},
		      		errorPlacement:function(error, element){
		      		 	if (element.attr("id") == "company_name_edit" ){
		   				 document.getElementById("company_name_editError").innerHTML="";
		   		 		 error.appendTo('#company_name_editError');
		   			}else if(element.attr("id") == "company_code_edit" ){
		   			   document.getElementById("company_code_editError").innerHTML="";
		   		 	   error.appendTo('#company_code_editError');
		   			}else if(element.attr("id") == "select2-status_edit-container" ){
		   				document.getElementById("select2-status_edit-containerError").innerHTML="";
		   			 	error.appendTo('#select2-status_edit-containerError');
		   			}else{
		   					error.insertAfter(element);
		   	        } 
		      		},invalidHandler: function (form, validator) {
		               var errors = validator.numberOfInvalids();
		               if (errors) {
		                   var position = validator.errorList[0].element;
		                   jQuery('html, body').animate({
		                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
		                   }, 1000);
		               }
		           },submitHandler:function(form){
		   	    	//form.submit();
		   	    }
		   	});

	   	$('.formSelect').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	$('input').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	function checkUniqueId(){
	   		var company_code = $('#company_code_add').val();
	        if ($.trim(company_code) != "" ) {
	        	var myParams = {company_code: company_code };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/checkUniqueIfForCompany",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
		                      $("#company_code_addError").html(company_code+" Already Exists!").css("color","red");
		                      $('#company_code_add').removeClass("is-valid")
		                      $('#company_code_add').addClass("is-invalid")
		                      $("#addBtn").prop("disabled",true);
	                    	});
	                     }else{
	                    	  $("#company_code_addError").text("");
	                    	  $('#company_code_add').removeClass("is-invalid")
		                      $('#company_code_add').addClass("is-valid")
		                      $("#addBtn").prop("disabled",false);
	                     }           
	                    
	                    },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	   		
	   	}
      </script>
  </body>
</html>