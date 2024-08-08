<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <!-- Meta tags  -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />

    <title>Re Sustainability | Welcome</title>
    <link rel="icon" type="image/png" href="/index/resources/images/favicon.png" />
    <script src="/index/resources/js/jQuery-v.3.5.min.js"></script>
    <script src="https://accounts.google.com/gsi/client" onload="initClient()" async defer></script>
    <!-- CSS Assets -->
    <link rel="stylesheet" href="/index/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/index/resources/js/app.js" defer></script>

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
    <style>
.flex-container{
  justify-content: space-around;
}
.flex-container a {
  flex-basis: calc(33.33% - 10px); /* Adjust as needed */
  margin: 5px;
  
}
/* Styles for mobile screens */
@media (max-width: 767px) {
  .reimagining {
     
    display: flex;
    align-items: center;

  }
  .reimaginingIMG {
   margin-left: 20% !important;
  }
  .cardsWH{
   height: 108% !important;
    width: 65% !important;
} 
}
.cardsWH{
    height: 78%;
    width: 34%;
}
.h-o{
    height: 3.75rem !important;;
}
    </style>
  </head>

  <body
    x-data
    x-bind="$store.global.documentBody"
    class="is-sidebar-open is-header-blur navigation:sideblock"
  >
    <!-- App preloader-->
    <div
      class="app-preloader fixed z-50 grid h-full w-full place-content-center  dark:bg-navy-900"
    >
      <div class="app-preloader-inner relative inline-block h-48 w-48"></div>
    </div>

    <!-- Page Wrapper -->
    <div
      id="root"
      class="min-h-100vh flex grow  dark:bg-navy-900"
      x-cloak
    >
      <!-- App Header Wrapper-->
      <nav class="header print:hidden">
        <!-- App Header  -->
        <div
          class="header-container relative flex w-full bg-white dark:bg-navy-700 print:hidden"
        >
          <!-- Header Items -->
          <div class="flex w-full items-center justify-between">
            <!-- Left: Sidebar Toggle Button -->
            <div class="h-7 w-7">
              <!-- <button
                class="menu-toggle ml-0.5 flex h-7 w-7 flex-col justify-center space-y-1.5 text-primary outline-none focus:outline-none dark:text-accent-light/80"
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
             <!--  <button
                @click="$store.global.isSearchbarActive = !$store.global.isSearchbarActive"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 sm:hidden"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5.5 w-5.5 text-slate-500 dark:text-navy-100"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                  />
                </svg>
              </button> -->

              <!-- Main Searchbar -->
              <template x-if="$store.breakpoints.smAndUp">
                <div
                  class="flex"
                  x-data="usePopper({placement:'bottom-end',offset:12})"
                  @click.outside="isShowPopper && (isShowPopper = false)"
                >
                  <div class="relative mr-4 flex h-8">
                    <!-- <input
                      placeholder="Search here..."
                      class="form-input peer h-full rounded-full bg-slate-150 px-4 pl-9 text-xs+ text-slate-800 ring-primary/50 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:text-navy-100 dark:placeholder-navy-300 dark:ring-accent/50 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                      :class="isShowPopper ? 'w-80' : 'w-60'"
                      @focus="isShowPopper= true"
                      type="text"
                      x-ref="popperRef"
                    /> -->
                    <!-- <div
                      class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5 transition-colors duration-200"
                        fill="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          d="M3.316 13.781l.73-.171-.73.171zm0-5.457l.73.171-.73-.171zm15.473 0l.73-.171-.73.171zm0 5.457l.73.171-.73-.171zm-5.008 5.008l-.171-.73.171.73zm-5.457 0l-.171.73.171-.73zm0-15.473l-.171-.73.171.73zm5.457 0l.171-.73-.171.73zM20.47 21.53a.75.75 0 101.06-1.06l-1.06 1.06zM4.046 13.61a11.198 11.198 0 010-5.115l-1.46-.342a12.698 12.698 0 000 5.8l1.46-.343zm14.013-5.115a11.196 11.196 0 010 5.115l1.46.342a12.698 12.698 0 000-5.8l-1.46.343zm-4.45 9.564a11.196 11.196 0 01-5.114 0l-.342 1.46c1.907.448 3.892.448 5.8 0l-.343-1.46zM8.496 4.046a11.198 11.198 0 015.115 0l.342-1.46a12.698 12.698 0 00-5.8 0l.343 1.46zm0 14.013a5.97 5.97 0 01-4.45-4.45l-1.46.343a7.47 7.47 0 005.568 5.568l.342-1.46zm5.457 1.46a7.47 7.47 0 005.568-5.567l-1.46-.342a5.97 5.97 0 01-4.45 4.45l.342 1.46zM13.61 4.046a5.97 5.97 0 014.45 4.45l1.46-.343a7.47 7.47 0 00-5.568-5.567l-.342 1.46zm-5.457-1.46a7.47 7.47 0 00-5.567 5.567l1.46.342a5.97 5.97 0 014.45-4.45l-.343-1.46zm8.652 15.28l3.665 3.664 1.06-1.06-3.665-3.665-1.06 1.06z"
                        />
                      </svg>
                    </div> -->
                  </div>
                  <div
                    :class="isShowPopper && 'show'"
                    class="popper-root"
                    x-ref="popperRoot"
                  >
                    <div
                      class="popper-box flex max-h-[calc(100vh-6rem)] w-80 flex-col rounded-lg border border-slate-150 bg-white shadow-soft dark:border-navy-800 dark:bg-navy-700 dark:shadow-soft-dark"
                    >
                      <div
                        x-data="{activeTab:'tabAll'}"
                        class="is-scrollbar-hidden flex shrink-0 overflow-x-auto rounded-t-lg bg-slate-100 px-2 text-slate-600 dark:bg-navy-800 dark:text-navy-200"
                      >
                        <button
                          @click="activeTab = 'tabAll'"
                          :class="activeTab === 'tabAll' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          All
                        </button>
                        <button
                          @click="activeTab = 'tabFiles'"
                          :class="activeTab === 'tabFiles' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          Files
                        </button>
                        <button
                          @click="activeTab = 'tabChats'"
                          :class="activeTab === 'tabChats' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          Chats
                        </button>
                        <button
                          @click="activeTab = 'tabEmails'"
                          :class="activeTab === 'tabEmails' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          Emails
                        </button>
                        <button
                          @click="activeTab = 'tabProjects'"
                          :class="activeTab === 'tabProjects' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          Projects
                        </button>
                        <button
                          @click="activeTab = 'tabTasks'"
                          :class="activeTab === 'tabTasks' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
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
                              <div
                                class="is-initial rounded-full bg-success text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                          <a
                            href="dashboards-crm-analytics.html"
                            class="w-14 text-center"
                          >
                            <div class="avatar h-12 w-12">
                              <div
                                class="is-initial rounded-full bg-secondary text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                              <div
                                class="is-initial rounded-full bg-info text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                          <a
                            href="apps-filemanager.html"
                            class="w-14 text-center"
                          >
                            <div class="avatar h-12 w-12">
                              <div
                                class="is-initial rounded-full bg-error text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                          <a
                            href="dashboards-crypto-1.html"
                            class="w-14 text-center"
                          >
                            <div class="avatar h-12 w-12">
                              <div
                                class="is-initial rounded-full bg-secondary text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                          <a
                            href="dashboards-banking-1.html"
                            class="w-14 text-center"
                          >
                            <div class="avatar h-12 w-12">
                              <div
                                class="is-initial rounded-full bg-primary text-white dark:bg-accent"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                              <div
                                class="is-initial rounded-full bg-info text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                          <a
                            href="dashboards-crm-analytics.html"
                            class="w-14 text-center"
                          >
                            <div class="avatar h-12 w-12">
                              <div
                                class="is-initial rounded-full bg-secondary text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                          <a
                            href="dashboards-orders.html"
                            class="w-14 text-center"
                          >
                            <div class="avatar h-12 w-12">
                              <div
                                class="is-initial rounded-full bg-warning text-white"
                              >
                                <svg
                                  xmlns="http://www.w3.org/2000/svg"
                                  class="h-5 w-5"
                                  fill="none"
                                  viewBox="0 0 24 24"
                                  stroke="currentColor"
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
                            class="text-tiny+ font-medium uppercase text-primary outline-none transition-colors duration-300 hover:text-primary/70 focus:text-primary/70 dark:text-accent-light dark:hover:text-accent-light/70 dark:focus:text-accent-light/70"
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
                              stroke="currentColor"
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
                              stroke="currentColor"
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
                            href="apps-mail.html"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
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
                              stroke="currentColor"
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
                              stroke="currentColor"
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
                              stroke="currentColor"
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
                              stroke="currentColor"
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
                              stroke="currentColor"
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
                              stroke="currentColor"
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
                  </div>
                </div>
              </template>
 <!--              <button
                @click="$store.global.isDarkModeEnabled = !$store.global.isDarkModeEnabled"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <svg
                  x-show="$store.global.isDarkModeEnabled"
                  x-transition:enter="transition-transform duration-200 ease-out absolute origin-top"
                  x-transition:enter-start="scale-75"
                  x-transition:enter-end="scale-100 static"
                  class="h-6 w-6 text-amber-400"
                  fill="currentColor"
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
                  fill="currentColor"
                >
                  <path
                    fill-rule="evenodd"
                    d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
                    clip-rule="evenodd"
                  />
                </svg>
              </button> -->
              <!-- Dark Mode Toggle -->
              ${ sessionScope.USER_NAME}

              <!-- Monochrome Mode Toggle -->
              <!-- <button
                @click="$store.global.isMonochromeModeEnabled = !$store.global.isMonochromeModeEnabled"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <i
                  class="fa-solid fa-palette bg-gradient-to-r from-sky-400 to-blue-600 bg-clip-text text-lg font-semibold text-transparent"
                ></i>
              </button> -->

              <!-- Notification-->
              <div
                x-effect="if($store.global.isSearchbarActive) isShowPopper = false"
                x-data="usePopper({placement:'bottom-end',offset:12})"
                @click.outside="isShowPopper && (isShowPopper = false)"
                class="flex"
              >
                <!-- <button
                  @click="isShowPopper = !isShowPopper"
                  x-ref="popperRef"
                  class="btn relative h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-slate-500 dark:text-navy-100"
                    stroke="currentColor"
                    fill="none"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="1.5"
                      d="M15.375 17.556h-6.75m6.75 0H21l-1.58-1.562a2.254 2.254 0 01-.67-1.596v-3.51a6.612 6.612 0 00-1.238-3.85 6.744 6.744 0 00-3.262-2.437v-.379c0-.59-.237-1.154-.659-1.571A2.265 2.265 0 0012 2c-.597 0-1.169.234-1.591.65a2.208 2.208 0 00-.659 1.572v.38c-2.621.915-4.5 3.385-4.5 6.287v3.51c0 .598-.24 1.172-.67 1.595L3 17.556h12.375zm0 0v1.11c0 .885-.356 1.733-.989 2.358A3.397 3.397 0 0112 22a3.397 3.397 0 01-2.386-.976 3.313 3.313 0 01-.989-2.357v-1.111h6.75z"
                    />
                  </svg>

                  <span
                    class="absolute -top-px -right-px flex h-3 w-3 items-center justify-center"
                  >
                    <span
                      class="absolute inline-flex h-full w-full animate-ping rounded-full bg-secondary opacity-80"
                    ></span>
                    <span
                      class="inline-flex h-2 w-2 rounded-full bg-secondary"
                    ></span>
                  </span>
                </button> -->
                <div
                  :class="isShowPopper && 'show'"
                  class="popper-root"
                  x-ref="popperRoot"
                >
                  <div
                    x-data="{activeTab:'tabAll'}"
                    class="popper-box mx-4 mt-1 flex max-h-[calc(100vh-6rem)] w-[calc(100vw-2rem)] flex-col rounded-lg border border-slate-150 bg-white shadow-soft dark:border-navy-800 dark:bg-navy-700 dark:shadow-soft-dark sm:m-0 sm:w-80"
                  >
                    <div
                      class="rounded-t-lg bg-slate-100 text-slate-600 dark:bg-navy-800 dark:text-navy-200"
                    >
                      <div class="flex items-center justify-between px-4 pt-2">
                        <div class="flex items-center space-x-2">
                          <h3
                            class="font-medium text-slate-700 dark:text-navy-100"
                          >
                            Notifications
                          </h3>
                          <div
                            class="badge h-5 rounded-full bg-primary/10 px-1.5 text-primary dark:bg-accent-light/15 dark:text-accent-light"
                          >
                            26
                          </div>
                        </div>

                        <button
                          class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="currentColor"
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
                        </button>
                      </div>

                      <div
                        class="is-scrollbar-hidden flex shrink-0 overflow-x-auto px-3"
                      >
                        <button
                          @click="activeTab = 'tabAll'"
                          :class="activeTab === 'tabAll' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          <span>All</span>
                        </button>
                        <button
                          @click="activeTab = 'tabAlerts'"
                          :class="activeTab === 'tabAlerts' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          <span>Alerts</span>
                        </button>
                        <button
                          @click="activeTab = 'tabEvents'"
                          :class="activeTab === 'tabEvents' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          <span>Events</span>
                        </button>
                        <button
                          @click="activeTab = 'tabLogs'"
                          :class="activeTab === 'tabLogs' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                          class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
                        >
                          <span>Logs</span>
                        </button>
                      </div>
                    </div>

                    <div class="tab-content flex flex-col overflow-hidden">
                      <div
                        x-show="activeTab === 'tabAll'"
                        x-transition:enter="transition-all duration-300 easy-in-out"
                        x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
                        x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
                        class="is-scrollbar-hidden space-y-4 overflow-y-auto px-4 py-4"
                      >
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary/10 dark:bg-secondary-light/15"
                          >
                            <i
                              class="fa fa-user-edit text-secondary dark:text-secondary-light"
                            ></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              User Photo Changed
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              John Doe changed his avatar photo
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-info/10 dark:bg-info/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-info"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Mon, June 14, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">08:00 - 09:00</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>

                              <span class="line-clamp-1">Frontend Conf</span>
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-primary/10 dark:bg-accent-light/15"
                          >
                            <i
                              class="fa-solid fa-image text-primary dark:text-accent-light"
                            ></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Images Added
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              Mores Clarke added new image gallery
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-success/10 dark:bg-success/15"
                          >
                            <i class="fa fa-leaf text-success"></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Design Completed
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              Robert Nolan completed the design of the CRM
                              application
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-info/10 dark:bg-info/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-info"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Wed, June 21, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">16:00 - 20:00</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>

                              <span class="line-clamp-1">UI/UX Conf</span>
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-warning/10 dark:bg-warning/15"
                          >
                            <i class="fa fa-project-diagram text-warning"></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              ER Diagram
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              Team completed the ER diagram app
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-warning/10 dark:bg-warning/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-warning"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              THU, May 11, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">10:00 - 11:30</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>
                              <span class="line-clamp-1"
                                >Interview, Konnor Guzman
                              </span>
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-error/10 dark:bg-error/15"
                          >
                            <i class="fa fa-history text-error"></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Weekly Report
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              The weekly report was uploaded
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        x-show="activeTab === 'tabAlerts'"
                        x-transition:enter="transition-all duration-300 easy-in-out"
                        x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
                        x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
                        class="is-scrollbar-hidden space-y-4 overflow-y-auto px-4 py-4"
                      >
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary/10 dark:bg-secondary-light/15"
                          >
                            <i
                              class="fa fa-user-edit text-secondary dark:text-secondary-light"
                            ></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              User Photo Changed
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              John Doe changed his avatar photo
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-primary/10 dark:bg-accent-light/15"
                          >
                            <i
                              class="fa-solid fa-image text-primary dark:text-accent-light"
                            ></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Images Added
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              Mores Clarke added new image gallery
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-success/10 dark:bg-success/15"
                          >
                            <i class="fa fa-leaf text-success"></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Design Completed
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              Robert Nolan completed the design of the CRM
                              application
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-warning/10 dark:bg-warning/15"
                          >
                            <i class="fa fa-project-diagram text-warning"></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              ER Diagram
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              Team completed the ER diagram app
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-error/10 dark:bg-error/15"
                          >
                            <i class="fa fa-history text-error"></i>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Weekly Report
                            </p>
                            <div
                              class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              The weekly report was uploaded
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        x-show="activeTab === 'tabEvents'"
                        x-transition:enter="transition-all duration-300 easy-in-out"
                        x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
                        x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
                        class="is-scrollbar-hidden space-y-4 overflow-y-auto px-4 py-4"
                      >
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-info/10 dark:bg-info/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-info"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Mon, June 14, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">08:00 - 09:00</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>

                              <span class="line-clamp-1">Frontend Conf</span>
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-info/10 dark:bg-info/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-info"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Wed, June 21, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">16:00 - 20:00</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>

                              <span class="line-clamp-1">UI/UX Conf</span>
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-warning/10 dark:bg-warning/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-warning"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              THU, May 11, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">10:00 - 11:30</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>
                              <span class="line-clamp-1"
                                >Interview, Konnor Guzman
                              </span>
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-info/10 dark:bg-info/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-info"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Mon, Jul 16, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">06:00 - 16:00</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>

                              <span class="line-clamp-1">Laravel Conf</span>
                            </div>
                          </div>
                        </div>
                        <div class="flex items-center space-x-3">
                          <div
                            class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-warning/10 dark:bg-warning/15"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-5 w-5 text-warning"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="1.5"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"
                              />
                            </svg>
                          </div>
                          <div>
                            <p
                              class="font-medium text-slate-600 dark:text-navy-100"
                            >
                              Wed, Jun 16, 2021
                            </p>
                            <div
                              class="mt-1 flex text-xs text-slate-400 dark:text-navy-300"
                            >
                              <span class="shrink-0">15:30 - 11:30</span>
                              <div
                                class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"
                              ></div>
                              <span class="line-clamp-1"
                                >Interview, Jonh Doe
                              </span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        x-show="activeTab === 'tabLogs'"
                        x-transition:enter="transition-all duration-300 easy-in-out"
                        x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
                        x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
                        class="is-scrollbar-hidden overflow-y-auto px-4"
                      >
                        <div class="mt-8 pb-8 text-center">
                          <img
                            class="mx-auto w-36"
                            src="/index/resources/images/illustrations/empty-girl-box.svg"
                            alt="image"
                          />
                          <div class="mt-5">
                            <p
                              class="text-base font-semibold text-slate-700 dark:text-navy-100"
                            >
                              No any logs
                            </p>
                            <p class="text-slate-400 dark:text-navy-300">
                              There are no unread logs yet
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Right Sidebar Toggle -->
              <div x-data="usePopper({placement:'right-end',offset:12})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="flex">
                <button @click="isShowPopper = !isShowPopper" x-ref="popperRef" class="avatar h-12 w-12">
                  <img class="rounded-full" src="${sessionScope.USER_IMAGE }" alt="avatar">
                  <span class="absolute right-0 h-3.5 w-3.5 rounded-full border-2 border-white bg-success dark:border-navy-700"></span>
                </button>

                <div :class="isShowPopper &amp;&amp; 'show'" class="popper-root fixed" x-ref="popperRoot" style="position: fixed; inset: auto auto 0px 0px; margin: 0px; transform: translate(76px, 46px);" data-popper-placement="right-end">
                  <div class="popper-box w-64 rounded-lg border border-slate-150 bg-white shadow-soft dark:border-navy-600 dark:bg-navy-700">
                    <div class="flex items-center space-x-4 rounded-t-lg bg-slate-100 py-5 px-4 dark:bg-navy-800">
                      <div class="avatar h-14 w-14">
                        <img class="rounded-full" src="${sessionScope.USER_IMAGE }" alt="avatar">
                      </div>
                      <div>
                        <a href="#" class="text-base font-medium text-slate-700 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">
                           ${ sessionScope.USER_NAME}
                        </a>
                        <p class="text-xs text-slate-400 dark:text-navy-300">
                           ${ sessionScope.BASE_ROLE}
                        </p>
                      </div>
                    </div>
                    <div class="flex flex-col pt-2 pb-5">
                
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
              stroke="currentColor"
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
            :class="activeTab === 'tabAll' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            All
          </button>
          <button
            @click="activeTab = 'tabFiles'"
            :class="activeTab === 'tabFiles' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Files
          </button>
          <button
            @click="activeTab = 'tabChats'"
            :class="activeTab === 'tabChats' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Chats
          </button>
          <button
            @click="activeTab = 'tabEmails'"
            :class="activeTab === 'tabEmails' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Emails
          </button>
          <button
            @click="activeTab = 'tabProjects'"
            :class="activeTab === 'tabProjects' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Projects
          </button>
          <button
            @click="activeTab = 'tabTasks'"
            :class="activeTab === 'tabTasks' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
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
                    stroke="currentColor"
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
                    stroke="currentColor"
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
                    stroke="currentColor"
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
                    stroke="currentColor"
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
                    stroke="currentColor"
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
                    stroke="currentColor"
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
                    stroke="currentColor"
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
                    stroke="currentColor"
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
              class="text-tiny+ font-medium uppercase text-primary outline-none transition-colors duration-300 hover:text-primary/70 focus:text-primary/70 dark:text-accent-light dark:hover:text-accent-light/70 dark:focus:text-accent-light/70"
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
                stroke="currentColor"
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
                stroke="currentColor"
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
              href="apps-mail.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
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
                stroke="currentColor"
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
                stroke="currentColor"
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
                stroke="currentColor"
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
                stroke="currentColor"
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
                stroke="currentColor"
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
                stroke="currentColor"
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
                  stroke="currentColor"
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
                  stroke="currentColor"
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
                  stroke="currentColor"
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
                  stroke="currentColor"
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
              x-show="activeTab === 'tabHome'"
              x-transition:enter="transition-all duration-500 easy-in-out"
              x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]"
              x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
              class="is-scrollbar-hidden overflow-y-auto overscroll-contain pt-1"
            >
              <label class="relative flex px-3">
                <input
                  class="form-input peer h-8 w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 text-xs+ ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                  placeholder="Search here..."
                  type="text"
                />
                <span
                  class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4.5 w-4.5 transition-colors duration-200"
                    fill="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      d="M3.316 13.781l.73-.171-.73.171zm0-5.457l.73.171-.73-.171zm15.473 0l.73-.171-.73.171zm0 5.457l.73.171-.73-.171zm-5.008 5.008l-.171-.73.171.73zm-5.457 0l-.171.73.171-.73zm0-15.473l-.171-.73.171.73zm5.457 0l.171-.73-.171.73zM20.47 21.53a.75.75 0 101.06-1.06l-1.06 1.06zM4.046 13.61a11.198 11.198 0 010-5.115l-1.46-.342a12.698 12.698 0 000 5.8l1.46-.343zm14.013-5.115a11.196 11.196 0 010 5.115l1.46.342a12.698 12.698 0 000-5.8l-1.46.343zm-4.45 9.564a11.196 11.196 0 01-5.114 0l-.342 1.46c1.907.448 3.892.448 5.8 0l-.343-1.46zM8.496 4.046a11.198 11.198 0 015.115 0l.342-1.46a12.698 12.698 0 00-5.8 0l.343 1.46zm0 14.013a5.97 5.97 0 01-4.45-4.45l-1.46.343a7.47 7.47 0 005.568 5.568l.342-1.46zm5.457 1.46a7.47 7.47 0 005.568-5.567l-1.46-.342a5.97 5.97 0 01-4.45 4.45l.342 1.46zM13.61 4.046a5.97 5.97 0 014.45 4.45l1.46-.343a7.47 7.47 0 00-5.568-5.567l-.342 1.46zm-5.457-1.46a7.47 7.47 0 00-5.567 5.567l1.46.342a5.97 5.97 0 014.45-4.45l-.343-1.46zm8.652 15.28l3.665 3.664 1.06-1.06-3.665-3.665-1.06 1.06z"
                    />
                  </svg>
                </span>
              </label>
              <div class="mt-3">
                <h2
                  class="px-3 text-xs+ font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100"
                >
                  Banking cards
                </h2>
                <div
                  class="swiper mt-3 px-3"
                  x-init="$nextTick(()=>new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 16}))"
                >
                  <div class="swiper-wrapper">
                    <div
                      class="swiper-slide relative flex h-28 w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-purple-500 to-indigo-600 p-3"
                    >
                      <div class="grow">
                        <img
                          class="h-3"
                          src="/index/resources/images/payments/cc-visa-white.svg"
                          alt="image"
                        />
                      </div>
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide">
                          $2,139.22
                        </p>
                        <p class="mt-1 text-xs font-medium">
                          **** **** **** 8945
                        </p>
                      </div>
                      <div
                        class="mask is-reuleaux-triangle absolute top-0 right-0 -m-3 h-16 w-16 bg-white/20"
                      ></div>
                    </div>
                    <div
                      class="swiper-slide relative flex h-28 w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-pink-500 to-rose-500 p-3"
                    >
                      <div class="grow">
                        <img
                          class="h-3"
                          src="/index/resources/images/payments/cc-visa-white.svg"
                          alt="image"
                        />
                      </div>
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide">
                          $2,139.22
                        </p>
                        <p class="mt-1 text-xs font-medium">
                          **** **** **** 8945
                        </p>
                      </div>
                      <div
                        class="mask is-diamond absolute bottom-0 right-0 -m-3 h-16 w-16 bg-white/20"
                      ></div>
                    </div>
                    <div
                      class="swiper-slide relative flex h-28 w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-info to-info-focus p-3"
                    >
                      <div class="grow">
                        <img
                          class="h-3"
                          src="/index/resources/images/payments/cc-visa-white.svg"
                          alt="image"
                        />
                      </div>
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide">
                          $2,139.22
                        </p>
                        <p class="mt-1 text-xs font-medium">
                          **** **** **** 8945
                        </p>
                      </div>
                      <div
                        class="mask is-hexagon-2 absolute top-0 right-0 -m-3 h-16 w-16 bg-white/20"
                      ></div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="mt-4 px-3">
                <h2
                  class="text-xs+ font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100"
                >
                  Pinned Apps
                </h2>
                <div class="mt-3 flex space-x-3">
                  <a href="apps-kanban.html" class="w-12 text-center">
                    <div class="avatar h-10 w-10">
                      <div
                        class="is-initial mask is-squircle bg-success text-white"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-5 w-5"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
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
                  <a
                    href="dashboards-crm-analytics.html"
                    class="w-12 text-center"
                  >
                    <div class="avatar h-10 w-10">
                      <div
                        class="is-initial mask is-squircle bg-warning text-white"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-5 w-5"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
                          stroke-width="2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
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
                  <a href="apps-chat.html" class="w-12 text-center">
                    <div class="avatar h-10 w-10">
                      <div
                        class="is-initial mask is-squircle bg-info text-white"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-5 w-5"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
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
                  <a href="apps-filemanager.html" class="w-12 text-center">
                    <div class="avatar h-10 w-10">
                      <div
                        class="is-initial mask is-squircle bg-error text-white"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-5 w-5"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
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
                  <a href="dashboards-banking-1.html" class="w-12 text-center">
                    <div class="avatar h-10 w-10">
                      <div
                        class="is-initial mask is-squircle bg-secondary text-white"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-5 w-5"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
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
                </div>
              </div>

              <div class="mt-4">
                <div class="grid grid-cols-2 gap-3 px-3">
                  <div
                    class="rounded-lg bg-slate-150 px-2.5 py-2 dark:bg-navy-600"
                  >
                    <div class="flex items-center justify-between space-x-1">
                      <p>
                        <span
                          class="text-lg font-medium text-slate-700 dark:text-navy-100"
                          >11.3</span
                        >
                        <span class="text-xs">hr</span>
                      </p>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5 text-secondary dark:text-secondary-light"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"
                          clip-rule="evenodd"
                        />
                      </svg>
                    </div>

                    <p class="mt-0.5 text-tiny+ uppercase">Working Hours</p>

                    <div
                      class="progress mt-3 h-1.5 bg-secondary/15 dark:bg-secondary-light/25"
                    >
                      <div
                        class="is-active relative w-8/12 overflow-hidden rounded-full bg-secondary dark:bg-secondary-light"
                      ></div>
                    </div>

                    <div
                      class="mt-1.5 flex items-center justify-between text-xs text-slate-400 dark:text-navy-300"
                    >
                      <button
                        class="btn -ml-1 h-6 w-6 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-4 w-4"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
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
                      </button>
                      <span> 71%</span>
                    </div>
                  </div>
                  <div
                    class="rounded-lg bg-slate-150 px-2.5 py-2 dark:bg-navy-600"
                  >
                    <div class="flex items-center justify-between space-x-1">
                      <p>
                        <span
                          class="text-lg font-medium text-slate-700 dark:text-navy-100"
                          >13</span
                        >
                        <span class="text-xs">/22</span>
                      </p>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-4.5 w-4.5 text-success"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M6.267 3.455a3.066 3.066 0 001.745-.723 3.066 3.066 0 013.976 0 3.066 3.066 0 001.745.723 3.066 3.066 0 012.812 2.812c.051.643.304 1.254.723 1.745a3.066 3.066 0 010 3.976 3.066 3.066 0 00-.723 1.745 3.066 3.066 0 01-2.812 2.812 3.066 3.066 0 00-1.745.723 3.066 3.066 0 01-3.976 0 3.066 3.066 0 00-1.745-.723 3.066 3.066 0 01-2.812-2.812 3.066 3.066 0 00-.723-1.745 3.066 3.066 0 010-3.976 3.066 3.066 0 00.723-1.745 3.066 3.066 0 012.812-2.812zm7.44 5.252a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                          clip-rule="evenodd"
                        />
                      </svg>
                    </div>

                    <p class="mt-0.5 text-tiny+ uppercase">Completed tasks</p>

                    <div
                      class="progress mt-3 h-1.5 bg-success/15 dark:bg-success/25"
                    >
                      <div
                        class="relative w-6/12 overflow-hidden rounded-full bg-success"
                      ></div>
                    </div>

                    <div
                      class="mt-1.5 flex items-center justify-between text-xs text-slate-400 dark:text-navy-300"
                    >
                      <button
                        class="btn -ml-1 h-6 w-6 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-4 w-4"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
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
                      </button>
                      <span> 49%</span>
                    </div>
                  </div>
                </div>
              </div>

              <div class="mt-4">
                <h2
                  class="px-3 text-xs+ font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100"
                >
                  Stock Market
                </h2>
                <div class="mt-3 grid grid-cols-2 gap-3 px-3">
                  <div class="rounded-lg bg-slate-100 p-2.5 dark:bg-navy-600">
                    <div class="flex items-center space-x-2">
                      <img
                        class="h-10 w-10"
                        src="/index/resources/images/logos/bitcoin.svg"
                        alt="image"
                      />
                      <div>
                        <h2
                          class="font-medium tracking-wide text-slate-700 dark:text-navy-100"
                        >
                          BTC
                        </h2>
                        <p class="text-xs">Bitcoin</p>
                      </div>
                    </div>

                    <div class="ax-transparent-gridline">
                      <div
                        x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.stockMarket1); $el._x_chart.render() });"
                      ></div>
                    </div>

                    <div class="mt-2 flex items-center justify-between">
                      <p
                        class="font-medium tracking-wide text-slate-700 dark:text-navy-100"
                      >
                        60.33$
                      </p>
                      <p class="text-xs font-medium tracking-wide text-success">
                        +3.3%
                      </p>
                    </div>
                  </div>

                  <div class="rounded-lg bg-slate-100 p-2.5 dark:bg-navy-600">
                    <div class="flex items-center space-x-2">
                      <img
                        class="h-10 w-10"
                        src="/index/resources/images/logos/solana.svg"
                        alt="image"
                      />
                      <div>
                        <h2
                          class="font-medium tracking-wide text-slate-700 dark:text-navy-100"
                        >
                          SOL
                        </h2>
                        <p class="text-xs">Solana</p>
                      </div>
                    </div>

                    <div class="ax-transparent-gridline">
                      <div
                        x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.stockMarket2); $el._x_chart.render() });"
                      ></div>
                    </div>

                    <div class="mt-2 flex items-center justify-between">
                      <p
                        class="font-medium tracking-wide text-slate-700 dark:text-navy-100"
                      >
                        20.56$
                      </p>
                      <p class="text-xs font-medium tracking-wide text-success">
                        +4.11%
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div class="mt-4">
                <h2
                  class="px-3 text-xs+ font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100"
                >
                  Latest News
                </h2>
                <div class="mt-3 space-y-3 px-2">
                  <div
                    class="flex justify-between space-x-2 rounded-lg bg-slate-100 p-2.5 dark:bg-navy-700"
                  >
                    <div class="flex flex-1 flex-col justify-between">
                      <div class="line-clamp-2">
                        <a
                          href="#"
                          class="font-medium text-slate-700 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light"
                          >What is Tailwind CSS?</a
                        >
                      </div>
                      <div class="flex items-center justify-between">
                        <div class="flex items-center space-x-2">
                          <div class="avatar h-7 w-7">
                            <img
                              class="rounded-full"
                              src="/index/resources/images/avatar/avatar-20.jpg"
                              alt="avatar"
                            />
                          </div>
                          <div>
                            <p class="text-xs font-medium line-clamp-1">
                              John D.
                            </p>
                            <p
                              class="text-tiny+ text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              2 min read
                            </p>
                          </div>
                        </div>
                        <div class="flex">
                          <button
                            class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-4 w-4"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="2"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5"
                              />
                            </svg>
                          </button>
                          <button
                            class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-4 w-4"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="2"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z"
                              />
                            </svg>
                          </button>
                        </div>
                      </div>
                    </div>
                    <img
                      src="/index/resources/images/object/object-18.jpg"
                      class="h-20 w-20 rounded-lg object-cover object-center"
                      alt="image"
                    />
                  </div>

                  <div
                    class="flex justify-between space-x-2 rounded-lg bg-slate-100 p-2.5 dark:bg-navy-700"
                  >
                    <div class="flex flex-1 flex-col justify-between">
                      <div class="line-clamp-2">
                        <a
                          href="#"
                          class="font-medium text-slate-700 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light"
                          >Tailwind CSS Card Example</a
                        >
                      </div>
                      <div class="flex items-center justify-between">
                        <div class="flex items-center space-x-2">
                          <div class="avatar h-7 w-7">
                            <img
                              class="rounded-full"
                              src="/index/resources/images/avatar/avatar-19.jpg"
                              alt="avatar"
                            />
                          </div>
                          <div>
                            <p class="text-xs font-medium line-clamp-1">
                              Travis F.
                            </p>
                            <p
                              class="text-tiny+ text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              5 min read
                            </p>
                          </div>
                        </div>
                        <div class="flex">
                          <button
                            class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-4 w-4"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="2"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5"
                              />
                            </svg>
                          </button>
                          <button
                            class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-4 w-4"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="2"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z"
                              />
                            </svg>
                          </button>
                        </div>
                      </div>
                    </div>
                    <img
                      src="/index/resources/images/object/object-2.jpg"
                      class="h-20 w-20 rounded-lg object-cover object-center"
                      alt="image"
                    />
                  </div>

                  <div
                    class="flex justify-between space-x-2 rounded-lg bg-slate-100 p-2.5 dark:bg-navy-700"
                  >
                    <div class="flex flex-1 flex-col justify-between">
                      <div class="line-clamp-2">
                        <a
                          href="#"
                          class="font-medium text-slate-700 hover:text-primary focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light"
                          >10 Tips for Making a Good Camera Even Better</a
                        >
                      </div>
                      <div class="flex items-center justify-between">
                        <div class="flex items-center space-x-2">
                          <div class="avatar h-7 w-7">
                            <img
                              class="rounded-full"
                              src="/index/resources/images/avatar/avatar-18.jpg"
                              alt="avatar"
                            />
                          </div>
                          <div>
                            <p class="text-xs font-medium line-clamp-1">
                              Alfredo E .
                            </p>
                            <p
                              class="text-tiny+ text-slate-400 line-clamp-1 dark:text-navy-300"
                            >
                              4 min read
                            </p>
                          </div>
                        </div>
                        <div class="flex">
                          <button
                            class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-4 w-4"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="2"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5"
                              />
                            </svg>
                          </button>
                          <button
                            class="btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                          >
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              class="h-4 w-4"
                              fill="none"
                              viewBox="0 0 24 24"
                              stroke="currentColor"
                              stroke-width="2"
                            >
                              <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z"
                              />
                            </svg>
                          </button>
                        </div>
                      </div>
                    </div>
                    <img
                      src="/index/resources/images/object/object-1.jpg"
                      class="h-20 w-20 rounded-lg object-cover object-center"
                      alt="image"
                    />
                  </div>
                </div>
              </div>

              <div class="mt-3 px-3">
                <h2
                  class="text-xs+ font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100"
                >
                  Settings
                </h2>
                <div class="mt-2 flex flex-col space-y-2">
                  <label class="inline-flex items-center space-x-2">
                    <input
                      x-model="$store.global.isDarkModeEnabled"
                      class="form-switch h-5 w-10 rounded-lg bg-slate-300 before:rounded-md before: checked:bg-slate-500 checked:before:bg-white dark:bg-navy-900 dark:before:bg-navy-300 dark:checked:bg-navy-400 dark:checked:before:bg-white"
                      type="checkbox"
                    />
                    <span>Dark Mode</span>
                  </label>
                  <label class="inline-flex items-center space-x-2">
                    <input
                      x-model="$store.global.isMonochromeModeEnabled"
                      class="form-switch h-5 w-10 rounded-lg bg-slate-300 before:rounded-md before: checked:bg-slate-500 checked:before:bg-white dark:bg-navy-900 dark:before:bg-navy-300 dark:checked:bg-navy-400 dark:checked:before:bg-white"
                      type="checkbox"
                    />
                    <span>Monochrome Mode</span>
                  </label>
                </div>
              </div>

              <div class="mt-3 px-3">
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex items-center justify-between">
                    <p>
                      <span
                        class="font-medium text-slate-600 dark:text-navy-100"
                        >35GB</span
                      >
                      of 1TB
                    </p>
                    <a
                      href="#"
                      class="text-xs+ font-medium text-primary outline-none transition-colors duration-300 hover:text-primary/70 focus:text-primary/70 dark:text-accent-light dark:hover:text-accent-light/70 dark:focus:text-accent-light/70"
                      >Upgrade</a
                    >
                  </div>

                  <div class="progress mt-2 h-2 bg-slate-150 dark:bg-navy-500">
                    <div class="w-7/12 rounded-full bg-info"></div>
                  </div>
                </div>
              </div>
              <div class="h-18"></div>
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
                      class="h-5 w-5 text-primary dark:text-accent"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
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
                      stroke="currentColor"
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
                    class="mt-2 text-right text-xs+ font-medium text-primary dark:text-accent-light"
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
                      stroke="currentColor"
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
                    class="mt-2 text-right text-xs+ font-medium text-primary dark:text-accent-light"
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
                      stroke="currentColor"
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
                    class="mt-2 text-right text-xs+ font-medium text-primary dark:text-accent-light"
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
                      stroke="currentColor"
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
                    class="mt-2 text-right text-xs+ font-medium text-primary dark:text-accent-light"
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
                        src="${sessionScope.USER_IMAGE }"
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
                      stroke="currentColor"
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
                  stroke="currentColor"
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
                    stroke="currentColor"
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
                    class="timeline-item-point rounded-full border border-current bg-white text-primary dark:bg-navy-700 dark:text-accent"
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
                        class="text-xs text-primary hover:text-primary-focus dark:text-accent-light dark:hover:text-accent"
                      >
                        #Tag
                      </a>

                      <a
                        href="#"
                        class="text-xs text-primary hover:text-primary-focus dark:text-accent-light dark:hover:text-accent"
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
                      class="inline-flex items-center space-x-1 pt-2 text-slate-600 transition-colors hover:text-primary dark:text-navy-100 dark:hover:text-accent"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-5 w-5"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
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
                            stroke="currentColor"
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
                  :class="activeTab === 'tabHome' && 'text-primary dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-primary focus:bg-slate-300/20 focus:text-primary active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab === 'tabHome'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="currentColor"
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
                    stroke="currentColor"
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
                  :class="activeTab === 'tabProjects' && 'text-primary dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-primary focus:bg-slate-300/20 focus:text-primary active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab === 'tabProjects'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="currentColor"
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
                    stroke="currentColor"
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
                  :class="activeTab === 'tabActivity' && 'text-primary dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-primary focus:bg-slate-300/20 focus:text-primary active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab ===  'tabActivity'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="currentColor"
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
                    stroke="currentColor"
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

      <!-- Main Content Wrapper -->
      <main class="main-content w-full p-6 pb-8" style=" background-color: white;">

        <div class="mt-4 grid grid-cols-12 gap-4 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6">
          <div class="col-span-12 space-y-4 sm:space-y-5 lg:col-span-9 lg:space-y-6">
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-3 sm:gap-5 lg:gap-6">
             <div class="grid grid-cols-1 gap-4 sm:col-span-2 sm:grid-cols-1 sm:gap-5 lg:gap-6">
                <div class=" justify-center">
                 
                  <div :class="$store.breakpoints.smAndUp &amp;&amp; 'via-purple-300'" class="card mt-12 bg-gradient-to-l from-pink-300 to-indigo-400 p-5 sm:mt-0 sm:flex-row via-purple-300">
                    <div class="flex justify-center sm:order-last">
                      <img class="-mt-16 h-40 sm:mt-0" src="/index/resources/images/illustrations/teacher.svg" alt="">
                    </div>
                    <div class="mt-2 flex-1 pt-2 text-center text-white sm:mt-0 sm:text-left">
                      <h3 class="text-xl">
                        Leadership<span class="font-semibold"></span>
                      </h3>
                      <!-- <p class="mt-2 leading-relaxed">
                        Your student completed
                        <span class="font-semibold text-navy-700">85%</span> of tasks
                      </p>
                      <p>Progress is <span class="font-semibold">excellent!</span></p> -->
      
                      <button class="btn mt-6 bg-slate-50 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80">
                        View
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div class=" bg-gradient-to-r  to-indigo-600 px-5 pb-5">
                <div class=" justify-between ">
                  <div class="card p-2.5">
                    <div class="flex justify-between space-x-2">
                      <div class="flex flex-1 flex-col justify-between">
                        <div>
                          <a href="#" class="font-medium text-slate-700 outline-none transition-colors line-clamp-2 hover:text-primary
                           focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">
                          Latest News</a>
                          <a href="#" class="text-xs text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">
                           soon .. </a>
                        </div>
                        <div class="flex items-center space-x-2 text-xs">
                          <div class="flex shrink-0 items-center space-x-1">
                            
                          </div>
                          <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                        </div>
                      </div>
                    </div>
                  </div> 
                  <div class="card p-2.5 mt-3">
                    <div class="flex justify-between space-x-2">
                      <div class="flex flex-1 flex-col justify-between">
                        <div>
                          <a href="#" class="font-medium text-slate-700 outline-none transition-colors line-clamp-2 hover:text-primary 
                          focus:text-primary dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light">
                          Thought of the Day</a>
                          <a href="#" class="text-xs text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">
                            " To be extraordinary, you can't live by the rules of the ordinary" - J.M. Sampath</a>
                        </div>
                        <div class="flex items-center space-x-2 text-xs">
                          <div class="flex shrink-0 items-center space-x-1">
                           
                          </div>
                          <div class="mx-2 my-1 w-px self-stretch bg-slate-200 dark:bg-navy-500"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
          <!--   <div class="mt-4 grid grid-cols-12 gap-4  py-5 dark:bg-navy-800 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6">
            <div class="is-scrollbar-hidden col-span-12 reimagining reimaginingIMG space-x-4 overflow-x-auto p-6 transition-all duration-[.25s] lg:col-span-3 lg:pl-0">
              <div class="mt-2">
                <div class="mt-1.5 flex items-center space-x-2">
                    <img class="w-full max-w-xs" src="/index/resources/images/illustrations/awards-man.svg" alt="image" style="width: 198px;height: 163px;">                                  
                </div>
              </div>
            </div>
            <div class="is-scrollbar-hidden col-span-12 flex items-center space-x-4 overflow-x-auto p-6 transition-all duration-[.25s] lg:col-span-9 lg:pl-0">
              
               <div class="swiper-slide relative flex items-center h-38 cardsWH w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-purple-500 to-indigo-600 p-3">
                      <div class="grow">
                        <img class="h-o mt-2" src="/index/resources/images/icons/icons8-welcome-48.png" alt="image">
                      </div>
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide text-center">
                          Welcome Center
                        </p> 
                      </div>
                      <div class="mask is-reuleaux-triangle absolute top-0 right-0 -m-3 h-16 w-16 bg-white/20"></div>
                    </div>

              <div class="swiper-slide relative flex items-center h-38 cardsWH w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-pink-500 to-rose-500 p-3">
                       <div class="grow">
                        <img class="h-o mt-2" src="/index/resources/images/icons/culture.webp" alt="image">
                      </div> 
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide text-center">
                          Our Culture
                        </p>
                       </div>
                      <div class="mask is-diamond absolute bottom-0 right-0 -m-3 h-16 w-16 bg-white/20"></div>
                    </div>
                    <div class="swiper-slide relative flex items-center h-38 cardsWH w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-info to-info-focus p-3">
                       <div class="grow">
                        <img class="h-o mt-2" src="/index/resources/images/icons/Help-Desk.png" alt="image">
                      </div> 
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide text-center">
                          Help Center
                        </p>
                       </div>
                      <div class="mask is-hexagon-2 absolute top-0 right-0 -m-3 h-16 w-16 bg-white/20"></div>
                    </div>
                <div class="swiper-slide relative flex items-center h-38 cardsWH w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-purple-500 to-indigo-600 p-3">
                       <div class="grow">
                        <img class="h-o mt-2" src="/index/resources/images/icons/policy.png" alt="image">
                      </div> 
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide text-center">
                          Policy Center
                        </p>
                      </div>
                      <div class="mask is-reuleaux-triangle absolute top-0 right-0 -m-3 h-16 w-16 bg-white/20"></div>
                    </div>

              <div class="swiper-slide relative flex items-center h-38 cardsWH w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-pink-500 to-rose-500 p-3">
                       <div class="grow">
                        <img class="h-o mt-2" src="/index/resources/images/icons/violation-icon.jpg" alt="image">
                      </div> 
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide text-center">
                          Violations
                        </p>
                       </div>
                      <div class="mask is-diamond absolute bottom-0 right-0 -m-3 h-16 w-16 bg-white/20"></div>
                    </div>
                    <div class="swiper-slide relative flex items-center h-38 cardsWH w-48 flex-col overflow-hidden rounded-xl bg-gradient-to-br from-info to-info-focus p-3">
                     <div class="grow">
                        <img class="h-o mt-2" src="/index/resources/images/icons/management.png" alt="image">
                      </div> 
                      <div class="text-white">
                        <p class="text-lg font-semibold tracking-wide text-center">
                          Management Corner
                        </p>
                       </div>
                      <div class="mask is-hexagon-2 absolute top-0 right-0 -m-3 h-16 w-16 bg-white/20"></div>
                    </div>           
          </div>
          
          
        </div> -->
  
        <div class="mt-4 grid grid-cols-12 gap-4  py-5 dark:bg-navy-800 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6">
        <div class="is-scrollbar-hidden col-span-12 reimagining space-x-4 overflow-x-auto p-6 transition-all duration-[.25s] lg:col-span-3 lg:pl-0">
          <p class="mt-2 grow" style="width: 14rem;">
            Reimagining <button
            class="btn bg-error font-medium text-white hover:bg-error-focus focus:bg-error-focus active:bg-error-focus/90"
          > The Future </button> <br>with Smart Sustainability Solutions
          </p>             

          <div class="mt-2" >
            <div class="mt-1.5 flex items-center space-x-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="120" height="120" viewBox="0 0 237 186" fill="none">
                    <path d="M38.4504 158.74C37.7971 158.241 37.0723 157.843 36.3004 157.56L34.1104 156.76C33.8804 156.68 33.5904 156.58 33.2604 156.44C32.9242 156.301 32.6054 156.123 32.3104 155.91C31.9998 155.686 31.735 155.404 31.5304 155.08C31.3041 154.685 31.1932 154.235 31.2104 153.78C31.2118 153.438 31.2763 153.099 31.4004 152.78C31.5259 152.416 31.7156 152.077 31.9604 151.78C32.211 151.484 32.5166 151.239 32.8604 151.06C33.2498 150.871 33.6777 150.775 34.1104 150.78C34.4485 150.79 34.7842 150.84 35.1104 150.93C35.4752 151.029 35.8156 151.203 36.1104 151.44C36.4318 151.711 36.6852 152.053 36.8504 152.44C37.0659 152.913 37.1686 153.43 37.1504 153.95H40.3104C40.3215 153.097 40.1617 152.25 39.8404 151.46C39.5483 150.743 39.1088 150.096 38.5504 149.56C37.9949 149.019 37.33 148.603 36.6004 148.34C35.8014 148.055 34.9586 147.913 34.1104 147.92C33.1846 147.896 32.2664 148.091 31.4304 148.49C30.7165 148.844 30.0754 149.329 29.5404 149.92C29.05 150.476 28.6699 151.121 28.4204 151.82C28.1858 152.461 28.0607 153.137 28.0504 153.82C28.0518 154.577 28.1699 155.329 28.4004 156.05C28.6115 156.745 28.997 157.375 29.5204 157.88C29.7508 158.104 29.9946 158.315 30.2504 158.51C30.5124 158.721 30.7975 158.903 31.1004 159.05C31.4919 159.261 31.896 159.448 32.3104 159.61L34.1104 160.31C34.4804 160.47 34.8704 160.62 35.2804 160.78C35.679 160.933 36.0556 161.138 36.4004 161.39C36.7527 161.658 37.0427 161.999 37.2504 162.39C37.4944 162.847 37.6118 163.362 37.5904 163.88C37.6183 164.373 37.5438 164.867 37.3717 165.329C37.1996 165.792 36.9336 166.215 36.5904 166.57C36.2625 166.894 35.8734 167.149 35.4459 167.32C35.0184 167.492 34.561 167.577 34.1004 167.57C33.429 167.606 32.7636 167.427 32.2004 167.06C31.7628 166.751 31.4005 166.348 31.1404 165.88C30.9182 165.471 30.7661 165.029 30.6904 164.57C30.6359 164.266 30.6025 163.958 30.5904 163.65H27.4304C27.4011 164.718 27.6166 165.778 28.0604 166.75C28.4425 167.556 28.9833 168.277 29.6504 168.87C30.2775 169.415 31.009 169.827 31.8004 170.08C32.543 170.324 33.3188 170.452 34.1004 170.46C35.0301 170.473 35.9537 170.307 36.8204 169.97C37.6037 169.657 38.3148 169.187 38.9104 168.59C39.4884 167.992 39.9467 167.29 40.2604 166.52C40.5853 165.688 40.7483 164.803 40.7404 163.91C40.7879 162.818 40.561 161.732 40.0804 160.75C39.6897 159.969 39.1335 159.283 38.4504 158.74V158.74ZM54.6704 162.46C54.7901 163.864 54.3719 165.262 53.5004 166.37C53.1077 166.786 52.6305 167.112 52.101 167.328C51.5714 167.543 51.0017 167.643 50.4304 167.62C49.8942 167.625 49.3608 167.544 48.8504 167.38C48.3579 167.225 47.9135 166.946 47.5604 166.57C47.155 166.132 46.8602 165.604 46.7004 165.03C46.4723 164.224 46.3678 163.387 46.3904 162.55V153.78H43.3904V162.55C43.3438 163.872 43.53 165.192 43.9404 166.45C44.2638 167.352 44.8108 168.157 45.5304 168.79C46.1198 169.302 46.7975 169.701 47.5304 169.97C48.3596 170.258 49.2325 170.4 50.1104 170.39C51.0878 170.402 52.0576 170.215 52.9604 169.84C53.7587 169.531 54.4309 168.964 54.8704 168.23H54.9304V170H57.7104V153.78H54.7104L54.6704 162.46ZM69.4704 161.28C68.9791 160.902 68.4327 160.602 67.8504 160.39L66.5604 159.95C66.2304 159.85 65.9104 159.75 65.6104 159.64C65.3242 159.547 65.0518 159.415 64.8004 159.25C64.5809 159.098 64.3939 158.905 64.2504 158.68C64.1025 158.425 64.0297 158.134 64.0404 157.84C64.0345 157.607 64.0787 157.376 64.1702 157.162C64.2617 156.948 64.3982 156.756 64.5704 156.6C64.9534 156.272 65.4463 156.1 65.9504 156.12C66.4579 156.098 66.9548 156.269 67.3404 156.6C67.737 156.996 67.9782 157.521 68.0204 158.08H71.0204C71.0311 157.295 70.8418 156.521 70.4704 155.83C70.1566 155.258 69.7235 154.76 69.2004 154.37C68.7229 154.004 68.1798 153.732 67.6004 153.57C67.0958 153.426 66.5748 153.349 66.0504 153.34C65.3348 153.331 64.6246 153.464 63.9604 153.73C63.3609 153.977 62.8143 154.337 62.3504 154.79C61.9246 155.218 61.5851 155.724 61.3504 156.28C61.1191 156.824 61.0001 157.409 61.0004 158C60.9726 158.735 61.1345 159.465 61.4704 160.12C61.762 160.649 62.1524 161.118 62.6204 161.5C63.0714 161.851 63.5697 162.137 64.1004 162.35C64.6304 162.55 65.1004 162.73 65.5704 162.88C66.0404 163.03 66.3204 163.16 66.6804 163.31C67.0015 163.435 67.3042 163.604 67.5804 163.81C67.8281 163.98 68.0362 164.202 68.1904 164.46C68.3358 164.741 68.408 165.054 68.4004 165.37C68.4172 165.671 68.3678 165.972 68.2554 166.252C68.1431 166.532 67.9707 166.784 67.7504 166.99C67.2862 167.403 66.6811 167.621 66.0604 167.6C65.6882 167.627 65.3147 167.569 64.9681 167.43C64.6216 167.292 64.3112 167.076 64.0604 166.8C63.5655 166.188 63.2908 165.427 63.2804 164.64H60.2804C60.248 165.604 60.4614 166.561 60.9004 167.42C61.2614 168.112 61.7701 168.716 62.3904 169.19C62.9463 169.618 63.582 169.931 64.2604 170.11C64.834 170.269 65.4252 170.356 66.0204 170.37C66.8023 170.384 67.5797 170.249 68.3104 169.97C68.9485 169.713 69.5296 169.332 70.0204 168.85C70.4901 168.386 70.855 167.827 71.0904 167.21C71.3407 166.573 71.4663 165.894 71.4604 165.21C71.4894 164.377 71.285 163.553 70.8704 162.83C70.5072 162.228 70.0319 161.702 69.4704 161.28V161.28ZM77.5804 148.34H74.5804V153.78H72.3904V156.56H74.5804V170H77.5804V156.56H80.2504V153.78H77.5804V148.34ZM95.0504 156.06H95.0004C94.4271 155.184 93.6151 154.49 92.6604 154.06C91.6719 153.596 90.5921 153.361 89.5004 153.37C88.1897 153.336 86.8889 153.606 85.7004 154.16C84.681 154.639 83.7693 155.319 83.0204 156.16C82.3187 156.973 81.779 157.914 81.4304 158.93C81.088 159.893 80.9089 160.907 80.9004 161.93C80.9006 162.999 81.0937 164.059 81.4704 165.06C81.8474 166.059 82.4146 166.976 83.1404 167.76C83.9029 168.576 84.8254 169.226 85.8504 169.67C87.0044 170.158 88.2475 170.4 89.5004 170.38C90.5904 170.383 91.667 170.14 92.6504 169.67C93.6373 169.185 94.456 168.415 95.0004 167.46H95.0604V170H98.0604V153.78H95.0604L95.0504 156.06ZM94.6704 164.12C94.3921 164.796 93.9844 165.41 93.4704 165.93C92.9615 166.45 92.3572 166.868 91.6904 167.16C90.987 167.466 90.2276 167.623 89.4604 167.62C88.6932 167.623 87.9351 167.455 87.2404 167.13C86.5785 166.827 85.9836 166.395 85.4904 165.86C84.9989 165.331 84.6121 164.713 84.3504 164.04C84.0737 163.364 83.9343 162.64 83.9404 161.91C83.9448 161.23 84.0561 160.555 84.2704 159.91C84.487 159.231 84.8259 158.597 85.2704 158.04C85.7503 157.464 86.3423 156.991 87.0104 156.65C87.7681 156.275 88.6054 156.09 89.4504 156.11C90.2041 156.105 90.9514 156.248 91.6504 156.53C92.3127 156.808 92.9167 157.208 93.4304 157.71C93.9491 158.233 94.3572 158.856 94.6304 159.54C94.9284 160.291 95.0778 161.092 95.0704 161.9C95.0874 162.659 94.9513 163.414 94.6704 164.12V164.12ZM101.81 169.99H104.81V153.78H101.81V169.99ZM101.81 151.91H104.81V148.34H101.81V151.91ZM121.9 156.24C121.324 155.328 120.512 154.589 119.55 154.1C118.502 153.577 117.342 153.316 116.17 153.34H115.39C114.979 153.366 114.573 153.444 114.18 153.57C113.687 153.731 113.214 153.95 112.77 154.22C112.246 154.549 111.791 154.977 111.43 155.48H111.37V153.75H108.53V170H111.58V161.16C111.486 159.807 111.903 158.469 112.75 157.41C113.144 156.985 113.625 156.65 114.16 156.429C114.695 156.208 115.272 156.106 115.85 156.13C116.676 156.077 117.496 156.291 118.19 156.74C118.704 157.114 119.114 157.613 119.38 158.19C119.632 158.718 119.784 159.287 119.83 159.87C119.83 160.44 119.88 160.87 119.88 161.19V170H122.93V160.4C122.917 159.602 122.823 158.808 122.65 158.03C122.496 157.398 122.243 156.793 121.9 156.24V156.24ZM139.75 156.06H139.69C139.117 155.184 138.305 154.49 137.35 154.06C136.362 153.597 135.282 153.362 134.19 153.37C132.88 153.336 131.579 153.606 130.39 154.16C129.371 154.639 128.459 155.319 127.71 156.16C127.009 156.973 126.469 157.914 126.12 158.93C125.778 159.893 125.599 160.907 125.59 161.93C125.591 162.999 125.784 164.059 126.16 165.06C126.542 166.084 127.127 167.02 127.88 167.812C128.632 168.604 129.537 169.236 130.54 169.67C131.694 170.158 132.938 170.4 134.19 170.38C135.28 170.383 136.357 170.14 137.34 169.67C138.327 169.185 139.146 168.415 139.69 167.46H139.75V170H142.75V153.78H139.75V156.06ZM139.37 164.12C139.092 164.796 138.684 165.41 138.17 165.93C137.662 166.45 137.057 166.868 136.39 167.16C135.687 167.467 134.928 167.624 134.16 167.62C133.393 167.624 132.635 167.457 131.94 167.13C131.277 166.83 130.682 166.397 130.19 165.86C129.677 165.323 129.273 164.691 129 164C128.732 163.322 128.596 162.599 128.6 161.87C128.605 161.19 128.716 160.515 128.93 159.87C129.147 159.191 129.486 158.557 129.93 158C130.41 157.424 131.002 156.951 131.67 156.61C132.428 156.234 133.265 156.049 134.11 156.07C134.85 156.057 135.585 156.191 136.272 156.466C136.959 156.741 137.584 157.15 138.11 157.67C138.629 158.193 139.037 158.816 139.31 159.5C139.608 160.251 139.758 161.052 139.75 161.86C139.779 162.631 139.65 163.4 139.37 164.12V164.12ZM161 155.74C159.446 154.22 157.364 153.36 155.19 153.34C154.117 153.329 153.053 153.547 152.07 153.98C151.091 154.414 150.248 155.105 149.63 155.98H149.57V148.29H146.5V170H149.5V167.65H149.56C149.957 168.181 150.444 168.639 151 169C151.475 169.331 151.985 169.61 152.52 169.83C152.996 170.029 153.492 170.173 154 170.26C154.424 170.327 154.852 170.364 155.28 170.37C156.412 170.382 157.533 170.153 158.57 169.7C159.562 169.269 160.459 168.648 161.21 167.87C161.959 167.083 162.556 166.164 162.97 165.16C163.402 164.114 163.619 162.992 163.61 161.86C163.625 160.676 163.386 159.504 162.91 158.42C162.448 157.414 161.8 156.505 161 155.74V155.74ZM160.08 164.13C159.8 164.813 159.389 165.434 158.87 165.96C158.365 166.475 157.764 166.886 157.1 167.17C156.444 167.467 155.731 167.62 155.01 167.62C154.325 167.613 153.646 167.477 153.01 167.22C152.353 166.957 151.752 166.57 151.24 166.08C150.708 165.563 150.28 164.949 149.98 164.27C149.65 163.496 149.487 162.661 149.5 161.82C149.5 161.102 149.632 160.39 149.89 159.72C150.153 159.049 150.532 158.429 151.01 157.89C151.511 157.325 152.127 156.875 152.818 156.569C153.508 156.264 154.256 156.111 155.01 156.12C155.773 156.108 156.528 156.269 157.22 156.59C157.882 156.893 158.477 157.325 158.97 157.86C159.468 158.395 159.862 159.02 160.13 159.7C160.401 160.395 160.54 161.134 160.54 161.88C160.536 162.655 160.373 163.421 160.06 164.13H160.08ZM166.38 169.99H169.38V153.78H166.38V169.99ZM166.38 151.91H169.38V148.34H166.38V151.91ZM173.09 170H176.09V148.34H173.09V170ZM179.83 151.92H182.83V148.35H179.83V151.92ZM179.83 170H182.83V153.78H179.83V170ZM190.23 148.35H187.23V153.79H185V156.57H187.2V170H190.2V156.56H192.86V153.78H190.2L190.23 148.35ZM206.73 153.79L201.85 166.37L197.08 153.79H193.8L200.27 169.67L197.9 175.4H201.06L210 153.78L206.73 153.79Z" fill="#E31F26"/>
                    <path d="M168.06 46.7799C164.096 46.7795 160.236 48.055 157.052 50.4177C153.868 52.7805 151.529 56.1051 150.38 59.8999H185.74C184.593 56.1042 182.255 52.7787 179.07 50.4158C175.886 48.0528 172.026 46.7779 168.06 46.7799V46.7799ZM168.06 9.93993C159.189 9.93205 150.432 11.9515 142.46 15.844C134.488 19.7366 127.51 25.3993 122.06 32.3999C120.761 34.0509 119.556 35.7737 118.45 37.5599C115.319 42.5787 112.978 48.0494 111.51 53.7799C108.83 64.2399 110.64 75.0499 106.08 85.1299C102.844 92.3001 97.6066 98.3835 90.9971 102.65C84.3876 106.916 76.6872 109.183 68.8204 109.18H67.4304V92.7199C67.4304 83.2466 69.5537 76.2466 73.8004 71.7199C78.0471 67.1933 83.8804 64.9533 91.3004 64.9999H92.4704V41.7499C85.8038 41.4566 80.5304 42.9199 76.6504 46.1399C72.5706 49.6093 69.4018 54.0244 67.4204 58.9999V42.6099H45.1704V101.61C40.0533 97.9751 35.8424 93.2103 32.8643 87.6852C29.8863 82.16 28.2211 76.023 27.9981 69.7503C27.7751 63.4776 29.0002 57.2378 31.5783 51.5151C34.1565 45.7924 38.0184 40.7406 42.8644 36.7515C47.7104 32.7625 53.4103 29.9436 59.5219 28.5133C65.6334 27.0831 71.9923 27.0801 78.1052 28.5046C84.2181 29.929 89.9206 32.7426 94.7704 36.727C99.6202 40.7115 103.487 45.7597 106.07 51.4799C107.915 44.67 110.875 38.2126 114.83 32.3699C107.349 22.7904 97.0633 15.785 85.4093 12.3312C73.7553 8.87725 61.3139 9.14706 49.8206 13.1029C38.3273 17.0588 28.3553 24.5035 21.2958 34.3984C14.2363 44.2933 10.4414 56.1449 10.4404 68.2999V68.2999C10.4404 83.7833 16.5911 98.6325 27.5395 109.581C38.4879 120.529 53.3371 126.68 68.8204 126.68C78.7567 126.665 88.5258 124.122 97.2082 119.29C105.891 114.458 113.201 107.496 118.45 99.0599C122.8 92.0599 125.12 84.1399 126.26 75.9999C127.43 67.6299 127.26 59.3399 130.81 51.4799C134.905 42.4062 142.171 35.1389 151.244 31.0421C160.317 26.9454 170.573 26.301 180.087 29.2298C189.601 32.1586 197.72 38.4593 202.918 46.9491C208.116 55.4389 210.037 65.5342 208.32 75.3399H150C150.578 78.0052 151.747 80.5068 153.42 82.6599C155.145 84.8913 157.359 86.6978 159.89 87.9407C162.422 89.1836 165.205 89.8299 168.025 89.8299C170.846 89.8299 173.629 89.1836 176.16 87.9407C178.692 86.6978 180.905 84.8913 182.63 82.6599H206.29C203.444 90.2332 198.414 96.7915 191.838 101.505C185.262 106.218 177.436 108.873 169.35 109.136C161.263 109.398 153.281 107.255 146.413 102.978C139.546 98.7013 134.102 92.4827 130.77 85.1099C128.931 91.9201 125.974 98.3778 122.02 104.22C128.115 112.028 136.095 118.157 145.211 122.03C154.326 125.904 164.278 127.394 174.129 126.362C183.979 125.329 193.405 121.807 201.519 116.128C209.634 110.448 216.17 102.797 220.512 93.8951C224.854 84.9932 226.861 75.1328 226.342 65.2417C225.823 55.3507 222.796 45.7543 217.546 37.3556C212.296 28.9568 204.996 22.0318 196.332 17.2322C187.668 12.4326 177.925 9.91628 168.02 9.91993L168.06 9.93993Z" fill="#E31F26"/>
                </svg>                                  
            </div>
          </div>
        </div>
        <div class="is-scrollbar-hidden col-span-12 flex space-x-4 overflow-x-auto p-6 transition-all duration-[.25s] lg:col-span-9 lg:pl-0">
          
            <div
            class="card swiper-slide flex w-72 shrink-0 justify-between rounded-xl border-l-4 border-warning p-4"
          >
            <div>
              <p
                class="font-small tracking-wide text-slate-700 line-clamp-5 dark:text-navy-100"
              >
              A large number of factories, textile mills, mines, and other industrial sectors dispose of the hazardous waste which is unavoidable at times.
              </p>
              
            </div>

            <div class="mt-6">
              <div
                x-tooltip.primary="'25% Completed'"
                class="progress h-1 bg-slate-150 dark:bg-navy-500"
              >
                <div
                  class="w-12/12 rounded-full bg-warning dark:bg-accent"
                ></div>
              </div>

              <div
                class="mt-2 flex items-center justify-between text-warning dark:text-accent-light"
              >
                <p class="font-medium">Industrial Waste Management</p>
                <a href="#">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M17 8l4 4m0 0l-4 4m4-4H3"
                    />
                  </svg>
                </a>
              </div>
            </div>
          </div>

          <div
              class="card swiper-slide flex w-72 shrink-0 justify-between rounded-xl border-l-4 border-error p-4"
            >
              <div>
                <p
                  class="font-medium tracking-wide text-slate-700 line-clamp-5 dark:text-navy-100"
                >
                Reducing the solid, liquid, or hazardous medical waste footprint by serving clinical establishments at large.
                </p>
               
              </div>

              <div class="mt-6">
                <div
                  x-tooltip.secondary="'25% Completed'"
                  class="progress h-1 bg-slate-150 dark:bg-navy-500"
                >
                  <div class="w-12/12 rounded-full bg-secondary"></div>
                </div>

                <div
                  class="mt-2 flex items-center justify-between text-error dark:text-secondary-light"
                >
                  <p class="font-medium">Biomedical Waste Management</p>
                  <a href="#">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M17 8l4 4m0 0l-4 4m4-4H3"
                      />
                    </svg>
                  </a>
                </div>
              </div>
            </div>
            
            
            <div
              class="card swiper-slide flex w-72 shrink-0 justify-between rounded-xl border-l-4 border-primary p-4"
            >
              <div>
                <p
                  class="font-medium tracking-wide text-slate-700 line-clamp-5 dark:text-navy-100"
                >
                Maintaining cleanliness, hygiene, and sanctity around professional areas with distinctive sustainable facilities
                </p>
                <a
                  href="#"
                  class="mt-0.5 text-xs+ text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100"
                  >Katrina West</a
                >
              </div>

              <div class="mt-6">
                <div
                  x-tooltip.secondary="'25% Completed'"
                  class="progress h-1 bg-slate-150 dark:bg-navy-500"
                >
                  <div class="w-4/12 rounded-full bg-primary"></div>
                </div>

                <div
                  class="mt-2 flex items-center justify-between text-primary dark:text-secondary-light"
                >
                  <p class="font-medium">Facilities Management</p>
                  <a href="#">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M17 8l4 4m0 0l-4 4m4-4H3"
                      />
                    </svg>
                  </a>
                </div>
              </div>
            </div>
      </div>
    </div>
            <div>
            </div>
            
          </div>
          
          <div class="col-span-12 lg:col-span-3">
            <div class="col-span-12 xl:col-span-5">
              <div class="-mt-1 flex items-center justify-between">
                <h2 class="text-sm+ font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                  APP Station
                </h2>
                
              </div>
              <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <div class="is-initial rounded-full bg-warning uppercase text-white">
                          <img class="rounded-full" src="/index/resources/images/icons/windows.png" alt="avatar">
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                              Workspace
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      
                      <div class="mt-4 flex justify-between">
                              <div class="flex flex-wrap -space-x-2 justify-between flex-container">
                              <a href="https://mail.google.com" target="_blank"> <small class="mb-1 mr-1 font-12 text-center">
                                  <img src="/index/resources/images/icons/email.png" width="58" height="64">&nbsp;&nbsp;</small></a>
                                                         <a href="http://calendar.google.com/" target="_blank"> <small class="mb-1 mr-1 font-12 text-center">
                                  <img src="/index/resources/images/icons/calendar.png" height="52" width="50" title="Google  Calendar"></small></a>
                                                          <a href="https://drive.google.com" target="_blank">    <small class="mb-1 mr-0 font-12 text-center">
                                  <img src="/index/resources/images/icons/GoogleDrive.png" height="64" width="66"></small></a>
                                  <a href="https://currents.google.com/up" target="_blank">    <small class="mb-1 mr-0 font-12 text-center">
                                    <img src="/index/resources/images/icons/currents.png" height="64" width="66"></small></a>
                                    <a href="https://mail.google.com/chat/u/1/#chat/welcome" target="_blank">    <small class="mb-1 mr-0 font-12 text-center">
                                      <img class="gb_Jc" src="https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_chat_default_1x.png" srcset="https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_chat_default_1x.png 1x, https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_chat_default_2x.png 2x " alt="" aria-hidden="true" role="presentation" style="width:90px;height:40px"></small></a>
                             
                                  <br><br>
                                
                              </div>
                             
                            </div>
        
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <div class="is-initial rounded-full bg-warning uppercase text-white">
                         <img class="rounded-full" src="/index/resources/images/icons/icons8-settings.gif" alt="avatar">
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                              Tools
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      
                     <div class="mt-4 flex justify-between">
                              <div class="flex flex-wrap -space-x-2 justify-between flex-container">
                              
                                <a href="https://ithelpdesk.resustainability.com/" target="_blank">        <small class="mb-1 mr-3 font-12 text-center">
                                  <img src="/index/resources/images/icons/ITHD.png" height="64" width="58" title="IT HelpDesk"></small></a>
                                                         
                                  <a href="https://appmint.resustainability.com/reirm/login/saidileep.p@resustainability.com" target="_blank">        <small class="mb-1 mr-1 font-12 text-center">
                                    <img src="/index/resources/images/icons/Safety.png" height="64" width="62" title="Safety Portal"></small></a>
                                    
                                    <a href="https://appmint.resustainability.com/brainbox/login/saidileep.p@resustainability.com" target="_blank">        <small class="mb-1 mr-0 font-12 text-center">
                                    <img src="/index/resources/images/icons/brainbox.png" height="64" width="62" title="Brainbox"></small></a>

                                <a href="../gflow/" target="_blank">    <small class="mb-1 mr-1 font-12 text-center">
                                  <img src="/index/resources/images/icons/WF.png" width="58" height="64" title="GFlow Request and Approval System"></small> </a>
                                                       <a href="https://prdappworks.resustainability.com:8444/" target="_blank">      <small class="mb-1 mr-1 font-12 text-center">
                                  <img src="/index/resources/images/icons/SAPUM.png" width="58" height="64" title="SAP USER RESET &amp; UNLOCK"></small></a>
                                  
                                   <a href="https://prdappworks.resustainability.com:8445/" target="_blank">    <small class="mb-1 mr-0 font-12 text-center">
                                  <img src="/index/resources/images/icons/PR-PO-Track.png" height="64" width="66" title="IT HelpDesk"></small></a>
                                  <br><br>
                                
                              </div>
                             
                            </div>
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <div class="is-initial rounded-full bg-warning uppercase text-white">
                          <img class="rounded-full" src="/index/resources/images/icons/4129528.png" alt="avatar">
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                              Products
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                    <div class="mt-4 ">
                              <div class="flex flex-wrap -space-x-2 justify-between flex-container">
                                      
                                <a href="https://resustainability.darwinbox.in" target="_blank">          <small class="mb-1 mr-1 font-12 text-center">
                                  <img src="/index/resources/images/icons/dbox-logo.png" width="58" height="64"></small></a>
                                                       
                              </div>
                             
                            </div>
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <div class="is-initial rounded-full bg-warning uppercase text-white">
                          <img class="rounded-full" src="/index/resources/images/icons/complience.png" alt="avatar">
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                              COMPLIANCE
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      
                      <div class="mt-4 flex justify-between">
                        <div class="flex flex-wrap -space-x-2">
                    		<div class="px-4 sm:px-5">
                            <div class="flex justify-between">
                              <div class="flex space-x-7 pt-3">
                               <a href="https://complyone.resustainability.com" target="_blank">      <small class="mb-1 mr-1 font-12 text-center">
                                <img src="/index/resources/images/icons/legasis-logo.png" width="58" height="64"></small></a>
                                                       <a href="https://resustainability.ethicspoint.com/" target="_blank">  <small class="mb-1 mr-0 font-12 text-center">
                                <img src="/index/resources/images/icons/navexglobal.png" width="76" height="64"></small></a>
                              </div>
                            </div>
                          </div>

                        </div>
                
                      </div>
                    </div>
                  </div>
                </div>
              </div>
     
            </div>
          </div>
        </div>

        

        




