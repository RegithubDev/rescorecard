<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from lineone.piniastudio.com/dashboards-authors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:24 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <!-- Meta tags  -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />

    <title>PurpleWest - Admin Dashboard</title>
    <link rel="icon" type="image/png"  href="/courses/resources/images/favicon.png" />
 <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <!-- CSS Assets -->
    <link rel="stylesheet"  href="/courses/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/courses/resources/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <script>
      /**
       * THIS SCRIPT REQUIRED FOR PREVENT FLICKERING IN SOME BROWSERS
       */
      localStorage.getItem("_x_darkMode_on") === "true" &&
        document.documentElement.classList.add("dark");
    </script>
    <style type="text/css">
   .razorpay-popup-model {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.6);
  z-index: 9999;
  display: flex;
  justify-content: center;
  align-items: center;
}

/* style the form element */
.razorpay-popup-model form {
  background-color: #fff;
  border-radius: 4px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  padding: 20px;
  width: 400px;
  max-width: 100%;
  box-sizing: border-box;
}

/* style the input field */
.razorpay-popup-model input[type="number"] {
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 8px;
  margin-bottom: 10px;
  width: 100%;
  box-sizing: border-box;
}
.w-ss {
    width: 14rem;
}
.parent {
  display: flex;
  flex-wrap: wrap;
  width: 118%;
  height: 100%;
}

.child {
    width: 23%;
    height: 40%;
    border: 1px solid #e4d2d2;
}
@media only screen and (max-width: 600px) {
  .parent {
       flex-direction: inherit;
    width: 100%;
    height: 93%;;
  }
  .child {
    width: 104%;
    height: 18%;
    border: 1px solid #e4d2d2;
}
}
.w-ww {
    width: 5rem;
}
.h-hh {
    height: 5rem;
}
    </style>
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
    	<jsp:include page="../views/layout/header.jsp"></jsp:include> 
    
 
      <!-- Main Content Wrapper -->
      <main class="main-content w-full pb-8">
           <div class="mt-5 p-6 transition-all duration-[.25s]">
          <p class="text-base font-medium text-right text-slate-700 dark:text-navy-100">
          <fmt:formatNumber value="${sessionScope.CREDITS }" pattern="#0.00" /> Wallet Amount <i class="fa-solid fa-wallet"></i><br>
          <button onclick="openRazorpay()" class="btn bg-gradient-to-r from-sky-400 to-blue-600 font-medium text-white">+ TopUp</button>
          </p>
        </div>
        <div class="mt-5 p-6 transition-all duration-[.25s]">
          <p class="text-base font-medium text-slate-700 dark:text-navy-100">
            Upcoming Courses
          </p>
        </div>
        <div class="flex">
        
          <div class="swiper mx-0 mt-4 p-6 transition-all duration-[.25s] swiper-initialized swiper-horizontal swiper-backface-hidden" 
          x-init="$nextTick(()=>new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 18}))">
         
				
               <div class="swiper-wrapper" id="swiper-wrapper-d1043e7a3ad88c309" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
             <c:if test="${fn:length(allCoursessList) gt 0}">
            <c:forEach var="obj" items="${allCoursessList}" varStatus="index">
              <div class="card swiper-slide flex w-ss shrink-0 justify-between rounded-xl border-l-4 border-primary p-4 swiper-slide-active" role="group" aria-label="${index.count } / ${fn:length(allCoursessList)}" style="margin-right: 18px;">
                <div>
                  <p class="font-medium tracking-wide text-slate-700 line-clamp-2 dark:text-navy-100">
                    ${obj.course_name }
                  </p> 
                  <a href="#" class="mt-0.5 text-xs+ text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">${obj.user_name }</a>
                </div>
                <div class="mt-6">
                  <div x-tooltip.primary="'25% Completed'" class="progress h-1 bg-slate-150 dark:bg-navy-500">
                    <div class="w-4/12 rounded-full bg-primary dark:bg-accent"></div>
                  </div>
                  <div class="mt-2 flex items-center justify-between text-primary dark:text-accent-light">
                    <p class="font-medium">Join Class</p>
                    <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                    <p class="font-medium">Decline</p>
                  </div>
                
                </div>
              </div>
               </c:forEach>
           </c:if>
            </div>
            </div>
            <c:if test="${fn:length(allCoursessList) eq 0}">
             <div class="mt-1 p-6 transition-all duration-[.25s]">
		          <p class=" font-medium text-slate-600 dark:text-navy-100">
		          No Upcoming Courses....
		        <%--     <div class="mt-2 flex items-center justify-between text-primary dark:text-accent-light">
                    <p class="font-medium">Buy New Courses</p>
                    <a href="<%=request.getContextPath() %>/courses-for-student">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </a>
                  </div> --%>
		          </p>
		        </div>
            </c:if>
          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>
   
       <!--  <div class="mt-5 p-6 transition-all duration-[.25s]">
          <p class="text-base font-medium text-slate-700 dark:text-navy-100">
            All Courses
          </p>
        </div> -->
         <%-- <div class="flex">
         
          <div class="swiper mx-0 mt-4 p-6 transition-all duration-[.25s] swiper-initialized swiper-horizontal swiper-backface-hidden" 
          style="padding-right: 0rem !important;" x-init="$nextTick(()=>new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 18}))">
         
				
                   <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-3 lg:gap-6 xl:grid-cols-4">
        
          <c:forEach var="obj" items="${allCoursessList}">
				
         	 <div class="card">
            <div class="p-2 text-right">
              <div x-data="usePopper({placement:'bottom-end',offset:4})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="inline-flex">
                <button x-ref="popperRef" @click="isShowPopper = !isShowPopper" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                 
                </button>
              </div>
            </div>
            <div class="flex grow flex-col items-center px-4 pb-5 sm:px-5">
              <div class="avatar h-20 w-20">
                <img class="rounded-full" src="https://leverageedublog.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2019/11/23172210/List-of-Courses-after-10th-Standard.jpg" alt="avatar">
              </div>
              <h3 class="pt-3 text-lg font-medium text-slate-700 dark:text-navy-100">
                ${obj.course_name }
              </h3>
              <p class="text-xs+"> ${obj.user_name }</p>
        
              <div class="mt-6 grid w-full grid-cols-1 ">
        <a href="<%=request.getContextPath() %>/goto-course-student/${obj.course_id }"  class="btn space-x-2 bg-primary px-0 font-medium text-white hover:bg-primary-focus focus:bg-primary-focus 
                active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90">
                   
                  <span>Buy Now</span>
       
                </a>
           
     
              </div>
            </div>
          </div>
          
          </c:forEach>
          </div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
            
            
           
         
          
        </div> --%>
        <hr>
         <div class="flex m-8">
        <div class="col-span-12 lg:col-span-4 ml-4 mt-4">
            <div class="flex items-center justify-between">
              <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                All Courses
              </h2>
              
            </div>
            <div class="parent mt-3 grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-x-5 lg:grid-cols-1">
              <c:forEach var="obj" items="${allCoursessList}">
              <div class="child card p-2.5">
                <div class="flex justify-between space-x-2">
                  <div class="flex flex-1 flex-col justify-between">
                    <div>
                      <a href="#" class="font-medium text-slate-700 outline-none transition-colors line-clamp-2 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light"> ${obj.course_name }</a>
                      <a href="#" class="text-xs text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">${obj.user_name }</a>
                    </div>
                    <div class="flex items-center space-x-2 text-xs">
                      <div class="flex shrink-0 items-center space-x-1">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <p> ${obj.hours } h</p>
                      </div>
                      <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                         <div class="mt-6  grid-cols-1 ">
					        <a href="<%=request.getContextPath() %>/goto-course-student/${obj.course_id }"  class="btn space-x-2 bg-primary px-3 font-medium text-white
					         hover:bg-primary-focus focus:bg-primary-focus 
					                active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="
    position: absolute;
    top: 58%;
