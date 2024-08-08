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

    <title>ReOne - Settings</title>
    <link rel="icon" type="image/png" href="/index/resources/images/favicon.svg" />

    <!-- CSS Assets -->
    <link rel="stylesheet" href="/index/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/index/resources/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
           <script src="https://accounts.google.com/gsi/client" onload="initClient()" async defer></script>
         <script src="https://www.youtube.com/iframe_api"></script>
       
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <style>

 @media (min-width: 640px){
		.sm\:grid-cols-4 {
		    grid-template-columns: repeat(5,minmax(0,1fr));
		}
	}

	 .text-lgre {
    font-size: .9rem;
    line-height: 1.25rem;
	}
	
	.text-lgresl {
    font-size: .8rem;
    line-height: 1.25rem;
	}
	 .w-50{
    	    width: 12rem;
    	
    }
	    .pt-8{
    	    padding-top: 9%;
    	    padding-left: 3.25rem!important;
    }
    @media (min-width: 640px){
    .max-w-lg2{
    	max-width: 65rem;
    }
    .slm {
		    padding-left: 2.25rem!important;
		    padding-right: 1.25rem!important;
		}
	}
	  @media (max-width: 767px) {
    .sld {
		    padding: 2rem!important;
		}
	}
    .swiper-scrollbar-drag {
    background: transparent!important;
    border-radius: var(--swiper-scrollbar-border-radius,10px);
    height: 100%;
    left: 0;
    position: relative;
    top: 0;
    width: 100%;
}
    
       @media (min-width: 766px) and (max-width: 1200px){
      .qutt{
          width: 40rem!important;
      }
      
      }
       @media (min-width: 600px) and (max-width: 1200px){
      .qutt{
          width: 34rem!important;
      }
      
      } 
    .mgi{
     width: 43px; /* Set the desired width for the image */
  	height: auto;
    }
    .parent1 {
  display: grid;
  grid-template-columns: repeat(2, 1fr); /* Display two items in each row */
  justify-content: center; /* Optional, to center the items horizontally */
  grid-gap: 10px; /* Add some spacing between the items */
}

.child1 {
  background-color: #f0f0f0; /* Optional, add background color to the items */
}
 .truncate {
      overflow: hidden;
      height: 2.5rem;
      width: 13rem!important;
     /*  white-space: nowrap; */
      text-overflow: ellipsis;
    }
      @media (max-width: 640px){
		.truncate {
		      overflow: hidden;
		      height: 2.5rem;
		      width: 11rem!important;
		     /*  white-space: nowrap; */
		      text-overflow: ellipsis;
		    }
	}  
   .parents {
 display: flex;
  justify-content: center;
}
#rewards{
width: 142px!important;
}
#news{
width: 123px!important;
}
.childs {
  display: inline-block;
  width: 221px; /* Optional, set a fixed width for child divs if needed */
  height: 100px; /* Optional, set a fixed height for child divs if needed */
  margin: 10px; /* Optional, add some spacing between the child divs */
}
    .cardT {
   	 box-shadow: none !important; 
   	 background-color: transparent!important;
   	 
   	 
	}
     @media (min-width: 1024px) {
     .pc{
         height: 34rem;
     }
     #mobileClass2{
    	display:none;
    }
     .h-custom{
      	height: 5rem;
      }
      .qut{
        position: absolute;
    top: -1rem;
    width: 22rem;
    right: 0rem;
    }
     #qut{
         padding-bottom: 1rem !important;
    	 padding-top: 1rem !important;
     }
     }
   
    .bg-slate-2000 {
    background-color: #ffffff;
}
    .cardsRight{
    	    right: -2rem ;
    	    height: 6rem;
    }
    .containers {
  display: flex;
  justify-content: center; /* Optional, to center the spans horizontally */
}

.side-by-side {
  margin: 5px; /* Optional, add some spacing between the spans */
}
    .max-w-xl {
    max-width: 60rem!important;
}
    #mobileClass{
  	display: none;
  }
    .w-208{
    	width: 9rem !important;
    }
    @media (max-width: 767px) {
    #mobileClass2{
    	display:block;
    }
      .h-custom{
      	height: 0.25rem;
      }
    .cardsRight{
    	    right: 0rem;
    }
	  .reimagining {
	     
	    display: flex;
	    align-items: center;
	
	  }
	  #iconsCLass {
    display: none;
  }
  #mobileClass{
  	display: block;
  	width: 92% !important;
    height: 92% !important;
    padding-bottom: 0.5rem !important;
    padding-top: 0.5rem !important;
    padding-left: 3rem;
    left: 1rem !important;
}
.mblview{
  		width:100% !important;
  }
  }
  
  }
 .w-1w{
     width: 5.5rem !important;
 }
  
    .text-re{
    	color:#e21e26;
    }
    #clock {
      font-family: Arial, sans-serif;
      font-size: 18px;
      text-align: center;
      padding: 6px;
      color: #333;
    }
    .content{
        color: white;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    a {
    color: blue;
    text-decoration: inherit;
}
  .container{
    overflow: hidden;
    z-index: 10;
    position: relative;
    height: 90px;
    width: 300px;
    background-color: #3935e2;
    border-radius: 10px;
    box-shadow: 2px 2px 1px rgba(0,0,0,0.2);
}
   #player-wrapper {
      position: relative;
      padding-bottom: 56.25%; /* 16:9 aspect ratio */
      height: 0;
    }

    #player {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }
 .loading-dots {
      font-size: 36px;
      text-align: center;
      animation: loading 1.5s infinite;
    }

    @keyframes loading {
      0% { content: ". "; }
      33% { content: ". . "; }
      66% { content: ". . . "; }
    }
