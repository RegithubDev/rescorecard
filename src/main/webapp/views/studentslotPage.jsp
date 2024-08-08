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
            <li>Book TimeSlot for the Course</li>
          </ul>
        </div>
        <div class="flex flex-col items-center justify-between space-y-4 py-5 sm:flex-row sm:space-y-0 lg:py-6">
          <div class="flex items-center space-x-1">
      
            <h2 class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-50">
            Book TimeSlot for the ${courseDetails.course_name }  
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
            <span  class="btn min-w-[7rem] bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90
             dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-info-focus/90"  style="
    position: fixed;
    z-index: 9;
    left: 79%;
    top: 20%;
"> 
           <span id="currency"> </span> &nbsp; <i class="fa-solid fa-credit-card"></i>&nbsp; Credits Available
            </span> 
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
                        <span>Course Details</span>
                      </button>
                
                    </div>
                  </div>
                </div>
                <div class="tab-content p-4 sm:p-5">
                  <div class="space-y-5">
                
                   <div class="grid grid-cols-1 gap-4 sm:grid-cols-3">
                    <label class="mt-1 flex -space-x-px">
                    
                    <span class="font-medium text-slate-600 dark:text-navy-100"></span>
                      <span
                      class="form-input w-full rounded-lg bg-slate-150 px-3 py-2 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                      ><b>${courseDetails.course_name }</b> </span>
                  </label>
                  <label class="mt-1 flex -space-x-px">
                    <span class="font-medium text-slate-600 dark:text-navy-100"></span>
                      <span 
                      class="form-input w-full rounded-lg bg-slate-150 px-3 py-2 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                       > <b>${courseDetails.hours }</b></span>
                        <span class="flex items-center justify-center rounded-r-lg border border-slate-300 px-3.5 font-inter dark:border-navy-450">
                      <span>Hours</span>
                    </span>
                  </label>
                     <label class="mt-1 flex -space-x-px">
                    
                    <span class="font-medium text-slate-600 dark:text-navy-100"></span>
                      <span
                      class="form-input w-full rounded-lg bg-slate-150 px-3 py-2 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                      >Price : <b>${courseDetails.course_cost } Rs</b> <br> Discount : <b>${courseDetails.discount } %</b><br> Discount : <b>${courseDetails.price_after_discount } Rs</b></span>
                  </label>
                    </div>
                            <div class="grid grid-cols-1 gap-4 sm:grid-cols-1">
                   
           
                      <label class="block"> 
					    <textarea
					      rows="4"
					      name="description" id="description"
					      placeholder="Course Description . . . "
					      class="form-textarea w-full resize-none rounded-lg bg-slate-150 p-2.5 placeholder:text-slate-400 dark:bg-navy-900 dark:placeholder:text-navy-300"
					    >Description : ${courseDetails.description }</textarea>
					  <span id="descriptionError" class="error-msg" ></span>
					  </label>
                    </div>
                        
                    <div class="card px-4 pb-4 sm:px-5">
			            <div class="my-3 flex h-8 items-center justify-between">
			                <c:if test="${empty datesList }">
			                No Dates Available!
			                </c:if>
			                <c:if test="${not empty datesList }">
			                 <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
			                Available Dates :
			              </h2>
			                </c:if>
			             
			            </div>
			              <c:if test="${empty datesList }">
								 <i class="fa-solid fa-file fa-fade" style="--fa-animation-duration: 2s; --fa-fade-opacity: 0.6;" > Oops no Classes Available Currently.... Please try again later</i>
						      </c:if>
			            <div class="card px-4 pb-4 sm:px-5">
			             <c:if test="${empty datesList }">
			                 <p>
			              </p>
			                </c:if>
			                <c:if test="${not empty datesList }">
			                 <p>
			                Pick a Date to book slot
			              </p>
			                </c:if>
			             
			              <div class="mt-5 grid grid-cols-2 place-items-start gap-6 sm:grid-cols-3" id="checkboxID">
			   				<c:forEach var="obj" items="${datesList}">
					                <label class="inline-flex items-center space-x-2">
					                  <input id="${obj.slot_dateOG }" value="${obj.slot_dateOG }"
					                   onchange="setPriceMax('${obj.slot_dateOG }');getSLotsForDate('${obj.slot_date }','${obj.slot_dateOG }','${obj.course_id }');" class="form-checkbox forcheckbox is-basic h-5 w-5 rounded border-slate-400/70 checked:!border-success checked:bg-success hover:!border-success focus:!border-success dark:border-navy-400" type="checkbox">
					                  <span>${obj.slot_date }</span>
					                </label>
			                 </c:forEach>
					   </div>
			            </div>
			          </div>
			            <div class="card px-4 pb-4 sm:px-5" id="slotsSpace" >
			            
			          </div>
			          	<div class="mt-6 text-right w-full ">
					        <a href="#" onclick="submitToBuy();"  class="btn space-x-2 bg-primary px-0 m-3 font-medium text-white hover:bg-primary-focus focus:bg-primary-focus 
					                active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90">
					           <span>Book Selected Slots</span>
					          </a>
					      </div>
                  </div> 
                </div>
              </div>
            </div>
          </div>
     
        </div>
        </form>
      </main>
    </div>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>
    <form action="<%=request.getContextPath()%>/add-to-cart" name="addToCart" id="addToCart"  method="post">	
      
         <input type="hidden" name="course_id" id="course_id" />
        <input type="hidden" name="user_id" id="user_id" />
        <input type="hidden" name="time_and_date" id="time_and_date1" />
        <input type="hidden" name="price" id="price" />
	</form>
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
    	  $('#currency').html('${sessionScope.CREDITS }')
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


	    var checkedValues = [];

	 // Handle click event on checkboxes
