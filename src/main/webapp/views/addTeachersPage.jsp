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

    <title>Add Teacher</title>
    <link rel="icon" type="image/png"  href="/courses/resources/images/favicon.png" />

    <!-- CSS Assets -->
    <link rel="stylesheet"  href="/courses/resources/css/app.css" />
<script src="/courses/resources/js/jQuery-v.3.5.min.js"></script>
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
    
    <style>
 .required{
    	color:red;
    }
    .optional{
   		 color:#bab9b9;
        font-size: smaller;
    }
    .error-msg{ color:red;     font-size: smaller;
    font-weight: 600;}
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
.container{
	display: flex;
	flex-flow: column;
	height: 100%;
	align-items: space-around;
	justify-content: center;
}

.userInput{
	display: flex;
	justify-content: center;
}

.input{
	margin: 10px;
	height: 35px;
	width: 65px;
	border: solid 1px;
	border-radius: 5px;
	text-align: center;
	font-family: arimo;
	font-size: 1.2rem;
	background: #eef2f3;

}

h1{
	text-align: center;
	 color: black;
    font-size: 1rem;
    font-weight: 600;
}

.py-10 {
    padding-bottom: 0.5rem important!;
    padding-top: 2.5rem important!;
}
.field-icon {
		  float: right;
		  margin-left: -25px;
		     margin-top: 2%;
		  position: relative;
		  z-index: 2;
		}
		
		.container{
		  padding-top:50px;
		  margin: auto;
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
      <main class="main-content w-full p-6 pb-8">
       <div class="row clearfix">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
												
												
											</div>
										</div>
        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">
          <div class="col-span-12 sm:col-span-10">
            <div class="card p-4 sm:p-5">
              <p class="text-base font-medium text-slate-700 dark:text-navy-100">
               <i class="fas fa-graduation-cap"></i> Add New Teacher
              </p>
                  <div class="mt-4 text-right text-xs+">
              <p class="line-clamp-1">
              </p> 
            </div>
          <form id="addTeacherForm" name="addTeacherForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-user" method="post" role="form" novalidate="novalidate">
            
              <div class="mt-4 space-y-4">
           
               
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                  <label class="block">
                  <span>First Name</span><span class="required"> *</span>
                  <span class="relative mt-1.5 flex">
                    <input class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="First Name" type="text" name="first_name" onkeyup="checkAvailability();" id="first_name">
                    <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                        <i class="far fa-user text-base"></i>
                    </span>
                  </span>
                   <span id="first_nameError" class="error-msg"></span>
                </label>
                   <label class="block">
                  <span>Last Name</span><span class="required"> *</span>
                  <span class="relative mt-1.5 flex">
                    <input class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="Last Name" type="text" name="last_name" onkeyup="checkAvailability();" id="last_name">
                    <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                       <i class="far fa-user text-base"></i>
                    </span>
                    
                  </span>
                   <span id="last_nameError" class="error-msg"></span>
                </label>
                </div>
                
                 <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                  <label class="block">
                   <span>Password</span><span class="required"> *</span>
                     <span class="relative mt-1.5 flex">
              <input class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900 my-valid-class" placeholder="Password" type="password" name="password" id="password" aria-invalid="false">
               <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password "></span>
              
               <span id="passwordError" class="error-msg"></span>
              <span class="pointer-events-none absolute 
                flex h-full w-10 items-center justify-center
                 text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 transition-colors duration-200" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                </svg>
                 </span>
              </span>
            </label>
            
                </div>
                
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                <label class="block">
				    <span>On Board Type</span><span class="required"> *</span>
				    <select class="select2 form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent" name="role" id="role" onchange="chooseTeacherFileds();">
				      <option value="2">Teacher</option>
				    </select>
				     <span id="roleError" class="error-msg"></span>
				  </label>
				<label class="block">
                    <span>Phone number</span><span class="required"> *</span>
                    <span class="relative mt-1.5 flex">
                      <input class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="(99) 99999-99999" type="text" x-input-mask="{numericOnly: true, blocks: [0, 2, 5, 5], delimiters: ['(', ') ', ' ']}" name="phone" id="phone" onkeyup="checkAvailability();">
                      <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                        <i class="fa fa-phone"></i>
                      </span>
                       
                    </span>
                    <span id="phoneError" class="error-msg"></span>
                  </label>
                </div>
                
                <div id="toggleDiv" >
              <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                <label class="block">
				    <span>Adhar Card number</span><span class="required"> *</span>
				   <span class="relative mt-1.5 flex">
                      <input class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="9999 9999 9999 9999" type="text" x-input-mask="{numericOnly: true, blocks: [4, 4, 4, 4], delimiters: [' ', ' ', ' ']}" name="adhar" id="adhar">
                      <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                       <i class="fas fa-id-card"></i>
                      </span>
                       
                    </span>
                    <span id="adharError" class="error-msg"></span>
				  </label>
				<label class="block">
                    <span>PAN number</span><span class="required"> *</span>
                    <span class="relative mt-1.5 flex">
                      <input class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="99999 99999" type="text" x-input-mask="{numericOnly: false, blocks: [ 5, 5], delimiters: [' ', ' ', ' ']}" style="text-transform:uppercase" name="pan_card" id="pan_card">
                      <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                      <i class="fas fa-id-card"></i>
                      </span>
                      
                    </span>
                     <span id="pan_cardError" class="error-msg"></span>
                  </label>
                </div>
                </div>
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-12">
                  <label class="block sm:col-span-8">
                    <span>Email Address</span><span class="required"> *</span>
                    <span class="relative mt-1.5 flex">
                      <input class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent my-error-class" placeholder="Email address" type="text" name="email_id" onkeyup="checkAvailability();uniqueEmail();" id="email_id" aria-invalid="true">
                      <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                        <i class="fa-regular fa-envelope text-base"></i>
                      </span>
                       </span>
                       <span id="email_idError" class="error-msg"><label id="email_id-error" class="my-error-class" for="email_id">Please enter a valid email address.</label></span>
                  </label>
                   <label class="block sm:col-span-2">
                    <span>Gender </span><span class="required"> *</span>
                    <select class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent" name="gender" id="gender" onchange="checkAvailability();">
				      <option value="">select Gender</option>
				      <option value="Male">Male</option>
				      <option value="Female">Female</option>
				      <option value="Other">Other</option>
				    </select>
				     <span id="genderError" class="error-msg"></span>
                  </label>
                  <label class="block sm:col-span-2">
                    <span>Pincode </span><span class="optional"> (optional)</span>
                    <div class="relative mt-1.5 flex">
                      <input class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="Pincode" type="text" name="pin_code" id="pin_code">
                      <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                        <i class="fa-solid fa-map-pin text-base"></i>
                      </span>
                    </div>
                  </label>
                </div>
                <label class="block">
                  <span>Address</span><span class="optional"> (optional)</span>
                  <textarea rows="4" placeholder="Your Address " name="address" id="address" class="form-textarea mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent p-2.5 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"></textarea>
                </label>
        <!--         <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                  <label class="block">
                    <span>City</span>
                    <span class="relative mt-1.5 flex">
                      <input
                        class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                        placeholder="Your City/Town"
                        type="text"
                      />
                      <span
                        class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
                      >
                        <i class="fa-solid fa-city text-base"></i>
                      </span>
                    </span>
                  </label>
                  <label class="block">
                    <span>State</span>
                    <span class="relative mt-1.5 flex">
                      <input
                        class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                        placeholder="Your State"
                        type="text"
                      />
                      <span
                        class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
                      >
                        <i class="fa-solid fa-flag"></i>
                      </span>
                    </span>
                  </label>
                </div> --> 
                <c:if test="${sessionScope.ROLE eq 'Admin' }">
                   <div class=" flex justify-center space-x-2 p-5" x-data="{showModal:false}">
                    <button @click="showModal = true" onclick="addTeacher();" id="btn1" style="background-color: grey;" class="btn space-x-2 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" disabled="disabled">
                 <span id="rollUp">Submit</span>
                </button>
                 </div>
                 </c:if> 
                   <c:if test="${sessionScope.ROLE ne 'Admin' }">
                  <div class=" flex justify-center space-x-2 p-5" x-data="{showModal:false}">
                <button @click="showModal = true" onclick="addUser();" id="btn1" style="background-color: grey;" class="btn space-x-2 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" disabled="disabled">
                 <span id="rollUp">Submit</span>
                </button>
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
      <!--                 <svg xmlns="http://www.w3.org/2000/svg" class="mx-auto inline h-28 w-28 shrink-0 text-success" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                      </svg> -->
						<div class="container">
							<h1>Enter Verification Code</h1>
							<span id="otpField1">Please check your Email for code.</span>
							<div class="userInput"> 
								<input type="text" id="ist" maxlength="1" class="input" onkeyup="clickEvent(this,'sec');">
								<input type="text" id="sec" maxlength="1" class="input" onkeyup="clickEvent(this,'third');"> 
								<input type="text" id="third" maxlength="1" class="input" onkeyup="clickEvent(this,'fourth');">
								<input type="text" id="fourth" maxlength="1" class="input" onkeyup="clickEvent(this,'fourth');">
							</div>
							<a href="#" onclick="generateOTP();">Resend code ?</a>
						</div>
                       <span id="err" class="error-msg"></span>
                <div class="flex justify-center space-x-2 p-5">
                 
                  <button onclick="addTeacher();" disabled="" id="btn" class="btn space-x-2 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90">
                    <span>Submit</span>
                   
                  </button>
                      </div>
                    </div>
                  </div>
                </template>
              </div> </c:if> 
                </div>
              </form>
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
    <script src="/courses/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/courses/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/courses/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/courses/resources/js/dataTables.material.min.js"  ></script>
      <script src="/courses/resources/js/moment-v2.8.4.min.js"  ></script>
       <script src="/reirm/resources/vendors/js/forms/select/select2.full.min.js"></script>
        <script src="/reirm/resources/js/scripts/forms/form-select2.min.js"></script>
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
      $(window).on("load",(function(){
          
         // $('.modal').modal({ dismissible: false });
         }));
      function addUser(){
     	 
	    	var flag = validator.form();
	    	if(flag){ // validation perform
	    		var val = generateOTP();
	    	}
	    }
    function addTeacher(){
	    	var flag = validator.form();
	    	if(flag){ // validation perform
	    		
	    	var adhar = $('#adhar').val();
	    	adhar = adhar.trim();
	    	$('#adhar').val(adhar)
	    	var pan_card = $('#pan_card').val();
	    	pan_card = pan_card.trim();
	    	$('#pan_card').val(pan_card)
		        	document.getElementById("addTeacherForm").submit();	
	    	}else{
	    	}
	    }
    var validator =	$('#addTeacherForm').validate({
	    	 errorClass: "my-error-class",
	    	 validClass: "my-valid-class",
	    	 ignore: ":hidden:not(.select2 form-select)",
	    		    rules: {
	    		 		  "first_name": {
	    			 		required: true
	    			 	  },"last_name": {										
	    			 		required: true
	    			 	  },"phone": {
	    			 		  required: true
	    			 	  },"email_id": {
	    		 		    required: true,
	    	                   email: true
	    			 	  },"role": {										
		    			 		required: true
		  			 	  },"adhar": {										
		    			 		required: true
		  			 	  },"pan_card": {										
		    			 		required: true
		  			 	  },"gender": {
	    		 			required: false
	    		 	  	  }
		  		 	},
		  		    messages: {
		  		 		 "first_name": {
		  				 	required: 'Required',
		  			 	  },"last_name": {
		  			 		required: 'Required'
		  			 	  },"phone": {
		  		 			required: 'Required'
		  		 	  	  },"email_id": {
		  		 			required: 'Required'
		  		 	  	  },"role": {
		  		 			required: 'Required'
		  		 	  	  },"adhar": {
		  		 			required: 'Required'
		  		 	  	  },"pan_card": {
		  		 			required: 'Required'
		  		 	  	  },"gender": {
	    		 			required: 'Required'
	    		 	  	  }
			       		},
	       		errorPlacement:function(error, element){
	       		 	if (element.attr("id") == "first_name" ){
	    				 document.getElementById("first_nameError").innerHTML="";
	    		 		 error.appendTo('#first_nameError');
	    			}else if(element.attr("id") == "last_name" ){
	    			   document.getElementById("last_nameError").innerHTML="";
	    		 	   error.appendTo('#last_nameError');
	    			}else if(element.attr("id") == "phone" ){
	    				document.getElementById("phoneError").innerHTML="";
	    			 	error.appendTo('#phoneError');
	    			}else if(element.attr("id") == "email_id" ){
	    				document.getElementById("email_idError").innerHTML="";
	    			 	error.appendTo('#email_idError');
	    			}else if(element.attr("id") == "role" ){
	    				document.getElementById("roleError").innerHTML="";
	    			 	error.appendTo('#roleError');
	    			}else if(element.attr("id") == "adhar" ){
	    				document.getElementById("adharError").innerHTML="";
	    			 	error.appendTo('#adharError');
	    			}else if(element.attr("id") == "pan_card" ){
	    				document.getElementById("pan_cardError").innerHTML="";
	    			 	error.appendTo('#pan_cardError');
	    			}else if(element.attr("id") == "gender" ){
	    				document.getElementById("genderError").innerHTML="";
	    			 	error.appendTo('#genderError');
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
	    	
	    /* 	$.validator.addMethod("strongePassword", function(value) {
	    	    return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) && /[a-z]/.test(value) && /\d/.test(value) && /[A-Z]/.test(value);
	    	},"The password must contain at least 1 number, at least 1 lower case letter, and at least 1 upper case letter");  */

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
	    	var otp_code = '';
	    	function clickEvent(first,last){
	    		
				if(first.value.length){
					document.getElementById(last).focus();
				}
				var one=$('#ist').val();
				var two =$('#sec').val();
				var three =$('#third').val();
				var four =$('#fourth').val();
				if(one != '' && two != '' && three != '' && four != '' ){
					if(otp_code == one+two+three+four ){
						$('#err').text("")
						$('#btn').css('background-color','#4338ca');
						$('#btn').removeAttr('disabled');
					}else{
						$('#btn').css('background-color','grey');
						$('#btn').attr('disabled','disabled');
						$('#err').text("incorrect Verification code!")
					}
				}
			}
	    	
	    	function generateOTP(){ 
	    		otp_code = '';
	    		var digits = '0123456789';
  		    for (var i = 0; i < 4; i++) {
  		    	otp_code += digits[Math.floor(Math.random() * 10)];
  		    }
  		    $("#otpField").text(otp_code);
  		    var email_id = $('#email_id').val();
	    		 if ($.trim(email_id) !== "") {
	    			 var myParams = {email_id : email_id, otp_code :otp_code };
	    		       $.ajax({
	   	                url: "<%=request.getContextPath()%>/ajax/sendEmailVerification",
	   	                data: myParams, cache: false,async: false,
	   	                success: function (data) {
	   	                    if (data) {
	   	                        	return true;
	   	                    }
	   	                },error: function (jqXHR, exception) {
	   	    	   			      $(".page-loader").hide();
	   	       	          	  getErrorMessage(jqXHR, exception);
	   	       	     	  }
	   	            });
	    			 
	    		 }
	    	}
	    	
	    	function checkAvailability(){
	    		var Fname =  $("#first_name").val();
	    		var Lname =  $("#last_name").val();
	    		var phone =  $("#phone").val();
	    		var email_id =  $("#email_id").val();
	    		var gender =  $("#gender").val();
	    		if(Fname != "" && Lname != "" && phone != "" && email_id != "" && gender != ""){
	    			$('#btn1').css('background-color','#4338ca');
					$('#btn1').removeAttr('disabled');
	    		}else{
	    			$('#btn1').css('background-color','grey');
					$('#btn1').attr('disabled','disabled');
	    		}
	    		
	    	}
	    	 $(".toggle-password").click(function() {

	       	  $(this).toggleClass("fa-eye fa-eye-slash");
	       	  var input = $($(this).attr("toggle"));
	       	  if (input.attr("type") == "password") {
	       	    input.attr("type", "text");
	       	  } else {
	       	    input.attr("type", "password");
	       	  }
	       	});
	    	 
	    	 function uniqueEmail(){
	    		var email_id =  $('#email_id').val();
	    		 if ($.trim(email_id) !== "") {
	    			 var myParams = {email_id : email_id};
	    		       $.ajax({
	   	                url: "<%=request.getContextPath()%>/ajax/checkUniqueEmail",
	   	                data: myParams, cache: false,async: false,
	   	                success: function (data) {
	   	                    if (data.length > 0) {
	   	                        	$('#email_idError').html("Email Already Registered!")
	   	                        	$('#btn1').css('background-color','grey');
	   	     						$('#btn1').attr('disabled','disabled');
	   	                    }else{
	   	                    	$('#email_idError').html("")
	   	                    	$('#btn1').css('background-color','#4338ca');
	   	 						$('#btn1').removeAttr('disabled');
	   	 					    checkAvailability();
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

<!-- Mirrored from lineone.piniastudio.com/dashboards-authors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:25 GMT -->
</html>
