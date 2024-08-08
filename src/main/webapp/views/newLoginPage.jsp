<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from lineone.piniastudio.com/pages-login-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:51 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <!-- Meta tags  -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />

    <title>Re - Sign In</title>
    <link rel="icon" type="image/png" href="/rescorecard/resources/images/favicon.svg" />
  <script src="/rescorecard/resources/js/jQuery-v.3.5.min.js"></script>
  <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
    <!-- CSS Assets -->
    <link rel="stylesheet" href="/rescorecard/resources/css/app.css" />
 <script src="https://accounts.google.com/gsi/client" async defer></script>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- Javascript Assets -->
    <script src="/rescorecard/resources/js/app.js" defer></script>
 <script src="/rescorecard/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/rescorecard/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/rescorecard/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/rescorecard/resources/js/dataTables.material.min.js"  ></script> 
      <script src="/rescorecard/resources/js/moment-v2.8.4.min.js"  ></script>
             <script src="https://www.youtube.com/iframe_api"></script>
    	
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <style>
     #qrcode {
            margin: 20px;
        }
        #shareButton {
            display: none;
        }
    .text-secondary {
    --bs-text-opacity: 1;
    color: rgba(var(--bs-secondary-rgb),var(--bs-text-opacity))!important;
}
.fw-bolder {
    font-weight: 600!important;
}
.mt-2 {
    margin-top: 1.5rem!important;
}
.fr-text {
    font-size: .75rem;
}
hr:not([size]) {
    height: 1px;
}
.fr-text {
    font-size: .75rem;
}
.rounded-full {
    border-radius: 11px!important;
}
.swiper-3d .swiper-slide-shadow {
    background: rgba(0,0,0,0);
}
hr {
    margin: 1rem 0;
    color: #EBE9F1;
    background-color: currentColor;
    border: 0;
    opacity: 1;
}
.fr-text {
    font-size: .75rem;
}
    .errorBG{
    	color:red;
    	font-size: small;
   	 	font-weight: 600;
    }
    .field-icon {
		  float: right;
		  margin-left: -25px;
		     margin-top: 3%;
		  position: relative;
		  z-rescorecard: 2;
		}
		
		.container{
		  padding-top:50px;
		  margin: auto;
		}
		.captcha {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
  max-width: 400px;
  margin: 27px auto;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.captcha-input {
  flex: 1;
  margin-right: 10px;
}

.captcha-input input {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.captcha-image {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background-color: #f7f7f7;
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 10px;
}

.captcha-image span {
  font-size: 24px;
  font-weight: bold;
  letter-spacing: 5px;
}

.captcha-image a {
  color: #333;
  text-decoration: none;
  font-size: 20px;
}

.captcha-image a:hover {
  color: #666;
}

.captcha-image i {
  transform: rotate(0deg);
  transition: transform .3s ease;
}

.captcha-image a:hover i {
  transform: rotate(360deg);
}
	.error-message {
  color: red;
  font-weight: bold;
  margin-bottom: 20px;
}	
.w-12 {
    width: 4rem !important;
}
.h-12 {
    height: 3rem !important;
}
img, video {
    height: auto;
    max-width: 53%!important;
}
.container {
  width: 100%;
  height: 100%;
  font-size: 24px;
}

.container div {
  font-size: 1.5em;
}
.w-64 {
    width: 50rem!important;
}
.h-40 {
    height: 29rem!important;
}
@media (min-width: 1024px)
.lg :px-12 {
    padding-left: 3rem;
    padding-right: 3rem;
    z-rescorecard: 3;
}
.S9gUrf-YoZ4jf, .S9gUrf-YoZ4jf * {
    border: none!important;
    margin-left: 10px!important;
    padding: 0!important;
}
.container1 {
  display: flex;
  align-items: center; /* Align items vertically */
}

.text {
  margin-right: 10px; /* Add spacing between text and image */
}
#player{
    width: 49rem;
    border-radius: 15px;
}
 body {
      -webkit-user-select: none; /* Safari/Chrome */
      -moz-user-select: none; /* Firefox */
      -ms-user-select: none; /* Internet Explorer/Edge */
      user-select: none;
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
  <body x-data class="is-header-blur" x-bind="$store.global.documentBody" oncontextmenu="return false;" > <!-- oncontextmenu="return false;" 
   body {
      -webkit-user-select: none; /* Safari/Chrome */
      -moz-user-select: none; /* Firefox */
      -ms-user-select: none; /* Internet Explorer/Edge */
      user-select: none;
    }
  -->
  
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
      <div class="fixed top-0 hidden p-6 lg:block lg:px-12">
        <a href="#" class="flex items-center space-x-2">
          
          <p
            class="text-xl font-semibold uppercase text-slate-700 dark:text-navy-100"
          >
            Re Sustainability
          </p>
        </a>
        
      </div>
      <div class="hidden w-full place-items-center lg:grid"> 
       <div class="card  p-5 container">
                
                <p class="font-medium"></p>
                <div class="flex items-center justify-between pt-4">
                  
                    <div class="col-span-12 lg:order-last lg:col-span-4">
                        <div class="swiper h-40 w-64 swiper-cards swiper-3d swiper-initialized swiper-horizontal swiper-watch-progress" x-init="$nextTick(()=>$el._x_swiper = new Swiper($el,{effect: 'cards'}))">
                          <div class="swiper-wrapper" id="swiper-wrapper-10e26b683ebc56a3d" aria-live="polite" style="transition-duration: 0ms;">
                           
                           
                            
                            
                            
                            <div class="swiper-slide relative flex h-full flex-col overflow-hidden rounded-xl bg-gradient-to-br  to-rose-500 p-5 swiper-slide-next" 
                            role="group" aria-label="2 / 5" style="width: 901px; z-rescorecard: 2; transform: translate3d(calc(-901px + 7.25%), 0px, -100px) rotateZ(2deg) scale(1); transition-duration: 0ms;">
                               <img src="<c:url value="/resources/images/800X464_PLANTS-02.jpg"/>" href="https://resustainability.com/"  alt="logo" class="mb-2 ms-2 rounded-full" style="margin-left: 1rem;max-width: 96%!important;"> 
                             
                              <div class="absolute bottom-0 right-0 -m-3 h-24 w-24 rounded-full bg-white/20"></div>
                          <!--    <div class="swiper-slide-shadow" style="opacity: 1; transition-duration: 0ms;"></div> --></div>
                            
                             <div class="swiper-slide relative flex h-full flex-col overflow-hidden rounded-xl bg-gradient-to-br  to-rose-500 p-5 swiper-slide-next" 
                            role="group" aria-label="2 / 5" style="width: 901px; z-rescorecard: 2; transform: translate3d(calc(-901px + 7.25%), 0px, -100px) rotateZ(2deg) scale(1); transition-duration: 0ms;">
                               <img src="<c:url value="/resources/images/800X464_PLANTS-021.jpg"/>" href="https://resustainability.com/"  alt="logo" class="mb-2 ms-2 rounded-full" style="margin-left: 1rem;max-width: 96%!important;"> 
                             
                              <div class="absolute bottom-0 right-0 -m-3 h-24 w-24 rounded-full bg-white/20"></div>
                          <!--    <div class="swiper-slide-shadow" style="opacity: 1; transition-duration: 0ms;"></div> --></div>
                            
                            <div class="swiper-slide relative flex h-full flex-col overflow-hidden rounded-xl bg-gradient-to-br to-info-focus p-5" role="group" 
                            aria-label="3 / 5" style="width: 901px; z-rescorecard: 1; transform: translate3d(calc(-901px + 13%), 0px, -200px) rotateZ(4deg) scale(1); 
                            transition-duration: 0ms;">
                              
                                 <img src="<c:url value="/resources/images/800X464_PLANTS-03.jpg"/>" href="https://resustainability.com/"  alt="logo" class="mb-2 ms-2 rounded-full" style="margin-left: 1rem;max-width: 96%!important;">  
                              <div class="absolute top-0 right-0 -m-3 h-24 w-24 rounded-full bg-white/20"></div>
                            <!--    <div class="swiper-slide-shadow" style="opacity: 1; transition-duration: 0ms;"></div> --></div>
                            
                            
                           <%--  
                             <div class="swiper-slide relative flex h-full flex-col overflow-hidden rounded-xl bg-gradient-to-br  to-info-focus p-5" role="group" 
                            aria-label="4 / 5" style="width: 901px; z-rescorecard: 1; transform: translate3d(calc(-901px + 20.5%), 0px, -200px) rotateZ(4deg) scale(1); 
                            transition-duration: 0ms;">
                              
                                 <img src="<c:url value="/resources/images/800X464_PLANTS-05.jpg"/>" href="https://resustainability.com/"  alt="logo" class="mb-2 ms-2 rounded-full" style="margin-left: 1rem;max-width: 96%!important;">  
                              <div class="absolute top-0 right-0 -m-3 h-24 w-24 rounded-full bg-white/20"></div>
                            <!--    <div class="swiper-slide-shadow" style="opacity: 1; transition-duration: 0ms;"></div> --></div>
                             --%>
                            
                            <div class="swiper-slide relative flex h-full flex-col overflow-hidden rounded-xl bg-gradient-to-br  to-info-focus p-5" role="group" 
                            aria-label="5 / 5" style="width: 901px; z-rescorecard: 1; transform: translate3d(calc(-901px + 28%), 0px, -200px) rotateZ(4deg) scale(1); 
                            transition-duration: 0ms;">
                              
                                 <img src="<c:url value="/resources/images/800X464_PLANTS-06.jpg"/>" href="https://resustainability.com/"  alt="logo" class="mb-2 ms-2 rounded-full" style="margin-left: 1rem;max-width: 96%!important;">  
                              <div class="absolute top-0 right-0 -m-3 h-24 w-24 rounded-full bg-white/20"></div>
                            <!--    <div class="swiper-slide-shadow" style="opacity: 1; transition-duration: 0ms;"></div> --></div>
                           
                           
                           <!--  <div class="swiper-slide relative flex h-full flex-col overflow-hidden rounded-xl bg-gradient-to-br  to-indigo-600 p-5  
                            swiper-slide-visible swiper-slide-active" role="group" aria-label="1 / 5" id="player-wrapper" style="z-rescorecard: 3;transform: 
                            translate3d(0px, 0px, 0px) rotateZ(0deg) scale(1);transition-duration: 0ms;width: 839px;">
 							<div id="player"></div>                        
                              <div class="absolute top-0 right-0 -m-3 h-24 w-24 rounded-full bg-white/20"></div>
                            <div class="swiper-slide-shadow" style="opacity: 0; transition-duration: 0ms;"></div></div> -->
                          </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span><span class="swiper-notification" aria-live="assertive" 
                        aria-atomic="true"></span></div>
            
                      </div>

                </div>
              </div>
      </div>
      <main
        class="flex w-full flex-col items-center bg-white dark:bg-navy-700 lg:max-w-md"
      >
        <div class="flex w-full max-w-sm grow flex-col justify-center p-5">
          <div class="">
           <!--  <img
              class="mx-auto h-16 w-16 lg:hidden"
              src="/rescorecard/resources/images/app-logo.svg"
              alt="logo"
            /> -->
            <div class="mt-4">
              <img class="" src="/rescorecard/resources/images/app-logo.svg" alt="logo" style="margin-left: 5.5rem;width: 50%!important;height: 20%;"/>
              <p class="text-slate-400 dark:text-navy-300">
              </p>
            </div> 
          </div>
        <div class="d-flex col-lg-4 align-items-center auth-bg px-2 p-lg-2">
               <!-- Login basic -->

	
                <div class="col-12 col-sm-8 col-md-6 mt-1 col-lg-12 px-xl-2 mx-auto">
<%-- 				<img src="<c:url value="/resources/images/logo/logo-scs-key523173.png"/>" href="#"  alt="logo" class="mb-2 ms-2">
 --%>                <div style="color: red;" >${invalidEmail} ${multipleLoginFound}${duplicate }</div>
               <!--  <h3><strong>Welcome to</strong></h3> -->
              
                 <!--  <h4 class="mb-2 text-center"> Enterprise Portal</h4> -->
                   <hr class="m-b-10 fr-text m-t-0">
                  <div class="p-10 text-center">  
                    <%--  <img class="box-title m-b-15" src="<c:url value="/resources/images/login_icon.png"/>"  height="107" width="102">       --%>
    				</div>
    				
    				<div id="g_id_onload" 
					     data-client_id="180023549420-57imk7usicj28m4489imvf0spmk3v7l7.apps.googleusercontent.com"
					     data-context="use"
					     data-ux_mode="popup"
					     data-callback="handleCredentialResponse"
					     data-nonce=""
					     data-itp_support="true">
					</div>
					<div class="g_id_signin justify-content-center mt-1"
					     data-type="standard" 
					     data-shape="rectangular"
					     data-theme="filled_blue"
					     data-text="signin_with"
					     data-size="large"
					     data-logo_alignment="left">
					</div>
	<!-- 			 <div id="g_id_onload"
									 180023549420-57imk7usicj28m4489imvf0spmk3v7l7.apps.googleusercontent.com
				     data-client_id="180023549420-4araucipo8cil4matp902f64cte57md9.apps.googleusercontent.com"
				     data-context="signin"
				     data-ux_mode="popup"
				     data-callback="handleCredentialResponse"
				     data-nonce=""
				     data-auto_select="true"
				     data-itp_support="true">
				</div>
				
				<div class="g_id_signin justify-content-center mt-1"
				     data-type="standard"
				     data-shape="rectangular"
				     data-theme="outline"
				     data-text="signin_with"
				     data-size="large"
				     data-logo_alignment="left">
				</div> -->
				    
			      <!--   <p class="mt-2 text-secondary fw-bolder">Please ensure username should be your Email ID @resustainability.com</p>
			        <p class=" fr-text text-secondary">Incase of any login issue, connect on <a href="mailto:it.helpdesk@resustainability.com" class="link"><u>it.helpdesk@resustainability.com</u></a></p>
                 	<hr class="m-b-10 fr-text m-t-0">
                 	<p class=" fr-text">Signing up in this Safety Portal confirms your acceptance to ReSL IT Application Usage Policy </p> -->
                 <br>
                  <p class="mt-2 text-secondary fw-bolder">Please ensure username should be your Email ID @resustainability.com</p>
			        <p class=" fr-text text-secondary">Incase of any login issue, connect on <a href="mailto:it.helpdesk@resustainability.com" class="link"><u>it.helpdesk@resustainability.com</u></a></p>
                 	<hr class="m-b-10 fr-text m-t-0">
                 	<p class=" fr-text">Signing up in this Enterprise Portal confirms your acceptance to ReSL IT Application Usage Policy </p>
                   <div class="m-t-30 mt-5 container1" style=" margin-left: 33%;"><span class="font-10 fr-text text">Powered by</span>  <img src="<c:url value="/resources/images/favicoan.png"/>" href="#"  style="max-width: 18% !important;" alt="logo" class="mb-2 ms-2"></div>
             <div class="m-t-30 mt-5"><p class="font-10 fr-text">Re Sustainability Ltd © 2024. ReSL, All Rights Reserved.</p></div>
                </div>
                	
              </div>
        </div>
        <div
          class="my-5 flex justify-center text-xs text-slate-400 dark:text-navy-300"
        >
          <a href="https://resustainability.com/privacy-policy-2/" class="link " target="_blank">Privacy Policy </a>
          <div class="mx-3 my-1 w-px bg-slate-200 dark:bg-navy-500"></div>
          <a href="https://resustainability.com/terms-of-service/" class="link" target="_blank">Term of service </a>
        </div>
      </main>
    </div>

    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
      <form action="<%=request.getContextPath() %>/login" name="loginForm" id="loginForm" method="post">
		<input type="hidden" name="email_id" id="email_id"/>
		<input type="hidden" name="user_name" id="user_name"/>
		<input id="profileImg" name="profileImg" type="hidden" />
		<input id="gToken" name="user_session_id" type="hidden" />
		<input id="device_type" name="device_type" type="hidden" />
	</form>
    <div id="x-teleport-target"></div>
       <script src="/rescorecard/resources/vendors/js/extensions/moment.min.js"></script>
           <script src="/rescorecard/resources/js/datetime-moment-v1.10.12.js"  ></script>
            <script src="/rescorecard/resources/js/moment-v2.8.4.min.js"  ></script>
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
      
      $(document).ready(function() {
          var employeeCode = "2200110"; // Replace with the actual employee code

          var qrcode = new QRCode(document.getElementById("qrcode"), {
              text: employeeCode,
              width: 200,
              height: 200
          });
          
          // Check if the browser supports the share API
          if (navigator.share) {
              $('#shareButton').show();
              $('#shareButton').on('click', function() {
                  navigator.share({
                      title: 'Employee QR Code',
                      text: 'Scan this QR code to view employee information.',
                      url: window.location.href
                  })
                  .then(() => console.log('Shared successfully'))
                  .catch((error) => console.error('Error sharing:', error));
              });
          }
      });

    	 var client;
         var access_token;

         function initClient() { 
       	  
           client = google.accounts.oauth2.initTokenClient({
             client_id: '180023549420-4araucipo8cil4matp902f64cte57md9.apps.googleusercontent.com',
             scope: 'https://www.googleapis.com/auth/calendar.readonly \
                     https://www.googleapis.com/auth/contacts.readonly',
             callback: (tokenResponse) => {
               access_token = tokenResponse.access_token;
             },
           });
         }
       	function decodeJwtResponse(token) {
               let base64Url = token.split('.')[1]
               let base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
               let jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
                   return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
               }).join(''));
               return JSON.parse(jsonPayload)
           }

           let responsePayload;
           
       	window.handleCredentialResponse = (response) => {
       		  // decodeJwtResponse() is a custom function defined by you
       		  // to decode the credential response.
       		  responsePayload = decodeJwtResponse(response.credential);

       		  console.log("ID: " + responsePayload.sub);
       		  console.log('Full Name: ' + responsePayload.name);
       		  console.log('Given Name: ' + responsePayload.given_name);
       		  console.log('Family Name: ' + responsePayload.family_name);
       		  console.log("Image URL: " + responsePayload.picture);
       		  console.log("Email: " + responsePayload.email);
       		  if('${success}' == null || '${success}' == ''){
   	    		  if('${invalidEmail}' == null || '${invalidEmail}' == ''){
   	    			  $("#email_id").val(responsePayload.email);
   	    			  $("#user_name").val(responsePayload.name);
   	    			  $("#profileImg").val(responsePayload.picture);
   	    			  $("#gToken").val(responsePayload.sub);
   		    		  $("#loginForm").submit();
   	    		  }else{
   	    			 alert(profile.getEmail()+" do not have access to login. Please try with registered mail account (or) contact to admin.");
   	    			 signOut();
   			      }
   		      }else if('${success}' == 'Successfully logged out'){
   		    	  if('${invalidEmail}' == null || '${invalidEmail}' == ''){
   		    		  $("#email_id").val(responsePayload.email);
   	    			  $("#user_name").val(responsePayload.name);
   	    			  $("#profileImg").val(responsePayload.picture);
   	    			  $("#gToken").val(responsePayload.sub);
   		    		  $("#loginForm").submit();
   	    		  }
   		      }else{
   			      signOut();
   		      }
       		}
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

<!-- Mirrored from lineone.piniastudio.com/pages-login-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:52 GMT -->
</html>