">
					                   
					                  <span>Buy Now</span>
					       
					                </a>
              </div>
                    </div>
                  </div>
                  <img class="h-hh w-ww rounded-lg object-cover" src="/courses/resources/images/others/design-sm.jpg" alt="image">
                </div>
              </div>
                </c:forEach>
              
            </div>
          </div>
          </div>
          <div class="mt-4 sm:mt-5 lg:mt-6 p-4">
              <div class="flex items-center justify-between">
                <h2 class="text-base font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                  Transactions 
                </h2>
                
              </div>
              <div class="card mt-3">
                <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                  <table class="is-hoverable w-full text-left">
                    <thead>
                      <tr>
                        <th class="whitespace-nowrap rounded-tl-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                          MODULE
                        </th>
                        <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                          Status
                        </th>
                        <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                          Remarks
                        </th>
                        <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                          TRANSACTION DATE
                        </th>

                        <th class="whitespace-nowrap rounded-tr-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5"></th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="obj" items="${myTransactions}">
                      <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                        <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                          <div class="flex items-center space-x-4">
                            <span class="font-medium text-slate-700 dark:text-navy-100">${obj.module }
                            </span>
                          </div>
                        </td>
                        <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                          <a href="#" class="hover:underline focus:underline">
                         <c:if test="${ obj.payment_status eq 'Success'}"> <span class="btn bg-success/10 font-medium text-success hover:bg-success/20 focus:bg-success/20 active:bg-success/25">${obj.payment_status }</span></c:if>
                         <c:if test="${ obj.payment_status ne 'Success'}"><span class="btn bg-error/10 font-medium text-error hover:bg-error/20 focus:bg-error/20 active:bg-error/25">${obj.payment_status }</span></c:if>
                          </a>
                        </td>
                        <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                          <a href="#" class="hover:underline focus:underline">
                            <c:if test="${ obj.status eq 'P'}"> <span class="btn font-medium text-success hover:bg-success/20 focus:bg-success/20 active:bg-success/25"><i class="fa-solid fa-arrow-turn-up"></i> &nbsp; ${obj.remarks }</span></c:if>
                         <c:if test="${ obj.status eq 'N'}"> <span class="btn font-medium text-error hover:bg-error/20 focus:bg-error/20 active:bg-error/25"><i class="fa-solid fa-arrow-turn-down"></i> &nbsp; ${obj.remarks }</span></c:if>
                          </a>
                        </td>
                        <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                          
                          ${obj.payment_completed_time } 
                        </td>

                      </tr>
                        </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