/* 	 $('#checkboxID input[type="checkbox"]').click(function() {
	   var currentValue = $(this).val();
	   
	   if ($(this).is(':checked')) {
	     // Add the current value to the array of checked values
	    
	     var index = checkedValues.indexOf(currentValue);
	     if (index !== -1) {
	       checkedValues.splice(index, 1);
	     }
	   }
	   var checkedValuesString = checkedValues.join(', ');
	   
	   // Display the comma-separated list in a div
	   console.log(checkedValuesString +"aaaaa");
	   checkedValues.push(currentValue);
	   checkedValuesString = checkedValues.join(', ');
	   console.log(checkedValuesString+"bbbb");
	 }); */
	 var currnecy = '${courseDetails.price_after_discount }';
	 var hours = '${courseDetails.hours }';
	 var credits = '${sessionScope.CREDITS }';
	    	function getSLotsForDate(slot_dateOG,slot_date,course_id){
	    		var OGslot = slot_date;

	    		$(".forcheckbox").each(function(){ 
	    		    if ($(this).prop('checked')==true){ 
	    		    	slot_date = $(this).val();
			 	        if ($.trim(slot_date) != "" && $.trim(course_id) != "") {
			 	        	var myParams = { slot_date: slot_date,course_id : course_id };
			 	            $.ajax({
			 	                url: "<%=request.getContextPath()%>/ajax/getSlotsByDateList",
			 	                data: myParams, cache: false,async: false,
			 	                success: function (data) {
			 	                    if (data.length > 0) {
			 	                    	slot_date  = slot_date.replace(/-/g, '_');
			 	                    	  //$('#slotsSpace').children('#'+slot_date+'div').remove();
			 		                    	//$('#slotsSpace').children('#'+slot_date+'btn').remove();
			 		                    	  var idval = "'"+slot_date+"'";
			 		                    	 var divContent = $('#'+slot_date+'div').text();
										if (divContent.trim() === '') {
		 		                        	
			 	                    	 $("#slotsSpace").append('<div id="'+slot_date+'div"><div class="my-3 flex h-8 items-center justify-between" ><h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">'+
					 	 			                'Available Slots on - '+slot_dateOG+' </h2></div><div class="card px-4 pb-4 sm:px-5"><p>Select Slots and Click Add to Cart</p>'+
					 	 			             '<div class="mt-2 grid grid-cols-2 place-items-start gap-6 sm:grid-cols-3" id="'+slot_date+'slot"></div> </div>'+
					 	 			        '<input type="hidden" id="'+slot_date+'Val" name="time_and_dates" value="" />'+
					 	 			      '</div>');
			 	                        $.each(data, function (i, val) {
			 	                        	 var dataValue = val.time_slot;
			 	                        	var chekced = '';
			 	                        	$(".slotCheckbox").each(function(){ 
			 	                        		chekced = '';
			 	                        		if ($(this).prop('checked')==true){ 
			 	                        			chekced = 'chekced';
			 	                        		}
			 	                        	});
			 	                        	  var idval1 = "'"+slot_date+"'";
			 	                        	  var idval2 = "'"+i+slot_date+'timeSlot'+"'";
			 	                        	 var idval3 = idval1 +','+idval2
			 	                        	$("#"+slot_date+'slot').append('<label class="inline-flex items-center space-x-2"><input id="'+i+slot_date+'timeSlot" '+chekced+' onchange="setPricePerSLot('+idval3+');addToCArt('+idval+');" value="'+val.time_slot+'"  class="form-checkbox slotCheckbox is-basic h-5 w-5 rounded border-slate-400/70 checked:!border-success checked:bg-success hover:!border-success focus:!border-success dark:border-navy-400" type="checkbox"><span>'+val.time_slot+'</span></label>');
			 	                        });
			 	                    }
			 	                    }else{ 
			 	                    	$('#slotsSpace').children('span').remove();
			 	                    	alert('😐 Opps, No Slots Available for Selected Date! Please Try Selecting Another Date, Thank you 😊.')
			 	                    	$('#'+slot_date).prop("checked", false);
			 	                    } 
			 	                },error: function (jqXHR, exception) {
			 	    	   			      $(".page-loader").hide();
			 	       	          	  getErrorMessage(jqXHR, exception); 
			 	       	     	  }
			 	            });
			 	        } 
	    		    } else if ($(this).prop('checked')!=true){ 
	    		    		slot_date = $(this).val().replace(/-/g, '_');;
	    		    	    $('#slotsSpace').children('#'+slot_date+'div').remove();
	                    	$('#slotsSpace').children('#'+slot_date+'btn').remove();
	                    	$("#"+slot_date+'slot').children('label').remove();
	    		    }
	    		}); 
	    	} 
	    	
	    	function addToCArt(slot_date,time_slot){
	    		var checkedValues = $('#'+slot_date+'slot input[type="checkbox"]:checked').map(function() {
	    			  return $(this).val();
	    			}).get().join('^');
		    		checkedValues = slot_date+"#"+checkedValues;
		    		$('#'+slot_date+'Val').val(checkedValues);
		    	    console.log(checkedValues); 
	    	}
	    	var count = $('#slotsSpace input[type="checkbox"]:checked').length;
	    	function setPricePerSLot(slot_date,time_slot){
	    		
	    		if(credits > 0){
	    			var priceBySlot = Number(currnecy/hours);
		    		console.log(priceBySlot)
		    			if ( $('#'+time_slot).is(":checked")){ 
		    				count = $('#slotsSpace input[type="checkbox"]:checked').length;
		    				var creditNow =  credits- Number(priceBySlot)
		    	    		credits = creditNow;
		    				if(credits < 0){
		    					credits = $('#currency').html();
		    	    			alert("Opps! Your Balance is Low, Please TopUp to Continue!")
		    	    			 $('#'+time_slot).prop("checked", false);
		    	    		}else{
			    	    		$('#currency').html(creditNow.toFixed(2))
		    	    		}
		    			}else{
		    				count = $('#slotsSpace input[type="checkbox"]:checked').length;
		    				var creditNow =  Number(credits)+ Number(priceBySlot);
		    	    		credits = creditNow;
		    	    		if(credits < 0){
		    	    			credits = $('#currency').html();
		    	    			alert("Opps! Your Balance is Low, Please TopUp to Continue!")
		    	    			 $('#'+time_slot).prop("checked", false);
		    	    		}else{
			    	    		$('#currency').html(creditNow.toFixed(2))
		    	    		}
		    			}
		    		console.log(count) 
	    		}else{
	    			alert("Opps! Your Balance is Low, Please TopUp to Continue!")
	    			$('#'+time_slot).prop("checked", false);
	    		}
	    	}
	    	
	    	function setPriceMax(slot_date){
	    		var priceBySlot = Number(currnecy/hours);
    			slot_date = slot_date.replace(/-/g, '_');
    			var count1 = $('#'+slot_date+'slot input[type="checkbox"]:checked').length;
    			if(count1 > 0){
	    			var creditNow =  Number(credits)+ Number(priceBySlot*count1);
		    		credits = creditNow;
		    		if(credits < 0){
		    			credits = $('#currency').html();
		    			alert("Opps! Your Balance is Low, Please TopUp to Continue!")
		    			 $('#'+time_slot).prop("checked", false);
		    		}else{
	    	    		$('#currency').html(creditNow.toFixed(2))
		    		}
		    	}
    		}
    		
	    	function submitToBuy(){
	    		if('${sessionScope.CREDITS }' != credits){
	    			var price = Number('${sessionScope.CREDITS }') -  Number(credits);
		    		var time_and_date = $('input[name="time_and_dates"]').map(function() {
		    	          return this.value;
		    	        }).get().join(', ');
		    	        alert('Values: ' + time_and_date);
			     	 $("#user_id").val('${sessionScope.USER_ID }');
			     	 $("#course_id").val('${courseDetails.course_id}');
			     	 $("#time_and_date1").val(time_and_date);
			     	 $("#price").val(price);
			     	 $("#addToCart ").submit();
	    		}else{
	    			alert("No Slots Selected! Please select and try again.")
	    		}
	    		
	    	}
    		
    </script>
  </body>

<!-- Mirrored from lineone.piniastudio.com/dashboards-authors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:25 GMT -->
</html>