/*  BACKGROUND  */

.Circle1{
    z-index: 100;
    position: absolute;
    height: 80px;
    width: 80px;
    right: -20px;
    top: -30px;
    border-radius: 50%;
    background-color: rgba(253,184,19,1);
    animation: enlarge;
    animation-duration: 5s;
    animation-iteration-count: infinite;
}

.Circle2{
    z-index: 80;
    position: absolute;
    height: 150px;
    width: 150px;
    right: -50px;
    top: -70px;
    border-radius: 50%;
    background-color: rgba(246,140,31,0.7);
    
    animation: enlarge;
    animation-duration: 7s;
    animation-iteration-count: infinite;
}

.Circle3{
    z-index: 50;
    position: absolute;
    height: 200px;
    width: 200px;
    right: -50px;
    top: -100px;
    border-radius: 50%;
    background-color: rgba(241,125,45,0.7);
    
    animation: enlarge;
    animation-duration: 10s;
    animation-iteration-count: infinite;
}



/*  CONTENT  */

.sun{
    z-index: 1000;
    font-size: 15px !important;
}

.Condition{
z-index: 1000;
    position: absolute;
    font-family: "Roboto", sans-serif;
    font-weight: 100;
    font-size: 20px;
    left: 54px;
    top: 9px;
}

.Temp{
   
        z-index: 1000;
    position: absolute;
    font-family: "Roboto", sans-serif;
    font-size: 27px;
    font-weight: 400;
    left: 20px;
    bottom: 19px;
}

#F{
    z-index: 1000;
    font-family: "Roboto",sans-serif;
    font-weight: 100;
    font-size: 30px;
}


.Time{
     z-index: 1000;
    position: absolute;
    font-family: "Noto Sans", sans-serif;
    font-size: 14px;
    font-weight: 200;
    right: 9px;
    top: 30px;
}

.locationIcon{
    z-index: 1000;
    font-size: 10px !important;
}

.Location{
    z-index: 1000;
    position: absolute;
    font-family: "Noto Sans", sans-serif;
    font-size: 12px;
    font-weight: 200;
    right: 20px;
    bottom: 15px;
}

