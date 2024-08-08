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

    <title>
	     <c:if test="${action eq 'edit'}">Update Course </c:if>
		 <c:if test="${action eq 'add'}"> Add Course </c:if>   
   </title>
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
    .mdl-grid{
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
	} 
	.dt-table{
	display: block !important;
	height: 100%;
	}
	 .error-msg{ color:red;     font-size: smaller;
    font-weight: 600;}
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
             <div class="flex items-center space-x-4 py-5 lg:py-6 p-6">
          <h2 class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
            ${courseDetails.course_name }
          </h2>
          <div class="hidden h-full py-1 sm:flex">
            <div class="h-full w-px bg-slate-300 dark:bg-navy-600"></div>
          </div>
          <ul class="hidden flex-wrap items-center space-x-2 sm:flex">
            <li class="flex items-center space-x-2">
              <a class="text-primary transition-colors hover:text-primary-focus dark:text-accent-light dark:hover:text-accent" href="<%=request.getContextPath() %>/home">Dashboard</a>
              <svg x-ignore="" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
              </svg>
            </li>
            <li>Update TimeSlot for Course</li>
          </ul>
        </div>
        <div class="flex flex-col items-center justify-between space-y-4 py-5 sm:flex-row sm:space-y-0 lg:py-6">
          <div class="flex items-center space-x-1">
      
            <h2 class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-50">
             Update Date and Time Slots For The ${courseDetails.course_name } 
            </h2>
          </div> 
          <div class="flex justify-center space-x-2">
          
         
          
           <c:if test="${action eq 'edit'}">
             <a href="<%=request.getContextPath() %>/update-course-form" class="btn min-w-[7rem] border border-slate-300 font-medium text-slate-700 hover:bg-slate-150 focus:bg-slate-150 active:bg-slate-150/80 dark:border-navy-450 dark:text-navy-100 dark:hover:bg-navy-500 dark:focus:bg-navy-500 dark:active:bg-navy-500/90">
             <i class="fa fa-refresh" aria-hidden="true"></i>&nbsp;reset
            </a> 
             </c:if>
              <c:if test="${action eq 'add'}">
             <a href="<%=request.getContextPath() %>/add-new-course" class="btn min-w-[7rem] border border-slate-300 font-medium text-slate-700 hover:bg-slate-150 focus:bg-slate-150 active:bg-slate-150/80 dark:border-navy-450 dark:text-navy-100 dark:hover:bg-navy-500 dark:focus:bg-navy-500 dark:active:bg-navy-500/90">
             <i class="fa fa-refresh" aria-hidden="true"></i>&nbsp;reset
            </a> 
             </c:if>
            <button onclick="addCourse();" class="btn min-w-[7rem] bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-info-focus/90"> 
             <i class="fas fa-save"></i>&nbsp; Save
            </button>
          </div>
        </div>
      <form id="addCourseForm" name="addCourseForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-course-time-slots" method="post" class="form-horizontal" role="form">
        
        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">
          <div class="col-span-12 lg:col-span-12">
            <div class="card">
              <div class="tabs flex flex-col">
                <div class="is-scrollbar-hidden overflow-x-auto">
                  <div class="border-b-2 border-slate-150 dark:border-navy-500">
                    <div class="tabs-list -mb-0.5 flex">
                      <button class="btn h-14 shrink-0 space-x-2 rounded-none border-b-2 border-primary px-4 font-medium text-primary dark:border-accent dark:text-accent-light sm:px-5">
                        <i class="fa-solid fa-layer-group text-base"></i>
                        <span>Details</span>
                      </button>
                     <!--  <button class="btn h-14 shrink-0 space-x-2 rounded-none border-b-2 border-transparent px-4 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100 sm:px-5">
                        <i class="fa-solid fa-tags text-base"></i>
                        <span>Meta Tags</span>
                      </button>
                      <button class="btn h-14 shrink-0 space-x-2 rounded-none border-b-2 border-transparent px-4 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100 sm:px-5">
                        <i class="fa-solid fa-bars-staggered text-base"></i>
                        <span> Keywords </span>
                      </button> -->
                    </div>
                  </div>
                </div>
                <div class="tab-content p-4 sm:p-5">
                  <div class="space-y-5">
                   <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                    <label class="mt-1 flex -space-x-px">
                    
                    <span class="font-medium text-slate-600 dark:text-navy-100"></span>
                      <span
                      class="form-input w-full rounded-lg bg-slate-150 px-3 py-2 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                      >${courseDetails.course_name } </span>
                  </label>
                  <label class="mt-1 flex -space-x-px">
                    <span class="font-medium text-slate-600 dark:text-navy-100"></span>
                      <span 
                      class="form-input w-full rounded-lg bg-slate-150 px-3 py-2 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                       > ${courseDetails.hours }</span>
                        <span class="flex items-center justify-center rounded-r-lg border border-slate-300 px-3.5 font-inter dark:border-navy-450">
                      <span>Hours</span>
                    </span>
                  </label>
                    
                    </div>
                     <div class="mt-4 space-y-4">
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                   <label class="relative flex">
					    <input onchange="getSLotsFroTheDate();" name="slot_date" id="slot_date"
					      x-init="$el._x_flatpickr = flatpickr($el)"
					      class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
					      placeholder="Choose date..."
					      type="text"
					    />
					    <span
					      class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
					    >
					      <svg
					        xmlns="http://www.w3.org/2000/svg"
					        class="h-5 w-5 transition-colors duration-200"
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
					    </span>
					     <span id="slot_dateError" class="error-msg" ></span>
					  </label>
                  
                
                   <label class="block">
				    <span>Select Time Slots Respective to Date</span>
				    <select
				      x-init="$el._tom = new Tom($el)"
				      class="mt-1.5 w-full"
				      multiple name="time_slot" id="time_slot"
				      placeholder="Select time slots"
				      autocomplete="off"
				    >
				     <option value="">Select Slot</option>
				      <c:forEach var="obj" items="${timeslotsLIst}" varStatus="index">
				        <option  value="${obj.time_slot }">${obj.time_slot }</option>
				      </c:forEach>
				    </select>
				     <span id="time_slotError" class="error-msg" ></span>
				  </label>
				  
                </div>
           
                      <span class="font-medium text-slate-600 dark:text-navy-100"></span>
                     <input type="hidden" id="course_id"   name="course_id" value="${courseDetails.course_id }"/>
                      <input type="hidden" id="time_slots"   name="time_slot" value="${courseDetails.time_slot }"/>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
       <%--    <div class="col-span-12 lg:col-span-4">
            <div class="card space-y-5 p-4 sm:p-5">
            <label class="block">
				    <span>Select Teacher</span>
				    <select
				      class="form-select formSelect mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
				     name="course_faculty"
	                id="course_faculty"
	               placeholder="Select Teacher">
				      <option value="">Select Teacher</option>
                <c:forEach var="obj" items="${teachersList}">
					<option value="${obj.user_id }"  <c:if test="${courseDetails.course_faculty eq obj.user_id }" >selected</c:if> > ${obj.user_name }</option>
				</c:forEach>
				    </select>
				  </label>
					   <c:if test="${action eq 'edit'}">
					    <label class="block">
					    <span>Select Status</span>
					    <select
					      class="form-select formSelect mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
					     name="course_status"
		                id="course_status"
		               placeholder="Select Status">
					      <option value="">Select Status</option>
						<option value="Active"  <c:if test="${courseDetails.course_status eq 'Active' }" >selected</c:if> > Active</option>
						<option value="Inactive"  <c:if test="${courseDetails.course_status eq 'Inactive'}" >selected</c:if> > Inactive</option>
					    </select>
				  </label>
				   </c:if>
            </div>
          </div> --%>
        </div>
        </form>
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
    	  var today = new Date();
    	  $("#slot_date").datepicker({ minDate: today });
         }));
      
     
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
	    
	    $("#discount").on('keypress keyup', function(){

            var max = parseInt($(this).attr('max'));
            var min = parseInt($(this).attr('min'));
            var val = $(this).val();

            (val < 1) ? $(this).val(min) : $(this).val();
            (val > 100) ? $(this).val(max) : $(this).val(val);

        });
	    
	    $("#course_cost, #discount").on("input", function() {
	        var originalPrice = parseFloat($("#course_cost").val());
	        var discountPercentage = parseFloat($("#discount").val());
	        if( discountPercentage > 100){
	        	discountPercentage = 100;
	        }
	        var finalPrice = originalPrice - (originalPrice * (discountPercentage / 100));
	        
	        $("#final-price").text(finalPrice.toFixed(2));
	        $("#finalPrice").val(finalPrice.toFixed(0));
	        if(isNaN(finalPrice)){ $("#final-price").text(originalPrice.toFixed(2));  $("#finalPrice").val(originalPrice.toFixed(0));}

	      });
	    
	    function addCourse(){
	    	var flag = validator.form();
	    	if(flag){ // validation perform
		        document.getElementById("addCourseForm").submit();	
	    	}
	    }
	    var validator =	$('#addCourseForm').validate({
	    	 errorClass: "my-error-class",
	    	 validClass: "my-valid-class",
	    	 ignore: ":hidden:not(.select2 form-select)",
	    		    rules: {
	    		 		  "course_name": {
	    			 		required: true
	    			 	  },"course_cost": {										
	    			 		required: true
	    			 	  },"description": {
	    			 		  required: true
	    			 	  }
		  		 	},
		  		    messages: {
		  		 		 "course_name": {
		  				 	required: 'Required',
		  			 	  },"course_cost": {
		  			 		required: 'Required'
		  			 	  },"description": {
		  		 			required: 'Required'
		  		 	  	  }
			       		},
	       		errorPlacement:function(error, element){
	       		 	if (element.attr("id") == "course_name" ){
	    				 document.getElementById("course_nameError").innerHTML="";
	    		 		 error.appendTo('#course_nameError');
	    			}else if(element.attr("id") == "course_cost" ){
	    			   document.getElementById("course_costError").innerHTML="";
	    		 	   error.appendTo('#course_costError');
	    			}else if(element.attr("id") == "description" ){
	    				document.getElementById("descriptionError").innerHTML="";
	    			 	error.appendTo('#descriptionError');
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
	    	
	    	function getSLotsFroTheDate(){
	    		 var slot_date = $("#slot_date").val();
	    		 var course_id = $("#course_id").val();
	    		 $('.ts-control').children('.item').remove();
	 	        if ($.trim(slot_date) != "" && $.trim(course_id) != "") {
	 	        	//$("#time_slot option:not(:first)").remove();
	 	        	var myParams = { slot_date: slot_date,course_id : course_id };
	 	            $.ajax({
	 	                url: "<%=request.getContextPath()%>/ajax/getSlotsByDateList",
	 	                data: myParams, cache: false,async: false,
	 	                success: function (data) {
	 	                	
	 	                    if (data.length > 0) {
	 	                        $.each(data, function (i, val) {
	 	                        	var selected = "";
	 	                        	 console.log(val.time_slot)
	 	                        	 var dataValue = val.time_slot;
	 	                        	 $(".ts-control").append('<div data-value="'+val.time_slot+'" class="item" data-ts-item="">'+val.time_slot+'</div>')
	 	                        });
	 	                    }else{ 
	 	                    	$('.ts-control').children('.item').remove();
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
