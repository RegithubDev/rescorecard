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
    <link rel="icon" type="image/png" href="/rescorecard/resources/images/favicon.svg" />

    <!-- CSS Assets -->
    <link rel="stylesheet" href="/rescorecard/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/rescorecard/resources/js/app.js" defer></script>

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
    z-rescorecard: 10;
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
    z-rescorecard: 100;
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
    z-rescorecard: 80;
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
    z-rescorecard: 50;
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
    z-rescorecard: 1000;
    font-size: 15px !important;
}

.Condition{
z-rescorecard: 1000;
    position: absolute;
    font-family: "Roboto", sans-serif;
    font-weight: 100;
    font-size: 20px;
    left: 54px;
    top: 9px;
}

.Temp{
   
        z-rescorecard: 1000;
    position: absolute;
    font-family: "Roboto", sans-serif;
    font-size: 27px;
    font-weight: 400;
    left: 20px;
    bottom: 19px;
}

#F{
    z-rescorecard: 1000;
    font-family: "Roboto",sans-serif;
    font-weight: 100;
    font-size: 30px;
}


.Time{
     z-rescorecard: 1000;
    position: absolute;
    font-family: "Noto Sans", sans-serif;
    font-size: 14px;
    font-weight: 200;
    right: 9px;
    top: 30px;
}

.locationIcon{
    z-rescorecard: 1000;
    font-size: 10px !important;
}

