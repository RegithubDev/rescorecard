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

    <title>ReOne - Home</title>
    <link rel="icon" type="image/png" href="/index/resources/images/favicon.svg" />

    <!-- CSS Assets -->
    <link rel="stylesheet" href="/index/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/index/resources/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
           <script src="https://accounts.google.com/gsi/client" onload="initClient()" async defer></script>
         <script src="https://www.youtube.com/iframe_api"></script>
       
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <style>
    .chat-messages {
    max-height: 200px;
    overflow-y: auto;
    padding: 10px;
    backdrop-filter: blur(10px); /* For modern browsers */
    -webkit-backdrop-filter: blur(10px); /* For older versions of Safari */
   /* background-color: rgba(255, 255, 255, 0.6);  Adjust the alpha value to control the opacity */
    border-radius: 10px;
    border: 1px solid rgba(0, 0, 0, 0.1); /* Add a border for better visibility */
}

.chat-message {
    margin-bottom: 10px;
    padding: 5px 10px;
    border-radius: 5px;
    background-color: #f9f9f9;
}

.chat-message.received {
    text-align: left;
}

.chat-message.sent {
    text-align: right;
}

.chat-message .message {
    word-wrap: break-word; /* Allow long messages to wrap */
}
    
    .chat-container {
    position: fixed;
    bottom: 20px;
    right: 20px;
    width: 402px;
    border: 1px solid #ccc;
    border-radius: 5px;
    overflow: hidden;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.chat-header {
    background-color: #007bff;
    color: #fff;
    padding: 10px;
    cursor: pointer;
}

.close-btn {
    float: right;
    cursor: pointer;
}

.chat-messages {
    max-height: 200px;
    overflow-y: auto;
    padding: 10px;
}

.chat-message {
    margin-bottom: 10px;
}

.chat-message.sent {
    text-align: right;
}

.chat-input {
    padding: 10px;
    display: flex;
    background-color: #f9f9f9;
}

.chat-input input[type="text"] {
    flex: 1;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 3px;
    outline: none;
}

.chat-input button {
    padding: 8px 15px;
    margin-left: 10px;
    border: none;
    border-radius: 3px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    outline: none;
}

.chat-input button:hover {
    background-color: #0056b3;
}

.minimized-chat-container {
    position: fixed;
    bottom: 20px;
    right: 20px;
    width: 50px;
    height: 50px;
     /*border: 2px solid red; Add red border */
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #fff;
    cursor: pointer;
   /* animation: changeColor 16s infinite;  Transition colors every 4 seconds */
}

@keyframes changeColor {
    0% { background-color: #fr0000; } /* Red */
    25% { background-color: #00ff00; } /* Green */
    50% { background-color: #0000ff; } /* Blue */
    75% { background-color: #ffff00; } /* Yellow */
    100% { background-color: #ff00ff; } /* Magenta */
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
.fa-lg1 {
    font-size: 4.25em;
    line-height: 1.05em;
    vertical-align: -0.075em;
    color: #d32727;
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
   
    <div
      id="root"
      class="min-h-100vh flex grow bg-slate-50 dark:bg-navy-900"
      x-cloak
    >
      <!-- Sidebar -->
      <div class="sidebar print:hidden">
        <!-- Main Sidebar -->
        <div class="main-sidebar">
          <div
            class="flex h-full w-full flex-col items-center border-r border-slate-150 bg-white dark:border-navy-700 dark:bg-navy-800"
          >
            <!-- Application Logo -->
            <div class="flex pt-4">
              <a href="<%=request.getContextPath() %>/home">
                <img
                  class="h-11 w-11 transition-transform duration-500 ease-in-out hover:rotate-[360deg]"
                  src="/index/resources/images/app-logo.svg"
                  alt="logo"
                />
              </a>
              
              
            </div>
            
            
            
            
            
            

            <!-- Main Sections Links -->
 			<jsp:include page="../views/layout/header.jsp"></jsp:include> 

            <!-- Bottom Links -->
            <div class="flex flex-col items-center space-y-3 py-3">
              <!-- Settings -->
             <a
               href="<%=request.getContextPath() %>/departments-master"
                class="flex h-11 w-11 items-center justify-center rounded-lg outline-none transition-colors duration-200 hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <svg
                  class="h-7 w-7"
                  viewBox="0 0 24 24"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    fill-opacity="0.3"
                    fill="#e21e26"
                    d="M2 12.947v-1.771c0-1.047.85-1.913 1.899-1.913 1.81 0 2.549-1.288 1.64-2.868a1.919 1.919 0 0 1 .699-2.607l1.729-.996c.79-.474 1.81-.192 2.279.603l.11.192c.9 1.58 2.379 1.58 3.288 0l.11-.192c.47-.795 1.49-1.077 2.279-.603l1.73.996a1.92 1.92 0 0 1 .699 2.607c-.91 1.58-.17 2.868 1.639 2.868 1.04 0 1.899.856 1.899 1.912v1.772c0 1.047-.85 1.912-1.9 1.912-1.808 0-2.548 1.288-1.638 2.869.52.915.21 2.083-.7 2.606l-1.729.997c-.79.473-1.81.191-2.279-.604l-.11-.191c-.9-1.58-2.379-1.58-3.288 0l-.11.19c-.47.796-1.49 1.078-2.279.605l-1.73-.997a1.919 1.919 0 0 1-.699-2.606c.91-1.58.17-2.869-1.639-2.869A1.911 1.911 0 0 1 2 12.947Z"
                  />
                  <path
                    fill="#e21e26"
                    d="M11.995 15.332c1.794 0 3.248-1.464 3.248-3.27 0-1.807-1.454-3.272-3.248-3.272-1.794 0-3.248 1.465-3.248 3.271 0 1.807 1.454 3.271 3.248 3.271Z"
                  />
                </svg>
              </a> 

              <!-- Profile -->
              <div
                x-data="usePopper({placement:'right-end',offset:12})"
                @click.outside="isShowPopper && (isShowPopper = false)"
                class="flex"
              >
                <button
                  @click="isShowPopper = !isShowPopper"
                  x-ref="popperRef"
                  class="avatar h-12 w-12"
                >
                  <img
                    class="rounded-full"
                    src="${sessionScope.USER_IMAGE }"
                    alt="avatar"
                  />
                  <span
                    class="absolute right-0 h-3.5 w-3.5 rounded-full border-2 border-white bg-success dark:border-navy-700"
                  ></span>
                </button>

                <div
                  :class="isShowPopper && 'show'"
                  class="popper-root fixed"
                  x-ref="popperRoot"
                >
                  <div
                    class="popper-box w-64 rounded-lg border border-slate-150 bg-white shadow-soft dark:border-navy-600 dark:bg-navy-700"
                  >
                    <div
                      class="flex items-center space-x-4 rounded-t-lg bg-slate-100 py-5 px-4 dark:bg-navy-800"
                    >
                      <div class="avatar h-14 w-14">
                        <img
                          class="rounded-full"
                          src="${sessionScope.USER_IMAGE }"
                          alt="avatar"
                        />
                      </div>
                      <div>
                        <a
                          href="#"
                          class="text-base font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light"
                        >
                          ${sessionScope.USER_NAME }
                        </a>
                        <p class="text-xs text-slate-400 dark:text-navy-300">
                          ${sessionScope.BASE_ROLE }
                        </p>
                      </div>
                    </div>
                    <div class="flex flex-col pt-2 pb-5">
                      <a
                        href="#"
                        class="group flex items-center space-x-3 py-2 px-4 tracking-wide outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                      >
                   
                      </a>
                     
                      <div class="mt-3 px-4">
                       <button class="btn h-9 w-full g_id_signout space-x-2 bg-primary text-white hover:bg-primary-focus 
                        focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" 
                         id="signout_button"  >
                          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                          </svg>
                          <i class="me-50" data-feather="power"></i> Logout
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>



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

             
            </div>
          </div>
        </div>
      </nav>



      <!-- Main Content Wrapper -->
      <main
        class="main-content pos-app w-full p-6 pb-6 transition-all duration-[.25s]"
      >
      <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-3 lg:gap-6 mt-4"> 
          <div class="card flex-row justify-between space-x-2 ">
            <div class="flex flex-1 flex-col justify-between"  id="clock">
            
            </div>
            <div class="mx-4 my-1 w-px bg-slate-200 dark:bg-navy-500"></div>
            <div class=" swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-active" @click="selected = 'slide-8'" role="group" aria-label="1 / 16" style="margin-right: 14px;">
                  <a id="iconsCLass" href="#"  class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-8' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                  <img class="h-11 w-1w" src="/index/resources/images/avatar/tropy icon.svg" alt="image" style="
    margin-top: 1rem;
">
                   <p class="text-3xl font-medium text-slate-700 dark:text-navy-100">
	                                      ${sessionScope.REWARDS }
	                                    </p>
	                                    <p class="text-xs text-success">Rewards</p>
                  </a>
                
                </div>

          </div>
          
          
          <div class="card flex-row justify-between space-x-2 p-2.5" id="iconsCLass">
            
              <div class="flex items-center justify-between">
                <div style="
    left: -1rem;
"class=" childs swiper w-64 swiper-cards swiper-3d swiper-initialized swiper-horizontal swiper-watch-progress" x-init="$nextTick(()=>$el._x_swiper = new Swiper($el,{effect: 'cards'}))">
                  <div class="swiper-wrapper" id="swiper-wrapper-a64f9f8ce979adad" aria-live="polite">
				      <div class="container"
   style="
    top: -0.5rem;
    right: -0.5rem;
    height: 7.2rem;

">
				    <div class="background">
				      <div class="Circle1"></div>
				      <div class="Circle2"></div>
				      <div class="Circle3"></div>
				      <div class="content">
				       <img id="weather-icon" src="https://cdn-icons-png.flaticon.com/512/1779/1779940.png" alt="Weather Icon">
				        <h1 class="Condition" id="description"><i class="material-icons sun"></i> </h1>
				        <h3 class="Temp" id="temperature"></h3>
				        <h1 class="Time" id="wind-speed"></h1>
				        <h1 class="Location" id="city"><i class="material-icons locationIcon">place</i> Raleigh, NC</h1>
				      </div>
				    </div>
                  </div>
                  </div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
              </div>
              <div class="mx-4 my-1 w-px bg-slate-200 dark:bg-navy-500"></div>
            <a href="https://heyzine.com/flip-book/8baf82e225.html" target="_blank" style="
    margin-top: 2rem;
"> <img class="h-20 w-1w" src="/index/resources/images/avatar/get-newsletter-updates.svg" alt="image">
                   
                  </a>
          </div>
        
        
        
        
        
          <div class="card px-4 pb-4 sm:px-5 pt-4" id="">
            
           <div class="flex">
          <div class="flex flex-col" style="
    width: 10rem;">
              <div class="flex w-full items-center justify-center rounded-lg dark:bg-navy-500 text-center">
                <p class="text-xl">${sessionScope.DEPARTMENT_NAME }</p>
              </div>
              
              <div class="flex w-full items-center justify-center rounded-lg pt-6 dark:bg-navy-500">
                <a href="<%=request.getContextPath() %>/re-curls/${sessionScope.BASE_DEPARTMENT }/${sessionScope.DEPARTMENT_NAME }" class="text-xs text-success">My Department</a>
              </div>
            </div>
           
           <%--    <button class="flex h-20 w-full items-center justify-center rounded-lg bg-slate-200 dark:bg-navy-500" >
                <p class="text-xl">${sessionScope.BASE_DEPARTMENT }</p>
              </button> --%>
              <div class="mx-4 my-1 w-px bg-slate-200 dark:bg-navy-500 text-center" ></div>
             <button class="flex flex-col">
              <div class="flex w-full items-center justify-center rounded-lg dark:bg-navy-500 " :class="$store.global.isSidebarExpanded &amp;&amp; 'active'" @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded">
                <p class="text-xl">Happenings @</p>
              </div>
              
              <div class="flex w-full items-center justify-center rounded-lg pt-6 dark:bg-navy-500" :class="$store.global.isSidebarExpanded &amp;&amp; 'active'" @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded">
                <p class="text-xs text-success">Other Department</p>
              </div>
            </button>
              
            <!--   <button class="flex h-20 w-full items-center justify-center rounded-lg bg-slate-200 dark:bg-navy-500"  :class="$store.global.isSidebarExpanded && 'active'"
                @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded">
                <p class="text-xl">All Functions</p>
              </button> -->
            </div>
                  
                  
          </div>
        
         
        </div>
        <div class="mt-5 grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">
          <div class="col-span-12 sm:col-span-12 lg:col-span-12">
            
             
            <div id="iconsCLass"
              class="swiper"
              x-init="$nextTick(()=>$el._x_swiper= new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 14,navigation:{nextEl:'.next-btn',prevEl:'.prev-btn'}}))"
            >
              <div class="flex items-center justify-between">
                <p
                  class="text-base font-medium text-slate-700 dark:text-navy-100"
                >

                  My Applications
                </p>
                <div class="flex">
                  <button
                    class="btn prev-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="1.5"
                        d="M15 19l-7-7 7-7"
                      />
                    </svg>
                  </button>
                  <button
                    class="btn next-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="1.5"
                        d="M9 5l7 7-7 7"
                      />
                    </svg>
                  </button>
                </div>
              </div>
              <div class="swiper-wrapper mt-5" x-data="{selected:'slide-0'}">
               <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-1'"
                >
                  <a href="https://internal.resustainability.com/brainbox/login/${sessionScope.USER_EMAIL }" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-1' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/braibox-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Brainbox
                    </h3>
                  </a>
                </div>
                 <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-2'"
                >
                 <a href="https://internal.resustainability.com/reirm/login/${sessionScope.USER_EMAIL }" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-2' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/AAYUSH-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    Aayush
                    </h3>
                  </a>
                </div>
				<c:if test="${sessionScope.USER_ID == '22011073' || sessionScope.USER_ID == '22011586' || sessionScope.USER_ID == '22014182'}">
				 <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-2121'"
                >
                 <a href="https://internal.resustainability.com/reirm/login/${sessionScope.USER_EMAIL }https://drive.google.com/drive/folders/10kWGFLcqQnwH0d975ya2_jkDsXh39UaN?usp=sharing" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-2121' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="data:image/jpeg;base64,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"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    Projects
                    </h3>
                  </a>
                </div>
				</c:if>
				
                <div class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-active" x-data="{showModal:false}" role="group" aria-label="4 / 18" style="margin-right: 14px;">
                 <a href="#" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" @click="showModal = true" :class="selected === 'slide-0090' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="/index/resources/images/icons/SAP.svg" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    SAP
                    </h3>
                  </a>
                  <template x-teleport="#x-teleport-target" data-teleport-template="true">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
                     <i class="fas fa-exclamation-triangle fa-lg1"></i>
                      <div class="mt-4">
                        <p class="btn font-medium text-warning hover:bg-warning/20 focus:bg-warning/20 active:bg-warning/25">
                         Please Signin to VPN before proceeding forward.
                        </p>
                        <a target="_blank" href="http://cesusacipr01:8001/sap/bc/gui/sap/its/zforgot_otp?sap-client=300" @click="showModal = false" class="btn mt-6 bg-success font-medium text-white hover:bg-success-focus focus:bg-success-focus active:bg-success-focus/90">
                          Open Link
                        </a>
                      </div>
                    </div>
                  </div>
                </template>
                </div>
                      <div
            class="card swiper-slide w-24 shrink-0 cursor-pointer"
            @click="selected = 'slide-12'"
          >
            <a href="https://accounts.zoho.com/signin?servicename=SDPOnDemand&hide_title=true&hideyahoosignin=true&hidefbconnect=true&hide_secure=true&serviceurl=https%3A%2F%2Fithelpdesk.resustainability.com%2Fjsp%2Findex.jsp&signupurl=https://ithelpdesk.resustainability.com/AccountCreation.do&portal_id=784502603&hide_signup=true" target="_blank"
              class="flex flex-col items-center rounded-lg px-2 py-4"
              :class="selected === 'slide-12' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
            >
              <img
                class="w-12"
                src="/index/resources/images/icons/ithealpdesk-01.svg"
                alt="image"
              />
              <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                ITHelpdesk
              </h3>
            </a>
          </div>
                <div
            class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-next"
            @click="selected = 'slide-00'"
          >
            <a href="https://appmint.resustainability.com/reelweighbridges/" target="_blank"
              class="flex flex-col items-center rounded-lg px-2 py-4"
              :class="selected === 'slide-00' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
            >
              <img
                class="w-12"
                src="/index/resources/images/icons/WEIGH BRIDGE-01.svg"
                alt="image"
              />
              <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                CWMS
              </h3>
            </a>
          </div>
                 <!-- <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-03'"
                >
                  <a href="https://relearning.resustainability.com/resustainability/login/resustainability.jsp" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-03' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/relearning-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      ReLearning
                    </h3>
                  </a>
                </div> -->
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-4'"
                >
                  <a href="https://mail.google.com" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-4' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/email.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                   Email
                      
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-5'"
                >
                  <a href="https://drive.google.com" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-5' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/drive-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Drive
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-6'"
                >
                  <a href="https://calendar.google.com/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-6' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img class="w-12"src="/index/resources/images/icons/calender-01.svg" alt="image"/>
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Calendar
                    </h3>
                  </a>
                </div>
                 <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-7'"
                >
                   <a href="https://resustainability.darwinbox.in" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-7' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/drwaninbox-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Darwinbox
                    </h3>
                  </a>
                </div>
                
                <div
                class="card swiper-slide w-24 shrink-0 cursor-pointer"
                @click="selected = 'slide-8'"
              >
                <a href="https://complyone.resustainability.com/" target="_blank"
                  class="flex flex-col items-center rounded-lg px-2 py-4"
                  :class="selected === 'slide-8' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                >
                  <img
                    class="w-12"
                    src="/index/resources/images/icons/complyone.svg"
                    alt="image"
                  />
                  <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    ComplyONE
                  </h3>
                </a>
              </div>
               <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-9'"
                >
                   <a href="https://mail.google.com/chat/u/1/#chat/welcome" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-9' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/chats-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Chats
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-10'"
                >
                  <a href="https://currents.google.com/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-10' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/currents-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Currents
                    </h3>
                  </a>
                </div>
               
              <%--   <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-11'"
                >
                  <a href="https://internal.resustainability.com/reirm/login/${sessionScope.USER_EMAIL }" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-11' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/workflow-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Workflow
                    </h3>
                  </a>
                </div>
                --%>
               
              
             
           
		<div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-13'" title="Payment Gateway"
                >
                  <a href="https://prdappworks.resustainability.com:8443/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-13' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/payment.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Payment Gateway
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-14'" title="Vehicle Tracking"
                >
                  <a href="https://etrackpro.in/jsp/etrackpro_login.jsp" target="_blank" 
                    class="flex flex-col items-center rounded-lg px-2 py-4" 
                    :class="selected === 'slide-14' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/tracking.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Vehicle Tracking
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-15'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://medicare.codeland.in/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-15' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/CABS.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      BMW CABS
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-16'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://swm.himsw.in" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-16' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/hyderabad.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      HIMSW
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-17'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://chennaienviro.com" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-17' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/chennaiwm.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Chennai
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-18'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://iris.resustainability.com/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-18' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/IRIS.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      IRIS
                    </h3>
                  </a>
                </div>
              </div>
            </div>

          
               
              <div class="mt-1" x-data="{showModal:false}">
       
                <template x-teleport="#x-teleport-target">
            
                </template>
              </div>
                   
            
              <div id="mobileClass2" class="pt-4 swiper swiper-initialized swiper-horizontal" x-init="$nextTick(()=>$el._x_swiper= new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 14,navigation:{nextEl:'.next-btn',prevEl:'.prev-btn'}}))">
              <div class="flex items-center justify-between">
                <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                 Follow us on :
                </p>
                <div class="flex">
                  <button class="btn prev-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 swiper-button-disabled" disabled="" tabindex="-1" aria-label="Previous slide" aria-controls="swiper-wrapper-e81bb6417afcc109a" aria-disabled="true">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="#e21e26">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 19l-7-7 7-7"></path>
                    </svg>
                  </button>
                  <button class="btn next-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-e81bb6417afcc109a" aria-disabled="false">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="#e21e26">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 5l7 7-7 7"></path>
                    </svg>
                  </button>
                </div>
              </div>
              <div class="swiper-wrapper mt-5" x-data="{selected:'slide-0'}" id="swiper-wrapper-e81bb6417afcc109a" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
               <div class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-active" @click="selected = 'slide-8'" role="group" aria-label="1 / 16" style="margin-right: 14px;">
                  <a  href="https://m.facebook.com/search/top?q=re%20sustainability%20limited"  target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-8' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-2019-circle-512.png" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Facebook
                    </h3>
                  </a> 
                </div> 
                 <div class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-next" @click="selected = 'slide-7'" role="group" aria-label="2 / 16" style="margin-right: 14px;">
                 <a href="https://mobile.twitter.com/WeAre_Re" target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-7' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://seeklogo.com/images/T/twitter-x-logo-8FD8E6C4FD-seeklogo.com.png?v=638258862930000000" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    Twitter
                    </h3>
                  </a>
                </div>
                 <div class="card swiper-slide w-24 shrink-0 cursor-pointer" @click="selected = 'slide-4'" role="group" aria-label="3 / 16" style="margin-right: 14px;">
                  <a href="https://www.linkedin.com/company/resustainability/" target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-4' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-linkedin-512.png" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Linked In
                    </h3>
                  </a>
                </div>
                <div class="card swiper-slide w-24 shrink-0 cursor-pointer" @click="selected = 'slide-1'" role="group" aria-label="4 / 16" style="margin-right: 14px;">
                  <a href="https://www.instagram.com/resustainability/" target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-1' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://cdn3.iconfinder.com/data/icons/popular-services-brands/512/instagram-512.png" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Instagram
                    </h3>
                  </a>
                </div>
              </div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
              <div class="mt-4 grid grid-cols-12 gap-4  py-5 dark:bg-navy-800 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6" id="iconsCLass">

            <div class="is-scrollbar-hidden col-span-12 flex space-x-4 overflow-x-auto p-6 transition-all duration-[.25s] lg:pl-0">
                <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v17.0" nonce="j0wHEvi1"></script>
              <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
<div class="fb-page" data-href="https://www.facebook.com/WeAreResustainability/" data-tabs="timeline" data-width="248" data-height="786" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/WeAreResustainability/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/WeAreResustainability/">Re Sustainability Limited</a></blockquote></div>              
              </div>
      
              
              <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
                <div class="flex justify-between space-x-2">
                  <div>
<a class="twitter-timeline" data-width="248" data-height="786" data-theme="light" href="https://twitter.com/WeAre_Re?ref_src=twsrc%5Etfw">Tweets by WeAre_Re</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>                  </div>
                </div>
               
              <!--   <div class="flex justify-between">
                  <div class="flex space-x-2">
                    <img x-tooltip="'Award Level 1'" class="h-6 w-6" src="images/awards/award-19.svg" alt="avatar">
                    <img x-tooltip="'Award Level 2'" class="h-6 w-6" src="images/awards/award-2.svg" alt="avatar">
                    <img x-tooltip="'Award Level 3'" class="h-6 w-6" src="images/awards/award-5.svg" alt="avatar">
                  </div>
                  <button class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                      <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                    </svg>
                  </button>
                </div> -->
              </div>
              <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
                <div class="flex items-center justify-between space-x-2">
                  <div class="flex items-center space-x-3">
                    <div class="avatar">
                      <img class="mask is-squircle" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/1024px-LinkedIn_icon_circle.svg.png" alt="image">
                    </div>
                    <div>
                      <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        Linked In
                      </p>
                      <p class="text-xs text-slate-400 dark:text-navy-300">
                        #resustainability
                      </p>
                    </div>
                  </div>
                
                </div>
                <div class="flex justify-between space-x-2">
                  <div>
                    <p class="text-xs+"><iframe src="https://www.linkedin.com/embed/feed/update/urn:li:ugcPost:7066365149405679616" height="736" width="265" frameborder="0" allowfullscreen=""></iframe></p>
                    
                  </div>
                 
                </div>
           
              </div>
             <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
                <div class="flex items-center justify-between space-x-2">
                  <div class="flex items-center space-x-3">
                    <div class="avatar">
                      <img class="mask is-squircle" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/2048px-Instagram_icon.png" alt="image">
                    </div>
                    <div>
                      <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        Instagram
                      </p>
                      <p class="text-xs text-slate-400 dark:text-navy-300">
                        @resustainability
                      </p>
                    </div>
                  </div>
                
                </div>
                <div class="flex justify-between space-x-2">
                  <div>
                    <a class="text-xs+" href="https://www.instagram.com/resustainability/" target="_blank">
                    <img  src="data:image/jpeg;base64,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" width="500" height="600" frameborder="0" scrolling="no" allowtransparency="true"></img></a>
                    
                  </div>
                 
                </div>
           
              </div>
              
              
            </div>
          </div>
            <div
              class="mt-4 grid grid-cols-2 gap-4 sm:mt-5 sm:grid-cols-2 sm:gap-5 lg:mt-6 lg:grid-cols-3 xl:grid-cols-4"
            >
             
            </div>
          </div>
        </div>

<jsp:include page="../views/layout/ChatBot.jsp"></jsp:include> 
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
      
      function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.assigned_to_sbu === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.assigned_to_sbu == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.assigned_to_sbu == 500) {
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

      </script>
  </body>
</html>