<%--         <div class="mt-4 grid grid-cols-12 gap-4 p-6 transition-all duration-[.25s] sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6">
          <div class="card col-span-12 pb-3 lg:col-span-6">
            <div class="mt-3 flex h-8 items-center justify-between px-4 sm:px-5">
              <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                Courses Timeline
              </h2>

              <div x-data="usePopper({placement:'bottom-end',offset:4})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="inline-flex">
                <button x-ref="popperRef" @click="isShowPopper = !isShowPopper" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
                  </svg>
                </button>

                <div x-ref="popperRoot" class="popper-root" :class="isShowPopper &amp;&amp; 'show'" style="position: fixed; inset: auto 0px 0px auto; margin: 0px; transform: translate(-660px, -96px);" data-popper-placement="top-end">
                  <div class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700">
                    <ul>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Action</a>
                      </li>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Another Action</a>
                      </li>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Something else</a>
                      </li>
                    </ul>
                    <div class="my-1 h-px bg-slate-150 dark:bg-navy-500"></div>
                    <ul>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Separated Link</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

            <div class="course-schedule-chart pr-2">
              <div x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.courseTimeline); $el._x_chart.render() });" style="min-height: 200px;"><div id="apexchartszqliluws" class="apexcharts-canvas apexchartszqliluws apexcharts-theme-light" style="width: 551px; height: 200px;"><svg id="SvgjsSvg1155" width="551" height="200" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG1157" class="apexcharts-inner apexcharts-graphical" transform="translate(27, 14)"><defs id="SvgjsDefs1156"><clipPath id="gridRectMaskzqliluws"><rect id="SvgjsRect1181" width="518" height="146.73" x="-2" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskzqliluws"></clipPath><clipPath id="nonForecastMaskzqliluws"></clipPath><clipPath id="gridRectMarkerMaskzqliluws"><rect id="SvgjsRect1182" width="518" height="150.73" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><line id="SvgjsLine1161" x1="0" y1="0" x2="0" y2="146.73" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="146.73" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="0"></line><line id="SvgjsLine1202" x1="9.252" y1="147.73" x2="9.252" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1204" x1="64.76400000000001" y1="147.73" x2="64.76400000000001" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1206" x1="120.27600000000001" y1="147.73" x2="120.27600000000001" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1208" x1="175.788" y1="147.73" x2="175.788" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1210" x1="231.3" y1="147.73" x2="231.3" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1212" x1="286.812" y1="147.73" x2="286.812" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1214" x1="342.32399999999996" y1="147.73" x2="342.32399999999996" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1216" x1="397.8359999999999" y1="147.73" x2="397.8359999999999" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1218" x1="453.34799999999984" y1="147.73" x2="453.34799999999984" y2="153.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g id="SvgjsG1197" class="apexcharts-grid"><g id="SvgjsG1198" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine1220" x1="0" y1="29.345999999999997" x2="514" y2="29.345999999999997" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1221" x1="0" y1="58.69199999999999" x2="514" y2="58.69199999999999" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1222" x1="0" y1="88.03799999999998" x2="514" y2="88.03799999999998" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1223" x1="0" y1="117.38399999999999" x2="514" y2="117.38399999999999" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG1199" class="apexcharts-gridlines-vertical"><line id="SvgjsLine1203" x1="64.76400000000001" y1="0" x2="64.76400000000001" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1205" x1="120.27600000000001" y1="0" x2="120.27600000000001" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1207" x1="175.788" y1="0" x2="175.788" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1209" x1="231.3" y1="0" x2="231.3" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1211" x1="286.812" y1="0" x2="286.812" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1213" x1="342.32399999999996" y1="0" x2="342.32399999999996" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1215" x1="397.8359999999999" y1="0" x2="397.8359999999999" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1217" x1="453.34799999999984" y1="0" x2="453.34799999999984" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><line id="SvgjsLine1226" x1="0" y1="146.73" x2="514" y2="146.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine1225" x1="0" y1="1" x2="0" y2="146.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG1200" class="apexcharts-grid-borders"><line id="SvgjsLine1201" x1="9.252" y1="0" x2="9.252" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1219" x1="0" y1="0" x2="514" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1224" x1="0" y1="146.73" x2="514" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1274" x1="0" y1="146.73" x2="514" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line><line id="SvgjsLine1277" x1="0" y1="1" x2="0" y2="146.73" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG1183" class="apexcharts-rangebar-series apexcharts-plot-series"><g id="SvgjsG1184" class="apexcharts-series" seriesName="series-1" rel="1" data:realIndex="0"><path id="SvgjsPath1188" d="M 8.225000000045634 4.4018999999999995 L 147.00500000001537 4.4018999999999995 L 147.00500000001537 24.9441 L 8.225000000045634 24.9441 Z" fill="rgba(0,143,251,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-rangebar-area" index="0" clip-path="url(#gridRectMaskzqliluws)" pathTo="M 8.225000000045634 4.4018999999999995 L 147.00500000001537 4.4018999999999995 L 147.00500000001537 24.9441 L 8.225000000045634 24.9441 Z" pathFrom="M 8.225000000045634 4.4018999999999995 L 8.225000000045634 4.4018999999999995 L 8.225000000045634 24.9441 L 8.225000000045634 24.9441 L 8.225000000045634 24.9441 L 8.225000000045634 24.9441 L 8.225000000045634 24.9441 L 8.225000000045634 4.4018999999999995 Z" data-range-y1="1551225600000" data-range-y2="1551657600000" cy="4.4018999999999995" cx="147.00400000001537" j="0" val="1551657600000" barHeight="20.542199999999998" barWidth="138.77999999996973"></path><path id="SvgjsPath1190" d="M 147.00500000001537 33.747899999999994 L 285.7850000000433 33.747899999999994 L 285.7850000000433 54.290099999999995 L 147.00500000001537 54.290099999999995 Z" fill="rgba(0,227,150,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-rangebar-area" index="0" clip-path="url(#gridRectMaskzqliluws)" pathTo="M 147.00500000001537 33.747899999999994 L 285.7850000000433 33.747899999999994 L 285.7850000000433 54.290099999999995 L 147.00500000001537 54.290099999999995 Z" pathFrom="M 147.00500000001537 33.747899999999994 L 147.00500000001537 33.747899999999994 L 147.00500000001537 54.290099999999995 L 147.00500000001537 54.290099999999995 L 147.00500000001537 54.290099999999995 L 147.00500000001537 54.290099999999995 L 147.00500000001537 54.290099999999995 L 147.00500000001537 33.747899999999994 Z" data-range-y1="1551657600000" data-range-y2="1552089600000" cy="33.747899999999994" cx="285.7840000000433" j="1" val="1552089600000" barHeight="20.542199999999998" barWidth="138.78000000002794"></path><path id="SvgjsPath1192" d="M 230.2729999999972 63.09389999999999 L 313.54100000003723 63.09389999999999 L 313.54100000003723 83.63609999999998 L 230.2729999999972 83.63609999999998 Z" fill="rgba(119,93,208,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-rangebar-area" index="0" clip-path="url(#gridRectMaskzqliluws)" pathTo="M 230.2729999999972 63.09389999999999 L 313.54100000003723 63.09389999999999 L 313.54100000003723 83.63609999999998 L 230.2729999999972 83.63609999999998 Z" pathFrom="M 230.2729999999972 63.09389999999999 L 230.2729999999972 63.09389999999999 L 230.2729999999972 83.63609999999998 L 230.2729999999972 83.63609999999998 L 230.2729999999972 83.63609999999998 L 230.2729999999972 83.63609999999998 L 230.2729999999972 83.63609999999998 L 230.2729999999972 63.09389999999999 Z" data-range-y1="1551916800000" data-range-y2="1552176000000" cy="63.09389999999999" cx="313.54000000003725" j="2" val="1552176000000" barHeight="20.542199999999998" barWidth="83.26800000004005"></path><path id="SvgjsPath1194" d="M 258.02899999999113 92.43989999999998 L 369.0530000000251 92.43989999999998 L 369.0530000000251 112.98209999999997 L 258.02899999999113 112.98209999999997 Z" fill="rgba(254,176,25,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-rangebar-area" index="0" clip-path="url(#gridRectMaskzqliluws)" pathTo="M 258.02899999999113 92.43989999999998 L 369.0530000000251 92.43989999999998 L 369.0530000000251 112.98209999999997 L 258.02899999999113 112.98209999999997 Z" pathFrom="M 258.02899999999113 92.43989999999998 L 258.02899999999113 92.43989999999998 L 258.02899999999113 112.98209999999997 L 258.02899999999113 112.98209999999997 L 258.02899999999113 112.98209999999997 L 258.02899999999113 112.98209999999997 L 258.02899999999113 112.98209999999997 L 258.02899999999113 92.43989999999998 Z" data-range-y1="1552003200000" data-range-y2="1552348800000" cy="92.43989999999998" cx="369.05200000002515" j="3" val="1552348800000" barHeight="20.542199999999998" barWidth="111.024000000034"></path><path id="SvgjsPath1196" d="M 369.0530000000251 121.78589999999998 L 507.83299999999485 121.78589999999998 L 507.83299999999485 142.32809999999998 L 369.0530000000251 142.32809999999998 Z" fill="rgba(255,69,96,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-rangebar-area" index="0" clip-path="url(#gridRectMaskzqliluws)" pathTo="M 369.0530000000251 121.78589999999998 L 507.83299999999485 121.78589999999998 L 507.83299999999485 142.32809999999998 L 369.0530000000251 142.32809999999998 Z" pathFrom="M 369.0530000000251 121.78589999999998 L 369.0530000000251 121.78589999999998 L 369.0530000000251 142.32809999999998 L 369.0530000000251 142.32809999999998 L 369.0530000000251 142.32809999999998 L 369.0530000000251 142.32809999999998 L 369.0530000000251 142.32809999999998 L 369.0530000000251 121.78589999999998 Z" data-range-y1="1552348800000" data-range-y2="1552780800000" cy="121.78589999999998" cx="507.8319999999949" j="4" val="1552780800000" barHeight="20.542199999999998" barWidth="138.77999999996973"></path><g id="SvgjsG1186" class="apexcharts-rangebar-goals-markers" style="pointer-events: none"><g id="SvgjsG1187" className="apexcharts-bar-goals-groups"></g><g id="SvgjsG1189" className="apexcharts-bar-goals-groups"></g><g id="SvgjsG1191" className="apexcharts-bar-goals-groups"></g><g id="SvgjsG1193" className="apexcharts-bar-goals-groups"></g><g id="SvgjsG1195" className="apexcharts-bar-goals-groups"></g></g></g><g id="SvgjsG1185" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine1227" x1="0" y1="0" x2="514" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1228" x1="0" y1="0" x2="514" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1229" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1230" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1231" class="apexcharts-point-annotations"></g><g id="SvgjsG1275" class="apexcharts-yaxis apexcharts-xaxis-inversed" rel="0"><g id="SvgjsG1276" class="apexcharts-yaxis-texts-g apexcharts-xaxis-inversed-texts-g" transform="translate(0, 0)"></g></g><g id="SvgjsG1232" class="apexcharts-xaxis apexcharts-yaxis-inversed"><g id="SvgjsG1233" class="apexcharts-xaxis-texts-g" transform="translate(0, -8)"><text id="SvgjsText1235" font-family="Helvetica, Arial, sans-serif" x="9.252" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1237">27 Feb</tspan><title>27 Feb</title></text><text id="SvgjsText1239" font-family="Helvetica, Arial, sans-serif" x="64.76400000000001" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1241">Mar '19</tspan><title>Mar '19</title></text><text id="SvgjsText1243" font-family="Helvetica, Arial, sans-serif" x="120.27600000000001" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1245">03 Mar</tspan><title>03 Mar</title></text><text id="SvgjsText1247" font-family="Helvetica, Arial, sans-serif" x="175.788" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1249">05 Mar</tspan><title>05 Mar</title></text><text id="SvgjsText1251" font-family="Helvetica, Arial, sans-serif" x="231.3" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1253">07 Mar</tspan><title>07 Mar</title></text><text id="SvgjsText1255" font-family="Helvetica, Arial, sans-serif" x="286.812" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1257">09 Mar</tspan><title>09 Mar</title></text><text id="SvgjsText1259" font-family="Helvetica, Arial, sans-serif" x="342.32399999999996" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1261">11 Mar</tspan><title>11 Mar</title></text><text id="SvgjsText1263" font-family="Helvetica, Arial, sans-serif" x="397.8359999999999" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1265">13 Mar</tspan><title>13 Mar</title></text><text id="SvgjsText1267" font-family="Helvetica, Arial, sans-serif" x="453.34799999999984" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1269">15 Mar</tspan><title>15 Mar</title></text><text id="SvgjsText1271" font-family="Helvetica, Arial, sans-serif" x="508.8599999999998" y="176.73" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1273"></tspan><title></title></text></g></g><rect id="SvgjsRect1278" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect1279" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><rect id="SvgjsRect1160" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG1158" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 100px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 78px; top: 8.5px;"><div class="apexcharts-tooltip-rangebar"><div> <span class="series-name" style="color: #008FFB"></span></div><div> <span class="category">Analysis: </span> <span class="value start-value">
  27 Feb
  </span> <span class="separator">-</span> <span class="value end-value">
  04 Mar
  </span> </div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
            </div>
          </div>
          <div class="order-first col-span-12 grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:order-none lg:col-span-6 lg:gap-6">
            <div class="card justify-between p-5">
              <p class="font-medium">Courses In Progress</p>
              <div class="flex items-center justify-between pt-4">
                <p class="text-3xl font-semibold text-slate-700 dark:text-navy-100">
                  32
                </p>
                <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 text-primary dark:text-accent" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 8v8m-4-5v5m-4-2v2m-2 4h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                </svg>
              </div>
            </div>
            <div class="card justify-between p-5">
              <p class="font-medium">Completed Courses</p>
              <div class="flex items-center justify-between pt-4">
                <p class="text-3xl font-semibold text-slate-700 dark:text-navy-100">
                  14
                </p>
                <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 text-secondary dark:text-secondary-light" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z"></path>
                </svg>
              </div>
            </div>
            <div class="card justify-between p-5">
              <p class="font-medium">Watching Time</p>
              <div class="flex items-center justify-between pt-4">
                <p class="text-slate-700 dark:text-navy-100">
                  <span class="text-3xl font-semibold">214h</span>
                  <span class="text-xl font-medium">21m</span>
                </p>
                <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 text-warning" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z"></path>
                </svg>
              </div>
            </div>
            <div class="card justify-between p-5">
              <p class="font-medium">Earning Points</p>
              <div class="flex items-center justify-between pt-4">
                <p class="text-3xl font-semibold text-slate-700 dark:text-navy-100">
                  8
                </p>
                <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 text-success" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 11l3-3m0 0l3 3m-3-3v8m0-13a9 9 0 110 18 9 9 0 010-18z"></path>
                </svg>
              </div>
            </div>
          </div>
          <div class="col-span-12 flex flex-col sm:col-span-6 lg:col-span-4">
            <div class="m-auto px-5">
              <img class="w-full max-w-xs" src="images/illustrations/awards-man.svg" alt="image">
            </div>
            <div class="mt-4 space-y-4 sm:mt-5 lg:mt-6">
              <div class="card p-4">
                <div class="flex items-center space-x-3">
                  <div>
                    <img class="h-10 w-10" src="images/awards/award-31.svg" alt="image">
                  </div>
                  <div>
                    <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                      Advanced Level
                    </p>
                    <p class="text-xs text-slate-400 line-clamp-1 dark:text-navy-300">
                      Lorem ipsum dolor sit amet.
                    </p>
                  </div>
                </div>
              </div>
              <div class="card p-4">
                <div class="flex items-center space-x-3">
                  <div>
                    <img class="h-10 w-10" src="images/awards/award-27.svg" alt="image">
                  </div>
                  <div>
                    <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                      Boss Level
                    </p>
                    <p class="text-xs text-slate-400 line-clamp-1 dark:text-navy-300">
                      Lorem ipsum dolor sit amet.
                    </p>
                  </div>
                </div>
              </div>
              <div class="card p-4">
                <div class="flex items-center space-x-3">
                  <div>
                    <img class="h-10 w-10" src="images/awards/award-5.svg" alt="image">
                  </div>
                  <div>
                    <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                      Expert Level
                    </p>
                    <p class="text-xs text-slate-400 line-clamp-1 dark:text-navy-300">
                      Lorem ipsum dolor sit amet.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-span-12 sm:col-span-6 lg:col-span-4">
            <div class="flex items-center justify-between">
              <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                Group Lessons
              </h2>
              <div x-data="usePopper({placement:'bottom-end',offset:4})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="inline-flex">
                <button x-ref="popperRef" @click="isShowPopper = !isShowPopper" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
                  </svg>
                </button>

                <div x-ref="popperRoot" class="popper-root" :class="isShowPopper &amp;&amp; 'show'" style="position: fixed; inset: auto 0px 0px auto; margin: 0px; transform: translate(-452px, 172px);" data-popper-placement="top-end" data-popper-reference-hidden="" data-popper-escaped="">
                  <div class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700">
                    <ul>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Action</a>
                      </li>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Another Action</a>
                      </li>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Something else</a>
                      </li>
                    </ul>
                    <div class="my-1 h-px bg-slate-150 dark:bg-navy-500"></div>
                    <ul>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Separated Link</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="mt-3 flex flex-col justify-between space-y-4">
              <div class="card p-4">
                <p class="font-medium text-slate-700 dark:text-navy-100">
                  Social Media Marketing
                </p>
                <p class="mt-1 text-xs+">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </p>
                <div class="mt-4 flex flex-wrap -space-x-2">
                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-16.jpg" alt="avatar">
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <div class="is-initial rounded-full bg-info text-xs+ uppercase text-white ring ring-white dark:ring-navy-700">
                      jd
                    </div>
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-20.jpg" alt="avatar">
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-19.jpg" alt="avatar">
                  </div>
                </div>
                <div class="mt-2 flex items-end justify-between">
                  <p class="flex items-center space-x-2 text-slate-400 dark:text-navy-300">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                    </svg>
                    <span class="text-xs">25 May, 2022</span>
                  </p>
                  <button class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 hover:shadow-lg hover:shadow-slate-200/50 focus:bg-slate-200 focus:shadow-lg focus:shadow-slate-200/50 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:hover:shadow-navy-450/50 dark:focus:bg-navy-450 dark:focus:shadow-navy-450/50 dark:active:bg-navy-450/90">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 rotate-45" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 11l5-5m0 0l5 5m-5-5v12"></path>
                    </svg>
                  </button>
                </div>
              </div>
              <div class="card p-4">
                <p class="font-medium text-slate-700 dark:text-navy-100">
                  Figma: Create Design System
                </p>
                <p class="mt-1 text-xs+">Lonsectetur adipisicing elit.</p>
                <div class="mt-4 flex flex-wrap -space-x-2">
                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-1.jpg" alt="avatar">
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <div class="is-initial rounded-full bg-success text-xs+ uppercase text-white ring ring-white dark:ring-navy-700">
                      nb
                    </div>
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-2.jpg" alt="avatar">
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-3.jpg" alt="avatar">
                  </div>
                </div>
                <div class="mt-2 flex items-end justify-between">
                  <p class="flex items-center space-x-2 text-slate-400 dark:text-navy-300">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                    </svg>
                    <span class="text-xs">25 May, 2022</span>
                  </p>
                  <button class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 hover:shadow-lg hover:shadow-slate-200/50 focus:bg-slate-200 focus:shadow-lg focus:shadow-slate-200/50 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:hover:shadow-navy-450/50 dark:focus:bg-navy-450 dark:focus:shadow-navy-450/50 dark:active:bg-navy-450/90">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 rotate-45" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 11l5-5m0 0l5 5m-5-5v12"></path>
                    </svg>
                  </button>
                </div>
              </div>
              <div class="card p-4">
                <p class="font-medium text-slate-700 dark:text-navy-100">
                  Getting started with Vue
                </p>
                <p class="mt-1 text-xs+">Ossumenda ratione repellat aliquid?</p>
                <div class="mt-4 flex flex-wrap -space-x-2">
                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-5.jpg" alt="avatar">
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <div class="is-initial rounded-full bg-warning text-xs+ uppercase text-white ring ring-white dark:ring-navy-700">
                      uh
                    </div>
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-16.jpg" alt="avatar">
                  </div>

                  <div class="avatar h-7 w-7 hover:z-10">
                    <img class="rounded-full ring ring-white dark:ring-navy-700" src="images/avatar/avatar-17.jpg" alt="avatar">
                  </div>
                </div>
                <div class="mt-2 flex items-end justify-between">
                  <p class="flex items-center space-x-2 text-slate-400 dark:text-navy-300">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                    </svg>
                    <span class="text-xs">06 June, 2022</span>
                  </p>
                  <button class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 hover:shadow-lg hover:shadow-slate-200/50 focus:bg-slate-200 focus:shadow-lg focus:shadow-slate-200/50 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:hover:shadow-navy-450/50 dark:focus:bg-navy-450 dark:focus:shadow-navy-450/50 dark:active:bg-navy-450/90">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 rotate-45" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 11l5-5m0 0l5 5m-5-5v12"></path>
                    </svg>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="col-span-12 lg:col-span-4">
            <div class="flex items-center justify-between">
              <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                Completed Course
              </h2>
              <div x-data="usePopper({placement:'bottom-end',offset:4})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="inline-flex">
                <button x-ref="popperRef" @click="isShowPopper = !isShowPopper" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
                  </svg>
                </button>

                <div x-ref="popperRoot" class="popper-root" :class="isShowPopper &amp;&amp; 'show'" style="position: fixed; inset: auto 0px 0px auto; margin: 0px; transform: translate(-64px, 172px);" data-popper-placement="top-end" data-popper-reference-hidden="" data-popper-escaped="">
                  <div class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700">
                    <ul>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Action</a>
                      </li>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Another Action</a>
                      </li>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Something else</a>
                      </li>
                    </ul>
                    <div class="my-1 h-px bg-slate-150 dark:bg-navy-500"></div>
                    <ul>
                      <li>
                        <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Separated Link</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="mt-3 grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-x-5 lg:grid-cols-1">
              <div class="card p-2.5">
                <div class="flex justify-between space-x-2">
                  <div class="flex flex-1 flex-col justify-between">
                    <div>
                      <a href="#" class="font-medium text-slate-700 outline-none transition-colors line-clamp-2 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">Learn JavaScript Unit Testing</a>
                      <a href="#" class="text-xs text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">Konnor Guzman</a>
                    </div>
                    <div class="flex items-center space-x-2 text-xs">
                      <div class="flex shrink-0 items-center space-x-1">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <p>10h 32m</p>
                      </div>
                      <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                      <span class="line-clamp-1">124 Students</span>
                    </div>
                  </div>
                  <img class="h-24 w-24 rounded-lg object-cover" src="images/others/testing-sm.jpg" alt="image">
                </div>
              </div>
              <div class="card p-2.5">
                <div class="flex justify-between space-x-2">
                  <div class="flex flex-1 flex-col justify-between">
                    <div>
                      <a href="#" class="font-medium text-slate-700 outline-none transition-colors line-clamp-2 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">Basic of digital marketing</a>
                      <a href="#" class="text-xs text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">Alfredo Elliott</a>
                    </div>
                    <div class="flex items-center space-x-2 text-xs">
                      <div class="flex shrink-0 items-center space-x-1">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <p>16h 14m</p>
                      </div>
                      <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                      <span class="line-clamp-1">475 Students </span>
                    </div>
                  </div>
                  <img class="h-24 w-24 rounded-lg object-cover" src="images/illustrations/store-ui.svg" alt="image">
                </div>
              </div>
              <div class="card p-2.5">
                <div class="flex justify-between space-x-2">
                  <div class="flex flex-1 flex-col justify-between">
                    <div>
                      <a href="#" class="font-medium text-slate-700 outline-none transition-colors line-clamp-2 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">Sales Analytics Advanced Complete Course</a>
                      <a href="#" class="text-xs text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">Travis Fuller</a>
                    </div>
                    <div class="flex items-center space-x-2 text-xs">
                      <div class="flex shrink-0 items-center space-x-1">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <p>4h 47m</p>
                      </div>
                      <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                      <span class="line-clamp-1">985 Students </span>
                    </div>
                  </div>
                  <img class="h-24 w-24 rounded-lg object-cover" src="images/others/sales-presentation-sm.jpg" alt="image">
                </div>
              </div>
              <div class="card p-2.5">
                <div class="flex justify-between space-x-2">
                  <div class="flex flex-1 flex-col justify-between">
                    <div>
                      <a href="#" class="font-medium text-slate-700 outline-none transition-colors line-clamp-2 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">Learn UI/UX Design</a>
                      <a href="#" class="text-xs text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">Henry Curtis</a>
                    </div>
                    <div class="flex items-center space-x-2 text-xs">
                      <div class="flex shrink-0 items-center space-x-1">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <p>7h 56m</p>
                      </div>
                      <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                      <span class="line-clamp-1">369 Students </span>
                    </div>
                  </div>
                  <img class="h-24 w-24 rounded-lg object-cover" src="images/others/design-sm.jpg" alt="image">
                </div>
              </div>
            </div>
          </div>
        </div>
 --%>      </main>
    </div>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>
     <form action="<%=request.getContextPath()%>/add-top-up" name="topUpForm" id="topUpForm"  method="post">	
      
        <input type="hidden" name="user_id" id="user_id" />
         <input type="hidden" name="payment_id" id="payment_id" />
        <input type="hidden" name="credits" id="credits" />
         <input type="hidden" name="role" id="role" />
	</form>
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
      function openRazorpay() {
    	  // create the popup model
    	  var popupModel = document.createElement("div");
    	  popupModel.classList.add("razorpay-popup-model");

    	  // create the form element
    	  var form = document.createElement("form");

    	  // create the input field to enter the amount manually
    	  var amountInput = document.createElement("input");
    	  amountInput.type = "number";
    	  amountInput.name = "amount";
    	  amountInput.placeholder = "Enter Amount";

    	  // create the submit button
    	  var submitButton = document.createElement("button");
    	  submitButton.type = "submit";
    	  submitButton.innerText = "Pay Now";

    	  // append the input field and submit button to the form element
    	  form.appendChild(amountInput);
    	  form.appendChild(submitButton);

    	  // append the form element to the popup model
    	  popupModel.appendChild(form);

    	  // append the popup model to the body element
    	  document.body.appendChild(popupModel);

    	  // open the Razorpay popup model when the submit button is clicked
    	  form.addEventListener("submit", function(event) {
    	    event.preventDefault();
			//alert(amountInput.value);
    	    var options = {
    	      "key": "rzp_test_467fDP2ju09Wx5",
    	      "amount": amountInput.value * 100, // convert to paise
    	      "name": "PurpleWest ",
    	      "description": "Test Transaction",
    	      "handler": function (response){
    	    	  
    	    	  var payment_id = response.razorpay_payment_id;
    	    	  var user_id = "${sessionScope.USER_ID}";
    	    	  var role = "${sessionScope.ROLE}"; 
    	    	  var oldAM = "${sessionScope.CREDITS}"; 
    	    	  $('#payment_id').val(payment_id);
    	    	  $('#user_id').val(user_id);
    	    	  $('#role').val(role);
    	    	  $('#credits').val(amountInput.value);
    	    	  $("#topUpForm ").submit();
    	         // alert('Payment successful');
    	      },
    	      "prefill": {
    	          "name": "${sessionScope.USER_NAME}", 
    	          "email": "saidileep.p@resustainability.com",
    	          "contact": "${sessionScope.NUMBER}"
    	      },
    	      "notes": {
    	          "address": "Razorpay Corporate Office"
    	      },
    	      "theme": {
    	          "color": "#F37254"
    	      }
    	    };
    	    var rzp1 = new Razorpay(options);
    	    rzp1.open();

    	    // remove the popup model from the body element
    	    document.body.removeChild(popupModel);
    	  });
    	}
    </script>
  </body>

<!-- Mirrored from lineone.piniastudio.com/dashboards-authors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:25 GMT -->
</html>