@keyframes enlarge{
    50%{
        transform: scale(1.2);
    }
}

    .mb-4 {
    margin-bottom: 1.25rem;
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
    <div
      class="app-preloader fixed z-50 grid h-full w-full place-content-center bg-slate-50 dark:bg-navy-900"
    >
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
                           href="<%=request.getContextPath() %>${obj.common_url}/${obj.department_code}/${obj.department_name}"
                        >
                          <div class="h-2 w-2 mt-1.5 rounded-full bg-current " style="color:#e21e26;"></div>
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
            <div class="h-7 w-7">
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
   
   <main class="main-content w-full p-4 pb-8">
   <div class="flex card   rounded-lg bg-slate-150 bg-gradient-to-r mt-4 mb-2   tracking-wide text-white outline-none transition-all ">
          <div class="group flex items-center space-x-1">
            <h2 class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-50 lg:text-2xl align:center ">
            
                <div class="whitespace-nowrap px-4 py-3 sm:px-5">
                          <div class="flex space-x-2">
                            <div class="flex items-center">
			                      <svg xmlns="http://www.w3.org/2000/svg" 
			                      class="h-5 w-5 text-slate-100 transition-colors text-re  group-focus:text-slate-500 
			                      dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
			                      <path stroke-linecap="round" stroke-linejoin="round" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
			                    </svg>
                            </div>

                            <span class="text">Master</span>
                          </div>
                        </div>
              </h2>
            <a href="/index/resources/documents/REONE-Content Management.pdf" >
    <i style="margin-left: 43rem;"> Content Management Documentation View <i class="fa fa-download" aria-hidden="true"></i></i>
</a>
          </div> 
  </div>
  
 			
  
        <div class="grid grid-cols-12 gap-4  sm:gap-5 lg:gap-6">
          <div class="col-span-12 lg:col-span-12">
            <div class="mt-4 grid grid-cols-2 gap-3 px-4 sm:mt-5 sm:grid-cols-4 sm:gap-5 sm:px-5 lg:mt-6">
            <c:forEach var="obj" items="${settingList }"  varStatus="index">
			<c:if test="${obj.module eq 'Masters' }">
			
			<div class="card px-4 py-4 sm:px-5">
            <div>
              <div class=" text-lgre flex cursor-pointer flex  tracking-wide text-slate-800 outline-none transition-all  pt-2 text-base font-medium tracking-wide text-base font-medium text-slate-700 dark:text-accent-light">
              	 <span>${obj.module_name }</span></div>
            </div>
            
   				<div class="mt-3 flex space-x-1 justify-end">
  					 <a href="<%=request.getContextPath() %>${obj.url}" class="btn h-9 w-9 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 hover:shadow-lg hover:shadow-slate-200/50 focus:bg-slate-200 focus:shadow-lg focus:shadow-slate-200/50 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:hover:shadow-navy-450/50 dark:focus:bg-navy-450 dark:focus:shadow-navy-450/50 dark:active:bg-navy-450/90">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 rotate-45 text-re" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 11l5-5m0 0l5 5m-5-5v12"></path>
                      </svg>
                    </a></div>
          </div>
          
               </c:if>
               </c:forEach>
               
                </div>

            <div class="ax-transparent-gridline mt-2 px-2">
              
            </div>
          </div>
        </div>
         <div class="flex card  rounded-lg bg-slate-150 bg-gradient-to-r mt-4  mb-2  tracking-wide text-white outline-none transition-all">
          <div class="group flex items-center space-x-1">
            <h2 class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-50 lg:text-2xl align:center ">
            <div class="whitespace-nowrap px-4 py-3 sm:px-5">
                          <div class="flex space-x-2">
                            <div class="flex items-center " >
			               <svg xmlns="http://www.w3.org/2000/svg" class=" h-5 w-5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500  dark:group-hover:text-navy-200 dark:group-focus:text-navy-200" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5" style="color: #e21e26;">
			                    <path stroke-linecap="round" stroke-linejoin="round" d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"></path>
			              </svg>
                          </div>
               <span class="text">Management</span>
                </div>
                    </div>
                 </h2>
              </div> 
           </div>
         <div class="grid grid-cols-12 gap-4  sm:gap-5 lg:gap-6">
          <div class="col-span-12 lg:col-span-12">
            <div class="mt-4 grid grid-cols-2 gap-3 px-4 sm:mt-5 sm:grid-cols-4 sm:gap-5 sm:px-5 lg:mt-6">
            <c:forEach var="obj" items="${settingList }"  varStatus="index">
			<c:if test="${obj.module eq 'Content Management' }">
               <div class="card px-4 py-4 sm:px-5">
            <div>
              <div class=" text-lgre flex cursor-pointer flex  tracking-wide text-slate-800 outline-none transition-all  pt-2 text-base font-medium tracking-wide text-base font-medium text-slate-700 dark:text-accent-light">
              	 <span>${obj.module_name }</span></div>
            </div>
           
   				<div class="mt-3 flex space-x-1 justify-end">
  					 <a href="<%=request.getContextPath() %>${obj.url}" class="btn h-9 w-9 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 hover:shadow-lg hover:shadow-slate-200/50 focus:bg-slate-200 focus:shadow-lg focus:shadow-slate-200/50 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:hover:shadow-navy-450/50 dark:focus:bg-navy-450 dark:focus:shadow-navy-450/50 dark:active:bg-navy-450/90">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 rotate-45 text-re" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 11l5-5m0 0l5 5m-5-5v12"></path>
                      </svg>
                    </a></div>
          </div>
               </c:if>
               </c:forEach>
               
                </div>
            <div class="ax-transparent-gridline mt-2 px-2"></div>
          </div>
        </div>
       <jsp:include page="../views/layout/ChatBot2.jsp"></jsp:include> 
      </main>
      <div class="mt-5" x-data="{showModal:false}">
               
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm relative flex max-w-lg2 flex-col overflow-y-auto rounded-lg  px-4  text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
                     <div class="flex h-8 items-center justify-between">
                          <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base"></h2>

                          <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="
    margin-bottom: -4rem;
    z-index: 1;
    margin-right: -0.7rem; background-color: white;
">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                          </button>
                        </div>
                      <div class="mt-4">
                        <img
                      class=""
                      src="/index/resources/images/CyberSecurity Launch.png"
                      alt="image"
                    />
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
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
      
      $(document).ready(function() {


          function updateClock() {
            var now = new Date();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();
            var day = now.getDate();
            var month = now.getMonth() + 1; // Months are zero-based
            var year = now.getFullYear();

            hours = (hours < 10) ? '0' + hours : hours;
            minutes = (minutes < 10) ? '0' + minutes : minutes;
            seconds = (seconds < 10) ? '0' + seconds : seconds;
            day = (day < 10) ? '0' + day : day;
            month = (month < 10) ? '0' + month : month;

            var time = hours + ':' + minutes + ':' + seconds; 
            var date = day + '-' + month + '-' + year;

            var clock1 =  '<i class="fa fa-calendar" aria-hidden="true" style="color:#e21e26;"></i>  &nbsp;<span class="text-base font-medium text-slate-700 dark:text-navy-100">'+date+ '</span> &nbsp;  &nbsp; <i class="fa-solid fa-clock" style="color:#e21e26;"></i> &nbsp;<span class="text-base font-medium text-slate-700 dark:text-navy-100">' +time+'</span>';

            var clock =  ' <div class="mt-5 space-y-4 " style=" margin-left: 2rem;"> <div class="flex items-center justify-between"> <div class="flex items-center space-x-2"> <img class="h-10 w-1w mgi" src="/index/resources/images/avatar/Paomedia-Small-N-Flat-Calendar.png" alt="calander">  &nbsp;<p class="text-base font-medium text-slate-700 dark:text-navy-100">'+date+ '</p>   </div></div><div class="flex items-center justify-between"><div class="flex items-center space-x-2"> <img class=" mgi h-10 w-1w" src="/index/resources/images/avatar/Red_clock.png" alt="image">  &nbsp;<p class="text-base font-medium text-slate-700 dark:text-navy-100">' +time+'</p></div></div></div>';
            $('#clock').html(clock);
            $('#clock1').html(clock1);
          }

          setInterval(updateClock, 1000);

          var cityName;
          if (navigator.geolocation) {
              // Get current position
              navigator.geolocation.getCurrentPosition(function(position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;

                // Make API request to fetch city name
                $.ajax({
                  url: 'https://nominatim.openstreetmap.org/reverse',
                  type: 'GET',
                  data: {
                    format: 'json',
                    lat: latitude,
                    lon: longitude,
                    zoom: 10,
                    addressdetails: 1
                  },
                  success: function(response) {
                    var city = response.address.city || response.address.town || response.address.village || '';
                    var country = response.address.country || '';

                    // Update HTML element with city name
                    cityName = city;
                    $('#city').text(city + ', ' + country);
                    var cityNplace = city + ',' + country
                    getWeather(cityNplace);
                  },
                  error: function(xhr, status, error) {
                    console.log(error);
                  }
                });
              });
            } else {
              console.log('Geolocation is not supported by this browser.');
            }
          
      
          
      });
     function getWeather(cityNplace){
    	    
          const apiKey = 'd0f0b62e939d9341794ce5b3bb3d09cb';
          const apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q='+cityNplace+'&appid=d0f0b62e939d9341794ce5b3bb3d09cb&units=metric';

          $.ajax({
              url: apiUrl,
              method: 'GET',
              dataType: 'json',
              success: function(data) {
                  const temperatureElement = $('#temperature');
                  const descriptionElement = $('#description');
                  const windSpeedElement = $('#wind-speed');
                  const weatherIconElement = $('#weather-icon');

                  const temperature = Math.round(data.main.temp);
                  const description = data.weather[0].description;
                  const windSpeed = data.wind.speed;
                  const weatherIcon = data.weather[0].icon;

                  temperatureElement.text(temperature +'°C');
                  descriptionElement.text(description);
                  windSpeedElement.text(windSpeed+' m/s');
                  weatherIconElement.attr('src', 'https://openweathermap.org/img/w/'+weatherIcon+'.png');
              },
              error: function(error) {
                  console.error('Error:', error);
              }
        });
    	  
      }
     
     const button = document.getElementById("signout_button");
     button.onclick = () => {
       google.accounts.id.disableAutoSelect();
       console.log('User signed out.');
       $("#email").val('');
 		$("#logoutForm").submit();
     }
    // https://www.youtube.com/watch?v=zJkS24mEBbU&pp=ygUQcmVzdXN0YWluYWJpbGl0eQ%3D%3D
    /*  function onYouTubeIframeAPIReady() {
         // Create an instance of the YouTube player
         new YT.Player('player', {
           videoId: 'z8-Ghz4YSMY',
           playerVars: {
             autoplay: 0, // Autoplay the video
             controls: 1, // Show video controls
             modestbranding: 1, // Hide YouTube logo
             fs: 1, // Show fullscreen button
           },
         });
       } */
   
      </script>
  </body>
</html>
