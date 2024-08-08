<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

    <title>PurpleWest - Teacher Dashboard</title>
    <link rel="icon" type="image/png"  href="/courses/resources/images/favicon.png" />

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
      <main class="main-content w-full p-6 pb-8">
        <div class="mt-4 grid grid-cols-12 gap-4 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6">
          <div class="col-span-12 lg:col-span-8 xl:col-span-9">
            <div :class="$store.breakpoints.smAndUp &amp;&amp; 'via-purple-300'" class="card mt-12 bg-gradient-to-l from-pink-300 to-indigo-400 p-5 sm:mt-0 sm:flex-row via-purple-300">
              <div class="flex justify-center sm:order-last">
                <img class="-mt-16 h-40 sm:mt-0" src="images/illustrations/teacher.svg" alt="">
              </div>
              <div class="mt-2 flex-1 pt-2 text-center text-white sm:mt-0 sm:text-left">
                <h3 class="text-xl">
                  Welcome Back, <span class="font-semibold">${sessionScope.USER_NAME }</span>
                </h3>
                <p class="mt-2 leading-relaxed">
                  Your student completed
                  <span class="font-semibold text-navy-700">85%</span> of tasks
                </p>
                <p>Progress is <span class="font-semibold">excellent!</span></p>

               <!--  <button class="btn mt-6 bg-slate-50 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80">
                  View Lessons
                </button> -->
              </div>
            </div>

            <div class="mt-4 sm:mt-5 lg:mt-6">
              <div class="flex h-8 items-center justify-between">
                <h2 class="text-base font-medium tracking-wide text-slate-700 dark:text-navy-100">
                  My Classes
                </h2>
                <a href="#" class="border-b border-dotted border-current pb-0.5 text-xs+ font-medium text-primary outline-none transition-colors duration-300 hover:text-primary/70 focus:text-primary/70 dark:text-accent-light dark:hover:text-accent-light/70 dark:focus:text-accent-light/70">View All</a>
              </div>
              <div class="mt-3 grid grid-cols-1 gap-4 sm:grid-cols-3 sm:gap-5">
               <c:if test="${fn:length(myCoursessList) gt 0}">
            <c:forEach var="obj" items="${myCoursessList}">
           
                <div class="card flex-row overflow-hidden">
                  <div class="h-full w-1 bg-gradient-to-b from-blue-500 to-purple-600"></div>
                  <div class="flex flex-1 flex-col justify-between p-4 sm:px-5">
                   <a href="<%=request.getContextPath() %>/goto-course/${obj.course_id }">
                    <div>
                      <img class="h-12 w-12 rounded-lg object-cover object-center" src="https://cdn-icons-png.flaticon.com/512/3482/3482505.png" alt="image">
                      <h3 class="mt-3 font-medium text-slate-700 line-clamp-2 dark:text-navy-100">
                         ${obj.course_name }
                      </h3>
                      <p class="text-xs+"> ${obj.description }</p>
                      <div class="mt-2 flex space-x-1.5">
                        <a href="#" class="tag bg-primary py-1 px-1.5 text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90">
                          ${obj.user_name }
                        </a>
                      </div>  
                    </div>
                    </a>
                  </div>
                </div>
                
                 </c:forEach>
           </c:if>
              </div>
            </div>

          </div>
          <div class="col-span-12 lg:col-span-4 xl:col-span-3">
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-1 lg:gap-6">
              <div class="card pb-5">
                <div class="mt-3 flex items-center justify-between px-4">
                  <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                    Working Hours
                  </h2>
                  <div x-data="usePopper({placement:'bottom-end',offset:4})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="inline-flex">
                    <button x-ref="popperRef" @click="isShowPopper = !isShowPopper" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
                      </svg>
                    </button>

                    <div x-ref="popperRoot" class="popper-root" :class="isShowPopper &amp;&amp; 'show'" style="position: fixed; inset: 0px 0px auto auto; margin: 0px; transform: translate(-74px, 132px);" data-popper-placement="bottom-end">
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
                <div>
                  <div x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.workingHours); $el._x_chart.render() });" style="min-height: 212.7px;"><div id="apexchartsjyskyoh3" class="apexcharts-canvas apexchartsjyskyoh3 apexcharts-theme-light" style="width: 267px; height: 212.7px;"><svg id="SvgjsSvg1049" width="267" height="212.70000000000002" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG1051" class="apexcharts-inner apexcharts-graphical" transform="translate(28.5, 0)"><defs id="SvgjsDefs1050"><clipPath id="gridRectMaskjyskyoh3"><rect id="SvgjsRect1053" width="216" height="212" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskjyskyoh3"></clipPath><clipPath id="nonForecastMaskjyskyoh3"></clipPath><clipPath id="gridRectMarkerMaskjyskyoh3"><rect id="SvgjsRect1054" width="214" height="214" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG1055" class="apexcharts-radialbar"><g id="SvgjsG1056"><g id="SvgjsG1057" class="apexcharts-tracks"><g id="SvgjsG1058" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 105 27.759756097560967 A 77.24024390243903 77.24024390243903 0 1 1 104.98651903435702 27.759757273997153" fill="none" fill-opacity="1" stroke="rgba(242,242,242,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="9.181878048780488" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 105 27.759756097560967 A 77.24024390243903 77.24024390243903 0 1 1 104.98651903435702 27.759757273997153"></path></g></g><g id="SvgjsG1060"><g id="SvgjsG1064" class="apexcharts-series apexcharts-radial-series" seriesName="series-1" rel="1" data:realIndex="0"><path id="SvgjsPath1065" d="M 105 27.759756097560967 A 77.24024390243903 77.24024390243903 0 1 1 31.540162716358353 128.86854801551956" fill="none" fill-opacity="0.85" stroke="rgba(14,165,233,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="9.465853658536586" stroke-dasharray="0" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="252" data:value="70" index="0" j="0" data:pathOrig="M 105 27.759756097560967 A 77.24024390243903 77.24024390243903 0 1 1 31.540162716358353 128.86854801551956"></path></g><circle id="SvgjsCircle1061" r="72.6493048780488" cx="105" cy="105" class="apexcharts-radialbar-hollow" fill="transparent"></circle><g id="SvgjsG1062" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText1063" font-family="Helvetica, Arial, sans-serif" x="105" y="115" text-anchor="middle" dominant-baseline="auto" font-size="24px" font-weight="600" fill="#333333" class="apexcharts-text apexcharts-datalabel-value" style="font-family: Helvetica, Arial, sans-serif;">70%</text></g></g></g></g><line id="SvgjsLine1066" x1="0" y1="0" x2="210" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1067" x1="0" y1="0" x2="210" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG1052" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
                </div>
                <div class="px-4 text-center text-xs+ sm:px-5">
                  <p>Working hours calculated based on your activity</p>
                </div>
              </div>


            </div>
          </div>
        </div>
      </main>
    </div>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
    </script>
  </body>

<!-- Mirrored from lineone.piniastudio.com/dashboards-authors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:25 GMT -->
</html>