.Location{
    z-rescorecard: 1000;
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
                  src="/rescorecard/resources/images/app-logo.svg"
                  alt="logo"
                />
              </a>
              
              
            </div>
            
            
            
            
            
            

            <!-- Main Sections Links -->
 			<jsp:include page="../views/layout/header.jsp"></jsp:include> 

            <!-- Bottom Links -->

        </div>



        <!-- Sidebar Panel -->
        <div class="sidebar-panel">
          <div
            class="flex h-full grow flex-col bg-white pl-[var(--main-sidebar-width)] dark:bg-navy-750"
          >
            <!-- Sidebar Panel Header -->
            
            
          
            

            <!-- Sidebar Panel Body -->
            <div class="flex h-[calc(100%-4.5rem)] grow flex-col">
              <div class="is-scrollbar-hidden grow overflow-y-auto">
                <div class="mt-2 px-4">
                 
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
        </div>
      </nav>



      <!-- Main Content Wrapper -->
   <main class="main-content w-full px-[var(--margin-x)] pb-8">
        <div class="flex items-center space-x-4 py-5 lg:py-6">
          <h2 class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
            Baseline Information(FY 2023-24)
          </h2>
          <div class="hidden h-full py-1 sm:flex">
            <div class="h-full w-px bg-slate-300 dark:bg-navy-600"></div>
          </div>
          <ul class="hidden flex-wrap items-center space-x-2 sm:flex">
            <li class="flex items-center space-x-2">
              <a class="text-primary transition-colors hover:text-primary-focus dark:text-accent-light dark:hover:text-accent" href="#">Forms</a>
              <svg x-ignore="" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
              </svg>
            </li>
            <li>Baseline Information</li>
          </ul>
        </div>

        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">
          <div class="col-span-12 grid lg:col-span-4 lg:place-items-center">
            <div>
              <ol class="steps is-vertical line-space [--size:2.75rem] [--line:.5rem]">
                <li class="step space-x-4 pb-12 before:bg-slate-200 dark:before:bg-navy-500">
                 <div class="step-header mask is-hexagon bg-slate-200 text-slate-500 dark:bg-navy-500 dark:text-navy-100">
                    <i class="fas fa-tint text-base"></i>
                  </div>
                  <div class="text-left">
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Step 1
                    </p>
                    <h3 class="text-base font-medium ">
                      Fresh Water 
                    </h3>
                  </div>
                </li>
                <li class="step space-x-4 pb-12 before:bg-slate-200 dark:before:bg-navy-500">
                 <div class="step-header mask is-hexagon bg-slate-200 text-slate-500 dark:bg-navy-500 dark:text-navy-100">
                    <i class="fas fa-lightbulb text-base"></i>
                  </div>
                  <div class="text-left">
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Step 2
                    </p>
                    <h3 class="text-base font-medium">Electrical Energy (within the facility)</h3>
                  </div>
                </li>
                <li class="step space-x-4 pb-12 before:bg-slate-200 dark:before:bg-navy-500">
                  <div class="step-header mask is-hexagon bg-slate-200 text-slate-500 dark:bg-navy-500 dark:text-navy-100">
                    <i class="fas fa-battery-full text-base"></i>
                  </div>
                  <div class="text-left">
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Step 3
                    </p>
                    <h3 class="text-base font-medium">Thermal Energy (within the facility)</h3>
                  </div>
                </li>
                 <li class="step space-x-4 pb-12 before:bg-slate-200 dark:before:bg-navy-500">
                 <div class="step-header mask is-hexagon bg-primary text-white dark:bg-accent">
                    <i class="fab fa-xbox text-base"></i>
                  </div>
                  <div class="text-left">
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Step 4
                    </p>
                    <h3 class="text-base font-medium text-primary dark:text-accent-light">Development/Compliance</h3>
                  </div>
                </li>
                <li class="step space-x-4 before:bg-slate-200 dark:before:bg-navy-500">
              <div class="step-header mask is-hexagon bg-slate-200 text-slate-500 dark:bg-navy-500 dark:text-navy-100">
                      <i class="fa-solid fa-check text-base"></i>
                  </div>
                  <div class="text-left">
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Step 5
                    </p>
                    <h3 class="text-base font-medium ">Confirm</h3>
                  </div>
                </li>
              </ol>
            </div>
          </div>
          <div class="col-span-12 grid lg:col-span-8">
            <div class="card">
              <div class="border-b border-slate-200 p-4 dark:border-navy-500 sm:px-5">
                <div class="flex items-center space-x-2">
                  <div class="flex h-7 w-7 items-center justify-center rounded-lg bg-primary/10 p-1 text-primary dark:bg-accent-light/10 dark:text-accent-light">
                    <i class="fab fa-xbox"></i>
                  </div>
                  <h4 class="text-lg font-medium text-slate-700 dark:text-navy-100">
                  Greenbelt & Training Devlopment/Compliance
                  </h4>
                </div>
              </div>
              <div class="space-y-4 p-4 sm:p-5">
                <label class="block">
                  <span>Plantation Of New Tress (either W/in or Outside the facility)</span><span style="color:red;">*</span>
                  <span class="relative mt-1.5 flex">
                    <input class=" margin mt-2 form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" 
					placeholder="Enter Absolute No.of Plantation" type="text"
					>
                  </span>
                </label>
                 <div class="space-y-4 p-4 sm:p-5"style="
    margin-left: -21px;
">
                <label class="block">
                  <span>Electricity Consumption from Renewable (Solar) Source</span><span style="color:red;">*</span>
                  <span class="relative mt-1.5 flex" style="margin-left: 2px; width: 27.5rem;">
                    <input class=" margin mt-2 form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" 
					placeholder="Mention No.of hours for Training" type="text"
					>
                  </span>
                </label>
                 <div class="space-y-4 p-4 sm:p-5" style="margin-left: -18px;width: 30rem;">
                <label class="block">
                  <span>Number Of voilations & Non-Complaince</span><span style="color:red;">*</span>
                  <span class="relative mt-1.5 flex">
                    <input class=" margin mt-2 form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" 
					placeholder="Enter No.of voilations & Compliance" type="text"
					>
                  </span>
                </label>
                </div>
                </div>
               
                <div class="flex justify-center space-x-2 pt-4">
                   <a href="http://localhost:8080/rescorecard/views/dashboardAdmin5.jsp" class="btn space-x-2 bg-slate-150 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">                 
                     <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                      <path fill-rule="evenodd" d="M7.707 14.707a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 1.414L5.414 9H17a1 1 0 110 2H5.414l2.293 2.293a1 1 0 010 1.414z" clip-rule="evenodd"></path>
                    </svg>
                    <span>Previous</span>
                
                  
				  </a>
                 <a href="http://localhost:8080/rescorecard/views/dashboardAdmin7.jsp" class="btn space-x-2 bg-slate-150 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">                 
                    <span>Next</span>
                  
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                      <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                    </svg>
				  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
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
    z-rescorecard: 1;
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
                      src="/rescorecard/resources/images/CyberSecurity Launch.png"
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
		 <script src="/rescorecard/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/rescorecard/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
 <script src="/rescorecard/resources/js/jquery-validation-1.19.1.min.js"  ></script>
     <script src="/rescorecard/resources/js/datetime-moment-v1.10.12.js"  ></script>
       <script src="/rescorecard/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/rescorecard/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/rescorecard/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
      <script src="/rescorecard/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/rescorecard/resources/js/datetime-moment-v1.10.12.js"  ></script>
       <script src="/rescorecard/resources/js/jquery-validation-1.19.1.min.js"  ></script>
         <script src="/rescorecard/resources/js/dataTables.material.min.js"  ></script>
      <script src="/rescorecard/resources/js/moment-v2.8.4.min.js"  ></script>
        <script src="/rescorecard/resources/vendors/js/forms/select/select2.full.min.js"></script>
           <script src="/rescorecard/resources/js/scripts/forms/form-select2.min.js"></script>
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

            var clock =  ' <div class="mt-5 space-y-4 " style=" margin-left: 2rem;"> <div class="flex items-center justify-between"> <div class="flex items-center space-x-2"> <img class="h-10 w-1w mgi" src="/rescorecard/resources/images/avatar/Paomedia-Small-N-Flat-Calendar.png" alt="calander">  &nbsp;<p class="text-base font-medium text-slate-700 dark:text-navy-100">'+date+ '</p>   </div></div><div class="flex items-center justify-between"><div class="flex items-center space-x-2"> <img class=" mgi h-10 w-1w" src="/rescorecard/resources/images/avatar/Red_clock.png" alt="image">  &nbsp;<p class="text-base font-medium text-slate-700 dark:text-navy-100">' +time+'</p></div></div></div>';
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