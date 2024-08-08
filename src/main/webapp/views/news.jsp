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

    <title>ReOne - Re Sustainability ONE</title>
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
       
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <style>
      .text-re{
    	color:#e21e26;
    }
    #clock {
      font-family: Arial, sans-serif;
      font-size: 18px;
      text-align: center;
      padding: 20px;
      color: #333;
    }
    .content{
        color: white;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
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
    font-size: 35px;
    font-weight: 400;
    left: 20px;
    bottom: 5px;
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
    top: 9px;
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
           <!--    <a
                href="form-layout-5.html"
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
              </a> -->

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
                        <div
                          class="flex h-8 w-8 items-center justify-center rounded-lg bg-warning text-white"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                            stroke-width="2"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                            />
                          </svg>
                        </div>

                        <div>
                          <h2
                            class="font-medium text-slate-700 transition-colors group-hover:text-re group-focus:text-re dark:text-navy-100 dark:group-hover:text-accent-light dark:group-focus:text-accent-light"
                          >
                            Profile
                          </h2>
                          <div
                            class="text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                          >
                            Your profile setting
                          </div>
                        </div>
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
            <div
              class="flex h-18 w-full items-center justify-between pl-4 pr-1"
            >
              <div class="flex items-center">
                <div class="avatar mr-3 hidden h-9 w-9 lg:flex">
                  <div
                    class="is-initial rounded-full bg-secondary/10 text-secondary dark:bg-secondary-light/10 dark:text-secondary-light"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                      stroke-width="2"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
                      />
                    </svg>
                  </div>
                </div>
                <p
                  class="text-lg font-medium tracking-wider text-slate-800 line-clamp-1 dark:text-navy-100"
                >
                  POS
                </p>
              </div>
              <button
                @click="$store.global.isSidebarExpanded = false"
                class="btn h-7 w-7 rounded-full p-0 text-re hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:text-accent-light/80 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 xl:hidden"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M15 19l-7-7 7-7"
                  />
                </svg>
              </button>
            </div>

            <!-- Sidebar Panel Body -->
            <div class="flex h-[calc(100%-4.5rem)] grow flex-col">
              <div class="is-scrollbar-hidden grow overflow-y-auto">
                <div class="mt-2 px-4">
                  <button
                    class="btn w-full space-x-2 rounded-full border border-slate-200 py-2 font-medium text-slate-800 hover:bg-slate-150 focus:bg-slate-150 active:bg-slate-150/80 dark:border-navy-500 dark:text-navy-50 dark:hover:bg-navy-500 dark:focus:bg-navy-500 dark:active:bg-navy-500/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-4.5 w-4.5 text-error"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                      stroke-width="1.5"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"
                      />
                    </svg>
                    <span> Lock Screen</span>
                  </button>
                </div>

                <div x-data="{expanded:true}">
                  <div class="mt-4 flex items-center justify-between px-4">
                    <span class="text-xs font-medium uppercase">channels </span>
                    <div class="-mr-1.5 flex">
                      <button
                        class="btn h-6 w-6 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-3.5 w-3.5"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="#e21e26"
                          stroke-width="2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                          />
                        </svg>
                      </button>
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
                      <li>
                        <a
                          class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                          href="#"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5 text-secondary dark:text-secondary-light"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                            stroke-width="1.5"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                            />
                          </svg>
                          <span>Office</span>
                        </a>
                      </li>
                      <li>
                        <a
                          class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                          href="#"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5 text-warning"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                            stroke-width="1.5"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                            />
                          </svg>
                          <span>Main Warehouse</span>
                        </a>
                      </li>
                      <li>
                        <a
                          class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                          href="#"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5 text-info"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                            stroke-width="1.5"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                            />
                          </svg>
                          <span>Warehouse East</span>
                        </a>
                      </li>
                      <li>
                        <a
                          class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                          href="#"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5 text-success"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                            stroke-width="1.5"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                            />
                          </svg>
                          <span>Warehouse #12</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>

                <div class="my-3 mx-4 h-px bg-slate-200 dark:bg-navy-500"></div>

                <ul class="space-y-1.5 px-2 font-inter text-xs+ font-medium">
                  <li>
                    <a
                      class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                      href="#"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                        stroke-width="1.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M9 14l6-6m-5.5.5h.01m4.99 5h.01M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16l3.5-2 3.5 2 3.5-2 3.5 2zM10 8.5a.5.5 0 11-1 0 .5.5 0 011 0zm5 5a.5.5 0 11-1 0 .5.5 0 011 0z"
                        />
                      </svg>
                      <span class="text-slate-800 dark:text-navy-100"
                        >Top Deals</span
                      >
                    </a>
                  </li>
                  <li>
                    <a
                      class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                      href="#"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                        stroke-width="1.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"
                        />
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"
                        />
                      </svg>
                      <span class="text-slate-800 dark:text-navy-100"
                        >Setting</span
                      >
                    </a>
                  </li>
                  <li>
                    <a
                      class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                      href="#"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                        stroke-width="1.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                        />
                      </svg>
                      <span class="text-slate-800 dark:text-navy-100"
                        >History</span
                      >
                    </a>
                  </li>
                  <li>
                    <a
                      class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                      href="#"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                        stroke-width="1.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M9 17v-2m3 2v-4m3 4v-6m2 10H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"
                        />
                      </svg>
                      <span class="text-slate-800 dark:text-navy-100"
                        >Reports</span
                      >
                    </a>
                  </li>
                </ul>

                <div class="p-4">
                  <p>Sales Today</p>
                  <p
                    class="mt-1 text-base font-medium text-slate-700 dark:text-navy-100"
                  >
                    134.55$
                  </p>
                </div>
              </div>

              <div class="flex items-center space-x-3 p-4">
                <div
                  class="flex h-11 w-7 shrink-0 items-center justify-center rounded-full bg-primary dark:bg-accent"
                >
                  <i class="fa-brands fa-bluetooth-b text-2xl text-white"></i>
                </div>
                <div>
                  <div class="flex items-center space-x-2">
                    <p class="font-medium text-slate-700 dark:text-navy-100">
                      Card reader
                    </p>
                    <div
                      class="flex h-4.5 w-4.5 shrink-0 items-center justify-center rounded-full bg-success text-white"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-3.5 w-3.5"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="3"
                          d="M5 13l4 4L19 7"
                        />
                      </svg>
                    </div>
                  </div>
                  <p class="text-xs text-slate-400 dark:text-navy-300">
                    Device are connected
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Right Sidebar -->
      <div
        x-show="$store.global.isRightSidebarExpanded"
        @keydown.window.escape="$store.global.isRightSidebarExpanded = false"
      >
        <div
          class="fixed inset-0 z-[150] bg-slate-900/60 transition-opacity duration-200"
          @click="$store.global.isRightSidebarExpanded = false"
          x-show="$store.global.isRightSidebarExpanded"
          x-transition:enter="ease-out"
          x-transition:enter-start="opacity-0"
          x-transition:enter-end="opacity-100"
          x-transition:leave="ease-in"
          x-transition:leave-start="opacity-100"
          x-transition:leave-end="opacity-0"
        ></div>
        <div class="fixed right-0 top-0 z-[151] h-full w-full sm:w-80">
          <div
            x-data="{activeTab:'tabHome'}"
            class="relative flex h-full w-full transform-gpu flex-col bg-white transition-transform duration-200 dark:bg-navy-750"
            x-show="$store.global.isRightSidebarExpanded"
            x-transition:enter="ease-out"
            x-transition:enter-start="translate-x-full"
            x-transition:enter-end="translate-x-0"
            x-transition:leave="ease-in"
            x-transition:leave-start="translate-x-0"
            x-transition:leave-end="translate-x-full"
          >
            <div class="flex items-center justify-between py-2 px-4">
              <p
                x-show="activeTab === 'tabHome'"
                class="flex shrink-0 items-center space-x-1.5"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                  />
                </svg>
                <span class="text-xs">25 May, 2022</span>
              </p>
              <p
                x-show="activeTab === 'tabProjects'"
                class="flex shrink-0 items-center space-x-1.5"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z"
                  />
                </svg>
                <span class="text-xs">Projects</span>
              </p>
              <p
                x-show="activeTab === 'tabActivity'"
                class="flex shrink-0 items-center space-x-1.5"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>
                <span class="text-xs">Activity</span>
              </p>

              <button
                @click="$store.global.isRightSidebarExpanded=false"
                class="btn -mr-1 h-6 w-6 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="2"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M6 18L18 6M6 6l12 12"
                  />
                </svg>
              </button>
            </div>


            <div
              x-show="activeTab === 'tabProjects'"
              x-transition:enter="transition-all duration-500 easy-in-out"
              x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]"
              x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
              class="is-scrollbar-hidden overflow-y-auto overscroll-contain px-3 pt-1"
            >
              <div class="grid grid-cols-2 gap-3">
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between space-x-1">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      14
                    </p>
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      stroke-width="1.5"
                      class="h-5 w-5 text-re dark:text-accent"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                      />
                    </svg>
                  </div>
                  <p class="mt-1 text-xs+">Pending</p>
                </div>
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      36
                    </p>
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 text-success"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z"
                      />
                    </svg>
                  </div>
                  <p class="mt-1 text-xs+">Completed</p>
                </div>
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      143
                    </p>

                    <i class="fa fa-spinner text-base text-warning"></i>
                  </div>
                  <p class="mt-1 text-xs+">In Progress</p>
                </div>
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      279
                    </p>

                    <i class="fa-solid fa-list-check text-base text-info"></i>
                  </div>
                  <p class="mt-1 text-xs+">Total</p>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/lms-ui.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      LMS App Design
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 7 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-4/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    25%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-16.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-info text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        jd
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-20.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/store-ui.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      Store Dashboard
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 11 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-6/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    49%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-17.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-warning text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        dv
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-19.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/chat-ui.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      Chat Mobile App
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 19 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-2/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    13%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-5.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-error text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        gt
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-11.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/nft.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      NFT Marketplace App
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 5 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-9/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    78%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-8.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-success text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        jd
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-12.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div class="h-18"></div>
            </div>

            <div
              x-show="activeTab === 'tabActivity'"
              x-transition:enter="transition-all duration-500 easy-in-out"
              x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]"
              x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
              class="is-scrollbar-hidden overflow-y-auto overscroll-contain pt-1"
            >
              <div
                class="mx-3 flex flex-col items-center rounded-lg bg-slate-100 py-3 px-8 dark:bg-navy-600"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-8 w-8 text-secondary dark:text-secondary-light"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="2"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>

                <p class="mt-2 text-xs">Today</p>

                <p
                  class="text-lg font-medium text-slate-700 dark:text-navy-100"
                >
                  6hr 22m
                </p>

                <div
                  class="progress mt-3 h-2 bg-secondary/15 dark:bg-secondary-light/25"
                >
                  <div
                    class="is-active relative w-8/12 overflow-hidden rounded-full bg-secondary dark:bg-secondary-light"
                  ></div>
                </div>

                <button
                  class="btn mt-5 space-x-2 rounded-full border border-slate-300 px-3 text-xs+ font-medium text-slate-700 hover:bg-slate-150 focus:bg-slate-150 active:bg-slate-150/80 dark:border-navy-450 dark:text-navy-100 dark:hover:bg-navy-500 dark:focus:bg-navy-500 dark:active:bg-navy-500/90"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M15 13l-3 3m0 0l-3-3m3 3V8m0 13a9 9 0 110-18 9 9 0 010 18z"
                    />
                  </svg>
                  <span> Download Report</span>
                </button>
              </div>

              <ol class="timeline line-space mt-5 px-4 [--size:1.5rem]">
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-secondary dark:bg-navy-700 dark:text-secondary-light"
                  >
                    <i class="fa fa-user-edit text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        User Photo Changed
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >12 minute ago</span
                      >
                    </div>
                    <p class="py-1">John Doe changed his avatar photo</p>
                    <div class="avatar mt-2 h-20 w-20">
                      <img
                        class="mask is-squircle"
                        src="/index/resources/images/avatar/avatar-19.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-re dark:bg-navy-700 dark:text-accent"
                  >
                    <i class="fa-solid fa-image text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        Images Added
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >1 hour ago</span
                      >
                    </div>
                    <p class="py-1">Mores Clarke added new image gallery</p>
                    <div class="mt-4 grid grid-cols-3 gap-3">
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-1.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-2.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-3.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-4.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-5.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-6.jpg"
                        alt="image"
                      />
                    </div>
                    <div class="mt-4">
                      <span
                        class="font-medium text-slate-600 dark:text-navy-100"
                      >
                        Category:
                      </span>

                      <a
                        href="#"
                        class="text-xs text-re hover:text-re-focus dark:text-accent-light dark:hover:text-accent"
                      >
                        #Tag
                      </a>

                      <a
                        href="#"
                        class="text-xs text-re hover:text-re-focus dark:text-accent-light dark:hover:text-accent"
                      >
                        #Category
                      </a>
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-success dark:bg-navy-700"
                  >
                    <i class="fa fa-leaf text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        Design Completed
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >3 hours ago</span
                      >
                    </div>
                    <p class="py-1">
                      Robert Nolan completed the design of the CRM application
                    </p>
                    <a
                      href="#"
                      class="inline-flex items-center space-x-1 pt-2 text-slate-600 transition-colors hover:text-re dark:text-navy-100 dark:hover:text-accent"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-5 w-5"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                        stroke-width="1.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"
                        />
                      </svg>
                      <span>File_final.fig</span>
                    </a>
                    <div class="pt-2">
                      <a
                        href="#"
                        class="tag rounded-full border border-secondary/30 bg-secondary/10 text-secondary hover:bg-secondary/20 focus:bg-secondary/20 active:bg-secondary/25 dark:border-secondary-light/30 dark:bg-secondary-light/10 dark:text-secondary-light dark:hover:bg-secondary-light/20 dark:focus:bg-secondary-light/20 dark:active:bg-secondary-light/25"
                      >
                        UI/UX
                      </a>

                      <a
                        href="#"
                        class="tag rounded-full border border-info/30 bg-info/10 text-info hover:bg-info/20 focus:bg-info/20 active:bg-info/25"
                      >
                        CRM
                      </a>

                      <a
                        href="#"
                        class="tag rounded-full border border-success/30 bg-success/10 text-success hover:bg-success/20 focus:bg-success/20 active:bg-success/25"
                      >
                        Dashboard
                      </a>
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-warning dark:bg-navy-700"
                  >
                    <i class="fa fa-project-diagram text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        ER Diagram
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >a day ago</span
                      >
                    </div>
                    <p class="py-1">Team completed the ER diagram app</p>
                    <div>
                      <p class="text-xs text-slate-400 dark:text-navy-300">
                        Members:
                      </p>
                      <div class="mt-2 flex justify-between">
                        <div class="flex flex-wrap -space-x-2">
                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-16.jpg"
                              alt="avatar"
                            />
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <div
                              class="is-initial rounded-full bg-info text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                            >
                              jd
                            </div>
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-20.jpg"
                              alt="avatar"
                            />
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-8.jpg"
                              alt="avatar"
                            />
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-5.jpg"
                              alt="avatar"
                            />
                          </div>
                        </div>
                        <button
                          class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-5 w-5 rotate-45"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              stroke-width="2"
                              d="M7 11l5-5m0 0l5 5m-5-5v12"
                            />
                          </svg>
                        </button>
                      </div>
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-error dark:bg-navy-700"
                  >
                    <i class="fa fa-history text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        Weekly Report
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >a day ago</span
                      >
                    </div>
                    <p class="py-1">The weekly report was uploaded</p>
                  </div>
                </li>
              </ol>
              <div class="h-18"></div>
            </div>

            <div
              class="pointer-events-none absolute bottom-4 flex w-full justify-center"
            >
              <div
                class="pointer-events-auto mx-auto flex space-x-1 rounded-full border border-slate-150 bg-white px-4 py-0.5 shadow-lg dark:border-navy-700 dark:bg-navy-900"
              >
                <button
                  @click="activeTab = 'tabHome'"
                  :class="activeTab === 'tabHome' && 'text-re dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-re focus:bg-slate-300/20 focus:text-re active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab === 'tabHome'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="#e21e26"
                  >
                    <path
                      d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"
                    />
                  </svg>
                  <svg
                    x-show="activeTab !== 'tabHome'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1.5"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                    />
                  </svg>
                </button>
                <button
                  @click="activeTab = 'tabProjects'"
                  :class="activeTab === 'tabProjects' && 'text-re dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-re focus:bg-slate-300/20 focus:text-re active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab === 'tabProjects'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="#e21e26"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M3 3a1 1 0 000 2v8a2 2 0 002 2h2.586l-1.293 1.293a1 1 0 101.414 1.414L10 15.414l2.293 2.293a1 1 0 001.414-1.414L12.414 15H15a2 2 0 002-2V5a1 1 0 100-2H3zm11.707 4.707a1 1 0 00-1.414-1.414L10 9.586 8.707 8.293a1 1 0 00-1.414 0l-2 2a1 1 0 101.414 1.414L8 10.414l1.293 1.293a1 1 0 001.414 0l4-4z"
                      clip-rule="evenodd"
                    />
                  </svg>

                  <svg
                    x-show="activeTab !== 'tabProjects'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1.5"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z"
                    />
                  </svg>
                </button>
                <button
                  @click="activeTab = 'tabActivity'"
                  :class="activeTab === 'tabActivity' && 'text-re dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-re focus:bg-slate-300/20 focus:text-re active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab ===  'tabActivity'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="#e21e26"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"
                      clip-rule="evenodd"
                    />
                  </svg>
                  <svg
                    x-show="activeTab !==  'tabActivity'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1.5"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

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
             <!--  <button
                class="menu-toggle ml-0.5 flex h-7 w-7 flex-col justify-center space-y-1.5 text-re outline-none focus:outline-none dark:text-accent-light/80"
                :class="$store.global.isSidebarExpanded && 'active'"
                @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded"
              >
                <span></span>
                <span></span>
                <span></span>
              </button> -->
            </div>

            <!-- Right: Header buttons -->
            <div class="-mr-1.5 flex items-center space-x-2">
              <!-- Mobile Search Toggle -->
              <button
                @click="$store.global.isSearchbarActive = !$store.global.isSearchbarActive"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 sm:hidden"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5.5 w-5.5 text-slate-500 dark:text-navy-100"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                  />
                </svg>
              </button>

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
      <div
        x-show="$store.breakpoints.isXs && $store.global.isSearchbarActive"
        x-transition:enter="easy-out transition-all"
        x-transition:enter-start="opacity-0 scale-105"
        x-transition:enter-end="opacity-100 scale-100"
        x-transition:leave="easy-in transition-all"
        x-transition:leave-start="opacity-100 scale-100"
        x-transition:leave-end="opacity-0 scale-95"
        class="fixed inset-0 z-[100] flex flex-col bg-white dark:bg-navy-700 sm:hidden"
      >
        <div
          class="flex items-center space-x-2 bg-slate-100 px-3 pt-2 dark:bg-navy-800"
        >
          <button
            class="btn -ml-1.5 h-7 w-7 shrink-0 rounded-full p-0 text-slate-600 hover:bg-slate-300/20 active:bg-slate-300/25 dark:text-navy-100 dark:hover:bg-navy-300/20 dark:active:bg-navy-300/25"
            @click="$store.global.isSearchbarActive = false"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              fill="none"
              stroke-width="1.5"
              viewBox="0 0 24 24"
              stroke="#e21e26"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M15 19l-7-7 7-7"
              />
            </svg>
          </button>
          <input
            x-effect="$store.global.isSearchbarActive && $nextTick(() => $el.focus() );"
            class="form-input h-8 w-full bg-transparent placeholder-slate-400 dark:placeholder-navy-300"
            type="text"
            placeholder="Search here..."
          />
        </div>

        <div
          x-data="{activeTab:'tabAll'}"
          class="is-scrollbar-hidden flex shrink-0 overflow-x-auto bg-slate-100 px-2 text-slate-600 dark:bg-navy-800 dark:text-navy-200"
        >
          <button
            @click="activeTab = 'tabAll'"
            :class="activeTab === 'tabAll' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            All
          </button>
          <button
            @click="activeTab = 'tabFiles'"
            :class="activeTab === 'tabFiles' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Files
          </button>
          <button
            @click="activeTab = 'tabChats'"
            :class="activeTab === 'tabChats' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Chats
          </button>
          <button
            @click="activeTab = 'tabEmails'"
            :class="activeTab === 'tabEmails' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Emails
          </button>
          <button
            @click="activeTab = 'tabProjects'"
            :class="activeTab === 'tabProjects' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Projects
          </button>
          <button
            @click="activeTab = 'tabTasks'"
            :class="activeTab === 'tabTasks' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Tasks
          </button>
        </div>

        <div
          class="is-scrollbar-hidden overflow-y-auto overscroll-contain pb-2"
        >
          <div
            class="is-scrollbar-hidden mt-3 flex space-x-4 overflow-x-auto px-3"
          >
            <a href="apps-kanban.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-success text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M9 17V7m0 10a2 2 0 01-2 2H5a2 2 0 01-2-2V7a2 2 0 012-2h2a2 2 0 012 2m0 10a2 2 0 002 2h2a2 2 0 002-2M9 7a2 2 0 012-2h2a2 2 0 012 2m0 10V7m0 10a2 2 0 002 2h2a2 2 0 002-2V7a2 2 0 00-2-2h-2a2 2 0 00-2 2"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Kanban
              </p>
            </a>
            <a href="dashboards-crm-analytics.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-secondary text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Analytics
              </p>
            </a>
            <a href="apps-chat.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-info text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Chat
              </p>
            </a>
            <a href="apps-filemanager.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-error text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Files
              </p>
            </a>
            <a href="dashboards-crypto-1.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-secondary text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M15 9a2 2 0 10-4 0v5a2 2 0 01-2 2h6m-6-4h4m8 0a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Crypto
              </p>
            </a>
            <a href="dashboards-banking-1.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div
                  class="is-initial rounded-full bg-primary text-white dark:bg-accent"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Banking
              </p>
            </a>
            <a href="apps-todo.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-info text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      d="M12.5293 18L20.9999 8.40002"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                    <path
                      d="M3 13.2L7.23529 18L17.8235 6"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Todo
              </p>
            </a>

            <a href="dashboards-orders.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-warning text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Orders
              </p>
            </a>
          </div>

          <div
            class="mt-3 flex items-center justify-between bg-slate-100 py-1.5 px-3 dark:bg-navy-800"
          >
            <p class="text-xs uppercase">Recent</p>
            <a
              href="#"
              class="text-tiny+ font-medium uppercase text-re outline-none transition-colors duration-300 hover:text-re/70 focus:text-re/70 dark:text-accent-light dark:hover:text-accent-light/70 dark:focus:text-accent-light/70"
            >
              View All
            </a>
          </div>

          <div class="mt-1 font-inter font-medium">
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-chat.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
                />
              </svg>
              <span>Chat App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-filemanager.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"
                />
              </svg>
              <span>File Manager App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="404-3.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                />
              </svg>
              <span>Email App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-kanban.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M9 17V7m0 10a2 2 0 01-2 2H5a2 2 0 01-2-2V7a2 2 0 012-2h2a2 2 0 012 2m0 10a2 2 0 002 2h2a2 2 0 002-2M9 7a2 2 0 012-2h2a2 2 0 012 2m0 10V7m0 10a2 2 0 002 2h2a2 2 0 002-2V7a2 2 0 00-2-2h-2a2 2 0 00-2 2"
                />
              </svg>
              <span>Kanban Board</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-todo.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  d="M3 13.2L7.23529 18L17.8235 6"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
                <path
                  d="M12.5293 18L20.9999 8.40002"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
              <span>Todo App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-crypto-2.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M15 9a2 2 0 10-4 0v5a2 2 0 01-2 2h6m-6-4h4m8 0a9 9 0 11-18 0 9 9 0 0118 0z"
                />
              </svg>

              <span>Crypto Dashboard</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-banking-2.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3"
                />
              </svg>

              <span>Banking Dashboard</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-crm-analytics.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"
                />
              </svg>

              <span>Analytics Dashboard</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-influencer.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M16 8v8m-4-5v5m-4-2v2m-2 4h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"
                />
              </svg>

              <span>Influencer Dashboard</span>
            </a>
          </div>
        </div>
      </div>

      <!-- Main Content Wrapper -->
     <main class="main-content w-full p-6 pb-8">
        <div class="flex items-center justify-between py-5 lg:py-6">
                <div class="flex items-center space-x-4 py-5 lg:py-6 p-6">
          <h2 class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
            News 
          </h2>
          <div class="hidden h-full py-1 sm:flex">
            <div class="h-full w-px bg-slate-300 dark:bg-navy-600"></div>
          </div>
          <ul class="hidden flex-wrap items-center space-x-2 sm:flex">
            <li class="flex items-center space-x-2">
              <a class="text-re transition-colors hover:text-re-focus dark:text-accent-light dark:hover:text-accent" href="<%=request.getContextPath() %>/home">Dashboard</a>
              <svg x-ignore="" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="#e21e26">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
              </svg>
            </li>
            <li>News</li>
          </ul>
        </div>

          <div class="flex items-center space-x-2">
            <label class="relative hidden sm:flex">
              <input class="form-input peer h-9 w-full rounded-full border border-slate-300 bg-transparent px-3 py-2 pl-9 text-xs+ placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="Search users..." type="text">
              <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-re dark:text-navy-300 dark:peer-focus:text-accent">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 transition-colors duration-200" fill="#e21e26" viewBox="0 0 24 24">
                  <path d="M3.316 13.781l.73-.171-.73.171zm0-5.457l.73.171-.73-.171zm15.473 0l.73-.171-.73.171zm0 5.457l.73.171-.73-.171zm-5.008 5.008l-.171-.73.171.73zm-5.457 0l-.171.73.171-.73zm0-15.473l-.171-.73.171.73zm5.457 0l.171-.73-.171.73zM20.47 21.53a.75.75 0 101.06-1.06l-1.06 1.06zM4.046 13.61a11.198 11.198 0 010-5.115l-1.46-.342a12.698 12.698 0 000 5.8l1.46-.343zm14.013-5.115a11.196 11.196 0 010 5.115l1.46.342a12.698 12.698 0 000-5.8l-1.46.343zm-4.45 9.564a11.196 11.196 0 01-5.114 0l-.342 1.46c1.907.448 3.892.448 5.8 0l-.343-1.46zM8.496 4.046a11.198 11.198 0 015.115 0l.342-1.46a12.698 12.698 0 00-5.8 0l.343 1.46zm0 14.013a5.97 5.97 0 01-4.45-4.45l-1.46.343a7.47 7.47 0 005.568 5.568l.342-1.46zm5.457 1.46a7.47 7.47 0 005.568-5.567l-1.46-.342a5.97 5.97 0 01-4.45 4.45l.342 1.46zM13.61 4.046a5.97 5.97 0 014.45 4.45l1.46-.343a7.47 7.47 0 00-5.568-5.567l-.342 1.46zm-5.457-1.46a7.47 7.47 0 00-5.567 5.567l1.46.342a5.97 5.97 0 014.45-4.45l-.343-1.46zm8.652 15.28l3.665 3.664 1.06-1.06-3.665-3.665-1.06 1.06z"></path>
                </svg>
              </span>
            </label>

            <div class="flex">
              <button class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 sm:hidden sm:h-9 sm:w-9">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" stroke="#e21e26" fill="none" viewBox="0 0 24 24">
                  <circle cx="10.2" cy="10.2" r="7.2" stroke-width="1.5"></circle>
                  <path stroke-width="1.5" stroke-linecap="round" d="M21 21l-3.6-3.6"></path>
                </svg>
              </button>
              <button class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 sm:h-9 sm:w-9">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24">
                  <path fill="#e21e26" d="M3 5.109C3 4.496 3.47 4 4.05 4h16.79c.58 0 1.049.496 1.049 1.109 0 .612-.47 1.108-1.05 1.108H4.05C3.47 6.217 3 5.721 3 5.11zM5.798 12.5c0-.612.47-1.109 1.05-1.109H18.04c.58 0 1.05.497 1.05 1.109s-.47 1.109-1.05 1.109H6.848c-.58 0-1.05-.497-1.05-1.109zM9.646 18.783c-.58 0-1.05.496-1.05 1.108 0 .613.47 1.109 1.05 1.109h5.597c.58 0 1.05-.496 1.05-1.109 0-.612-.47-1.108-1.05-1.108H9.646z"></path>
                </svg>
              </button>
              <button class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 sm:h-9 sm:w-9">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="#e21e26">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                </svg>
              </button>
            </div>
          </div>
        </div>
        <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-3 lg:gap-6">
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-2.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div><a class="text-xs+ text-info" href="#">Frameworks</a></div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">What is Tailwind CSS?</a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>June 23, 2021</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Eveniet, provident quasi recusandae repudiandae rerum
                temporibus!
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-3.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div><a class="text-xs+ text-info" href="#">Frameworks</a></div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">Tailwind CSS Card Example
                </a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>May 25, 2021</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est
                repellat nisi corrupti. Lorem, ipsum.
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-4.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div>
                <a class="text-xs+ text-info" href="#">Programming Language</a>
              </div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">What is PHP?
                </a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>March 14, 2022</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Eveniet, provident quasi recusandae repudiandae rerum
                temporibus!
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-7.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div>
                <a class="text-xs+ text-info" href="#">UI/UX</a>
              </div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">Top Design Systems
                </a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>March 14, 2022</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem
                quibusdam, ipsam in eveniet quod voluptatum!
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-5.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div>
                <a class="text-xs+ text-info" href="#">UI/UX</a>
              </div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">313 Pattern and Color ideas
                </a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>December 27, 2021</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                Voluptates impedit odio consectetur! Voluptatem ipsa nulla
                excepturi voluptatibus.
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-6.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div>
                <a class="text-xs+ text-info" href="#">Programming Language</a>
              </div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">NodeJS Design Patterns
                </a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>November 9, 2021</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                Voluptates impedit odio consectetur! Voluptatem ipsa nulla
                excepturi voluptatibus.
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-9.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div><a class="text-xs+ text-info" href="#">Frameworks</a></div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">What is Tailwind CSS?</a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>June 23, 2021</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Eveniet, provident quasi recusandae repudiandae rerum
                temporibus!
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-8.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div><a class="text-xs+ text-info" href="#">Frameworks</a></div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">Tailwind CSS Card Example
                </a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>May 25, 2021</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est
                repellat nisi corrupti. Lorem, ipsum.
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="p-2.5">
              <img src="/index/resources/images/object/object-1.jpg" class="h-48 w-full rounded-lg object-cover object-center" alt="image">
            </div>
            <div class="flex grow flex-col px-4 pb-5 pt-1 text-center sm:px-5">
              <div>
                <a class="text-xs+ text-info" href="#">Programming Language</a>
              </div>
              <div class="mt-1">
                <a href="#" class="text-lg font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">What is PHP?
                </a>
              </div>
              <div class="my-2 flex items-center space-x-3 text-xs">
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
                <p>March 14, 2022</p>
                <div class="h-px flex-1 bg-slate-200 dark:bg-navy-500"></div>
              </div>
              <p class="my-2 grow text-left line-clamp-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Eveniet, provident quasi recusandae repudiandae rerum
                temporibus!
              </p>
              <div>
                <button class="btn mt-4 rounded-full bg-primary font-medium text-white hover:bg-primary-focus hover:shadow-lg hover:shadow-primary/50 focus:bg-primary-focus focus:shadow-lg focus:shadow-primary/50 active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:hover:shadow-accent/50 dark:focus:bg-accent-focus dark:focus:shadow-accent/50 dark:active:bg-accent/90">
                  Read Article
                </button>
              </div>
            </div>
          </div>
        </div>
      </main>
      

      <div
        x-data="{showDrawer:false}"
        x-show="showDrawer"
        x-effect="$store.breakpoints.smAndUp && (showDrawer = false)"
        @show-drawer.window="($event.detail.drawerId === 'pos-card-drawer') && (showDrawer = true)"
        @keydown.window.escape="showDrawer = false"
      >
        <div
          class="fixed inset-0 z-[100] bg-slate-900/60 transition-opacity duration-200"
          @click="showDrawer = false"
          x-show="showDrawer"
          x-transition:enter="ease-out"
          x-transition:enter-start="opacity-0"
          x-transition:enter-end="opacity-100"
          x-transition:leave="ease-in"
          x-transition:leave-start="opacity-100"
          x-transition:leave-end="opacity-0"
        ></div>
        <div
          class="fixed right-0 bottom-0 z-[101] h-[calc(100%-2.5rem)] w-full"
        >
          <div
            class="flex h-full w-full flex-col rounded-t-2xl bg-white px-4 py-3 transition-transform duration-200 dark:bg-navy-700"
            x-show="showDrawer"
            x-transition:enter="ease-out transform-gpu"
            x-transition:enter-start="translate-y-full"
            x-transition:enter-end="translate-y-0"
            x-transition:leave="ease-in transform-gpu"
            x-transition:leave-start="translate-y-0"
            x-transition:leave-end="translate-y-full"
          >
            <div class="flex items-center justify-between">
              <div class="-ml-1 flex items-center space-x-1.5">
                <button
                  @click="showDrawer=false"
                  class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4.5 w-4.5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="#e21e26"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M6 18L18 6M6 6l12 12"
                    />
                  </svg>
                </button>
                <div class="flex items-center space-x-1">
                  <p>
                    <span
                      class="text-base font-medium text-slate-700 dark:text-navy-100"
                      >Draft</span
                    >
                    <span>#001</span>
                  </p>

                  <div
                    x-data="usePopper({placement:'bottom-end',offset:4})"
                    @click.outside="isShowPopper && (isShowPopper = false)"
                    class="inline-flex"
                  >
                    <button
                      x-ref="popperRef"
                      @click="isShowPopper = !isShowPopper"
                      class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                        stroke-width="1.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M19 9l-7 7-7-7"
                        />
                      </svg>
                    </button>

                    <div
                      x-ref="popperRoot"
                      class="popper-root"
                      :class="isShowPopper && 'show'"
                    >
                      <div
                        class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700"
                      >
                        <ul>
                          <li>
                            <a
                              href="#"
                              class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                              >Draft #001</a
                            >
                          </li>
                          <li>
                            <a
                              href="#"
                              class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                              >Draft #002</a
                            >
                          </li>
                          <li>
                            <a
                              href="#"
                              class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                              >Draft #005</a
                            >
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="-mr-1.5 flex space-x-1">
                <button
                  class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4.5 w-4.5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1.5"
                      d="M12 4v16m8-8H4"
                    />
                  </svg>
                </button>
                <button
                  class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 hover:text-error focus:bg-slate-300/20 focus:text-error active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4.5 w-4.5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1.5"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"
                    />
                  </svg>
                </button>
                <div
                  x-data="usePopper({placement:'bottom-end',offset:4})"
                  @click.outside="isShowPopper && (isShowPopper = false)"
                  class="inline-flex"
                >
                  <button
                    x-ref="popperRef"
                    @click="isShowPopper = !isShowPopper"
                    class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-4.5 w-4.5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                      stroke-width="1.5"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M12 5v.01M12 12v.01M12 19v.01M12 6a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2z"
                      />
                    </svg>
                  </button>

                  <div
                    x-ref="popperRoot"
                    class="popper-root"
                    :class="isShowPopper && 'show'"
                  >
                    <div
                      class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700"
                    >
                      <ul>
                        <li>
                          <a
                            href="#"
                            class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Action</a
                          >
                        </li>
                        <li>
                          <a
                            href="#"
                            class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Another Action</a
                          >
                        </li>
                        <li>
                          <a
                            href="#"
                            class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Something else</a
                          >
                        </li>
                      </ul>
                      <div
                        class="my-1 h-px bg-slate-150 dark:bg-navy-500"
                      ></div>
                      <ul>
                        <li>
                          <a
                            href="#"
                            class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Separated Link</a
                          >
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="flex grow flex-col overflow-y-auto">
              <div class="mt-4 flex grow flex-col space-y-3.5">
                <div class="group flex items-center justify-between space-x-3">
                  <div class="flex items-center space-x-4">
                    <div class="relative flex">
                      <img
                        src="/index/resources/images/icons/food-4.jpg"
                        class="mask is-star h-11 w-11 origin-center object-cover"
                        alt="image"
                      />

                      <div
                        class="absolute top-0 right-0 -m-1 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full border border-white bg-slate-200 px-1 text-tiny+ font-medium leading-none text-slate-800 dark:border-navy-700 dark:bg-navy-450 dark:text-white"
                      >
                        2
                      </div>
                    </div>
                    <div>
                      <div class="flex items-center space-x-1">
                        <p
                          class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100"
                        >
                          Roast beef
                        </p>
                        <button
                          class="btn h-6 w-6 rounded-full p-0 opacity-0 hover:bg-slate-300/20 focus:bg-slate-300/20 focus:opacity-100 active:bg-slate-300/25 group-hover:opacity-100 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-3.5 w-3.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              stroke-width="2"
                              d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"
                            />
                          </svg>
                        </button>
                      </div>
                      <p class="text-xs+ text-slate-400 dark:text-navy-300">
                        Lorem ipsum dolor sit.
                      </p>
                    </div>
                  </div>
                  <p class="font-inter font-semibold">$12.00</p>
                </div>
                <div class="group flex items-center justify-between space-x-3">
                  <div class="flex items-center space-x-4">
                    <div class="relative flex">
                      <img
                        src="/index/resources/images/icons/food-5.jpg"
                        class="mask is-star h-11 w-11 origin-center object-cover"
                        alt="image"
                      />

                      <div
                        class="absolute top-0 right-0 -m-1 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full border border-white bg-slate-200 px-1 text-tiny+ font-medium leading-none text-slate-800 dark:border-navy-700 dark:bg-navy-450 dark:text-white"
                      >
                        1
                      </div>
                    </div>
                    <div>
                      <div class="flex items-center space-x-1">
                        <p
                          class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100"
                        >
                          Tuna salad
                        </p>
                        <button
                          class="btn h-6 w-6 rounded-full p-0 opacity-0 hover:bg-slate-300/20 focus:bg-slate-300/20 focus:opacity-100 active:bg-slate-300/25 group-hover:opacity-100 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-3.5 w-3.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              stroke-width="2"
                              d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"
                            />
                          </svg>
                        </button>
                      </div>
                      <p class="text-xs+ text-slate-400 dark:text-navy-300">
                        Amet consectetur adip.
                      </p>
                    </div>
                  </div>
                  <p class="font-inter font-semibold">$14.00</p>
                </div>
                <div class="group flex items-center justify-between space-x-3">
                  <div class="flex items-center space-x-4">
                    <div class="relative flex">
                      <img
                        src="/index/resources/images/icons/food-6.jpg"
                        class="mask is-star h-11 w-11 origin-center object-cover"
                        alt="image"
                      />

                      <div
                        class="absolute top-0 right-0 -m-1 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full border border-white bg-slate-200 px-1 text-tiny+ font-medium leading-none text-slate-800 dark:border-navy-700 dark:bg-navy-450 dark:text-white"
                      >
                        3
                      </div>
                    </div>
                    <div>
                      <div class="flex items-center space-x-1">
                        <p
                          class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100"
                        >
                          Salmon
                        </p>
                        <button
                          class="btn h-6 w-6 rounded-full p-0 opacity-0 hover:bg-slate-300/20 focus:bg-slate-300/20 focus:opacity-100 active:bg-slate-300/25 group-hover:opacity-100 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-3.5 w-3.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              stroke-width="2"
                              d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"
                            />
                          </svg>
                        </button>
                      </div>
                      <p class="text-xs+ text-slate-400 dark:text-navy-300">
                        Adipisicing elit. Quos?
                      </p>
                    </div>
                  </div>
                  <p class="font-inter font-semibold">$45.00</p>
                </div>
                <div class="group flex items-center justify-between space-x-3">
                  <div class="flex items-center space-x-4">
                    <div class="relative flex">
                      <img
                        src="/index/resources/images/icons/food-7.jpg"
                        class="mask is-star h-11 w-11 origin-center object-cover"
                        alt="image"
                      />

                      <div
                        class="absolute top-0 right-0 -m-1 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full border border-white bg-slate-200 px-1 text-tiny+ font-medium leading-none text-slate-800 dark:border-navy-700 dark:bg-navy-450 dark:text-white"
                      >
                        1
                      </div>
                    </div>
                    <div>
                      <div class="flex items-center space-x-1">
                        <p
                          class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100"
                        >
                          California roll
                        </p>
                        <button
                          class="btn h-6 w-6 rounded-full p-0 opacity-0 hover:bg-slate-300/20 focus:bg-slate-300/20 focus:opacity-100 active:bg-slate-300/25 group-hover:opacity-100 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-3.5 w-3.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              stroke-width="2"
                              d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"
                            />
                          </svg>
                        </button>
                      </div>
                      <p class="text-xs+ text-slate-400 dark:text-navy-300">
                        Lorem, ipsum dolor.
                      </p>
                    </div>
                  </div>
                  <p class="font-inter font-semibold">$22.00</p>
                </div>
                <div class="group flex items-center justify-between space-x-3">
                  <div class="flex items-center space-x-4">
                    <div class="relative flex">
                      <img
                        src="/index/resources/images/icons/food-10.jpg"
                        class="mask is-star h-11 w-11 origin-center object-cover"
                        alt="image"
                      />

                      <div
                        class="absolute top-0 right-0 -m-1 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full border border-white bg-slate-200 px-1 text-tiny+ font-medium leading-none text-slate-800 dark:border-navy-700 dark:bg-navy-450 dark:text-white"
                      >
                        2
                      </div>
                    </div>
                    <div>
                      <div class="flex items-center space-x-1">
                        <p
                          class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100"
                        >
                          Duck carpaccio
                        </p>
                        <button
                          class="btn h-6 w-6 rounded-full p-0 opacity-0 hover:bg-slate-300/20 focus:bg-slate-300/20 focus:opacity-100 active:bg-slate-300/25 group-hover:opacity-100 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-3.5 w-3.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              stroke-width="2"
                              d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"
                            />
                          </svg>
                        </button>
                      </div>
                      <p class="text-xs+ text-slate-400 dark:text-navy-300">
                        Amet consectetur adip.
                      </p>
                    </div>
                  </div>
                  <p class="font-inter font-semibold">$18.00</p>
                </div>
              </div>
              <div class="my-4 h-px bg-slate-200 dark:bg-navy-500"></div>
              <div class="space-y-2 font-inter">
                <div
                  class="flex justify-between text-slate-600 dark:text-navy-100"
                >
                  <p>Subtotal</p>
                  <p class="font-medium tracking-wide">55.00$</p>
                </div>
                <div class="flex justify-between text-xs+">
                  <p>Tax</p>
                  <p class="font-medium tracking-wide">5.00$</p>
                </div>
                <div
                  class="flex justify-between text-base font-medium text-re dark:text-accent-light"
                >
                  <p>Total</p>
                  <p>60.00$</p>
                </div>
              </div>
              <div class="mt-5 grid grid-cols-3 gap-4 text-center">
                <button
                  class="rounded-lg border border-slate-200 p-3 dark:border-navy-500"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="inline h-9 w-9"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
                    />
                  </svg>
                  <span
                    class="mt-1 font-medium text-re dark:text-accent-light"
                  >
                    Cash
                  </span>
                </button>
                <button
                  class="rounded-lg border border-slate-200 p-3 dark:border-navy-500"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="inline h-9 w-9"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1"
                    stroke="#e21e26"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3 10h18M7 15h1m4 0h1m-7 4h12a3 3 0 003-3V8a3 3 0 00-3-3H6a3 3 0 00-3 3v8a3 3 0 003 3z"
                    />
                  </svg>
                  <span
                    class="mt-1 font-medium text-re dark:text-accent-light"
                  >
                    Debit
                  </span>
                </button>
                <button
                  class="rounded-lg border border-slate-200 p-3 dark:border-navy-500"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="inline h-9 w-9"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1"
                    stroke="#e21e26"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M12 4v1m6 11h2m-6 0h-2v4m0-11v3m0 0h.01M12 12h4.01M16 20h4M4 12h4m12 0h.01M5 8h2a1 1 0 001-1V5a1 1 0 00-1-1H5a1 1 0 00-1 1v2a1 1 0 001 1zm12 0h2a1 1 0 001-1V5a1 1 0 00-1-1h-2a1 1 0 00-1 1v2a1 1 0 001 1zM5 20h2a1 1 0 001-1v-2a1 1 0 00-1-1H5a1 1 0 00-1 1v2a1 1 0 001 1z"
                    />
                  </svg>
                  <span
                    class="mt-1 font-medium text-re dark:text-accent-light"
                  >
                    Scan
                  </span>
                </button>
              </div>
              <button
                class="btn mt-5 h-11 w-full justify-between bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90"
              >
                <span>Checkout</span>
                <span>$88.00</span>
              </button>
            </div>
          </div>
        </div>
      </div>

     <!--  <div
        class="fixed right-3 bottom-3 rounded-full bg-white dark:bg-navy-700"
      >
        <button
          @click="$dispatch('show-drawer', { drawerId: 'pos-card-drawer' })"
          class="btn h-14 w-14 rounded-full bg-warning p-0 font-medium text-white hover:bg-warning-focus focus:bg-warning-focus active:bg-warning-focus/90 sm:hidden"
        >
          $60
        </button>
      </div> -->
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

            var clock =  '<i class="fa fa-calendar" aria-hidden="true" style="color:#e21e26;"></i>  &nbsp;<span class="text-base font-medium text-slate-700 dark:text-navy-100">'+date+ '</span> &nbsp;  &nbsp; <i class="fa-solid fa-clock" style="color:#e21e26;"></i> &nbsp;<span class="text-base font-medium text-slate-700 dark:text-navy-100">' +time+'</span>';
            $('#clock').html(clock);
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
          const apiUrl = 'http://api.openweathermap.org/data/2.5/weather?q='+cityNplace+'&appid=d0f0b62e939d9341794ce5b3bb3d09cb&units=metric';

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
                  weatherIconElement.attr('src', 'http://openweathermap.org/img/w/'+weatherIcon+'.png');
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