<!-- //style=" padding-left: 2%;" -->
              <div class="flex flex-col rounded-xl  py-5 dark:bg-navy-800 lg:flex-row" style=" padding-left: 2%;">
   
                <div class="scrollbar-sm mt-5 flex space-x-4 overflow-x-auto px-4 sm:px-5 lg:mt-0 lg:pl-0">
                  <div class="flex w-36 shrink-0 flex-col items-center">
                    <img class="z-10 h-10 w-10" src="/index/resources/images/icons/linkedin.gif" alt="flag">
    
                    <div class="card -mt-5 w-full rounded-2xl px-3 py-5 text-center">
                      <p class="mt-3 text-base font-medium text-slate-700 dark:text-navy-100">
                        LinkedIn
                      </p>
                      <a href="https://in.linkedin.com/company/ramky-enviro-engineers-ltd"  target="_blank"
                      class="mt-1 font-inter text-xs+ tracking-wide text-slate-400 hover:text-primary
                      focus:text-primary dark:hover:text-accent-light dark:focus:text-accent-light">@RELINKDN
                      </a>
                      <div class="mt-6 flex justify-center space-x-1 font-inter">
                       
                      </div>
                    </div>
                  </div>
                  <div class="flex w-36 shrink-0 flex-col items-center">
                    <img class="z-10 h-10 w-10" src="/index/resources/images/icons/facebook.gif" alt="flag">
    
                    <div class="card -mt-5 w-full rounded-2xl px-3 py-5 text-center">
                      <p class="mt-3 text-base font-medium text-slate-700 dark:text-navy-100">
                        Facebook
                      </p>
                      <a href="https://www.facebook.com/ramkyenviroengineers/" target="_blank"
                      class="mt-1 font-inter text-xs+ tracking-wide text-slate-400 hover:text-primary focus:text-primary 
                      dark:hover:text-accent-light dark:focus:text-accent-light">@REFB
                      </a>
                      <div class="mt-6 flex justify-center space-x-1 font-inter">
                       
                       
                      </div>
                    </div>
                  </div>
 
                </div>
                <div class="flex flex-col px-4 sm:px-5 lg:w-48 lg:shrink-0 lg:py-3">
                  <h3 class="text-base font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-lg">
                    
                  </h3>
                
                  <div class="card ">
                   
                </div>
              </div>
</div>


      </main>
    </div>
       <form action="<%=request.getContextPath() %>/logout" name="logoutForm" id="logoutForm" method="post">
		<input type="hidden" name="email" id="email"/>
	</form>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
      
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
