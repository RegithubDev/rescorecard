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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
    @use postcss-nested;

:root {
  --send-bg: #0B93F6;
  --send-color: white;
  --receive-bg: #E5E5EA;
  --receive-text: black;
  --page-background: white;
}
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
    left: 4rem;
}
.chat-messages {
    background-color: rgba(255, 255, 255, 0.5); /* Transparent white background */
    backdrop-filter: blur(5px); /* Apply a blur effect */
    overflow-y: auto; /* Enable vertical scrolling */
    max-height: 300px; /* Set maximum height to enable scrolling */
}

.chat-message .message {
    word-wrap: break-word; /* Allow long messages to wrap */
}
    
    .chat-container {
    position: fixed;
        z-index: 1;
    bottom: 2px;
    right: 20px;
    width: 402px;
    border: 1px solid #ccc;
    border-radius: 5px;
    overflow: hidden;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.chat-header {
    background-color: #008489;
    color: #fff;
    height:3rem;
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
  .chat-message {
    margin: 10px 0;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
  }

  .json-key {
    color: orange;
  }

  .json-string,
  .json-number,
  .json-null,
  .json-boolean {
    color: green;
  }

  .json-special-key {
    color: orange;
  }

  .json-special-value {
    color: green;
  }

  pre {
    white-space: pre-wrap; /* Allows wrapping of long lines */
    word-wrap: break-word; /* Allows breaking of long words */
  }
#chat-container {
    width: 50%;
    margin: 0 auto;
  }

  #chat-messages {
    border: 1px solid #ccc;
    padding: 10px;
    height: 300px;
    overflow-y: scroll;
    
  }

  .chat-message {
    margin: 10px 0;
    padding: 10px;
    border-radius: 5px;
    background-color: #e0e0e0;
  }

  .received {
    background-color: #d0ffd0;
  }

  .json-key {
    color: orange;
  }

  .json-string {
    color: green;
  }

  .json-special-key {
    color: orange;
  }

  .json-special-value {
    color: green;
  }

  .scroll-btn {
    margin: 5px;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  button:hover {
    background-color: #0056b3;
  }

.chat-container{
font-family: "Helvetica Neue", Helvetica, sans-serif;
	font-size: 15px;
	font-weight: normal;
	margin: 1px auto;
  display: flex;
  flex-direction: column;
  }
div .chat-message{
  max-width: 255px;
  word-wrap: break-word;
  margin-bottom: 12px;
  line-height: 24px;
  position: relative;
	padding: 10px 20px;
  border-radius: 25px;
  
  &:before, &:after {
    content: "";
		position: absolute;
    bottom: 0;
    height: 25px;
  }
}
.sent {
   	color: var(--send-color); 
	background: var(--send-bg);
	align-self: flex-end;
		
	&:before {
		right: -7px;
    width: 20px;
    background-color: var(--send-bg);
		border-bottom-left-radius: 16px 14px;
	}

	&:after {
		right: -26px;
    width: 26px;
    background-color: var(--page-background);
		border-bottom-left-radius: 10px;
	}
}

.received {
  background: var(--receive-bg);
	color: black;
  align-self: flex-start;
		
	&:before {
		left: -7px;
    width: 20px;
    background-color: var(--receive-bg);
		border-bottom-right-radius: 16px 14px;
	}

	&:after {
		left: -26px;
    width: 26px;
    background-color: var(--page-background);
		border-bottom-right-radius: 10px;
	}
}


.scroll-btn-container {
      position: absolute;
    top: 91px;
    right: 18px;
    display: flex;
    flex-direction: inherit;
    justify-content: space-between;
}

.scroll-btn {
       opacity: 0.5;
    background-color: #453a3a;
    border: none;
    cursor: pointer;
    transition: opacity 0.3s;
}

.scroll-btn:hover {
    opacity: 1;
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
   
  <div class="chat-container">
    <div class="chat-header" onclick="minimizeChat()">
        <i class="fa-solid fa-robot"></i> 
        <span class="close-btn" onclick="minimizeChat()"><i class="fa-solid fa-minimize"></i></span>
    </div>
    <div id="chat-messages" class="chat-messages">
        <div class="chat-message received">
            <span class="message"><b>Enter PO no </b>:</span>
        </div>
        <!-- Previous chat messages go here -->
    </div>
    <div class="scroll-btn-container">
        <button class="scroll-btn top" onclick="scrollToTop()"><i class="fa fa-chevron-up"></i></button>
        <button class="scroll-btn bottom" onclick="scrollToBottom()"><i class="fa fa-chevron-down"></i></button>
    </div>
    <div class="chat-input">
        <input type="text" id="user-input" placeholder="Type Here...">
        <div id="odata-data"></div>
        <button onclick="sendMessage()"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
    </div>
</div>


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

   

    	function minimizeChat() {
    	    var chatContainer = document.querySelector('.chat-container');
    	    chatContainer.style.display = 'none';

    	    var minimizedContainer = document.createElement('div');
    	    minimizedContainer.className = 'minimized-chat-container';
    	    minimizedContainer.innerHTML = '<span onclick="restoreChat()"><img class="h-11 w-11 transition-transform duration-500 ease-in-out hover:rotate-[360deg]" src="https://www.pngitem.com/pimgs/m/148-1489584_chat-png-icon-free-download-searchpng-blue-chat.png" alt="logo"></span>';
    	    document.body.appendChild(minimizedContainer);
    	}

    	function restoreChat() {
    	    var chatContainer = document.querySelector('.chat-container');
    	    var minimizedContainer = document.querySelector('.minimized-chat-container');
    	    document.body.removeChild(minimizedContainer);
    	    chatContainer.style.display = 'block';
    	}

     function sendMessage() {
    	    var userInput = document.getElementById('user-input').value;
    	    if (userInput.trim() !== '') {
    	        var chatMessages = document.getElementById('chat-messages');
    	        var newMessage = document.createElement('div'); 
    	        newMessage.className = 'chat-message sent';
    	        newMessage.innerHTML = '<span class="message">' + userInput + '</span>';
    	        chatMessages.appendChild(newMessage);
    	        document.getElementById('user-input').value = '';

    	        // Simulate reply from server
    	        setTimeout(function() {
    	            receiveMessage(userInput);
    	        }, 1000);
    	    }
    	}

     function receiveMessage(val) {
    	 var PR_Number = val;
    	 var chatMessages = document.getElementById('chat-messages');
    	 var newMessage = document.createElement('div');
    	 newMessage.className = 'chat-message received';
    	 newMessage.innerHTML = '<span class="message">' + val + '</span>';

    	 if ($.trim(PR_Number) !== "") {
    	   var myParams = { PR_Number: PR_Number };
    	   $.ajax({
    	     url: "<%=request.getContextPath()%>/reone/ajax/getoDataInChat",
    	     data: myParams,
    	     success: function (data) {
    	    	 if (data.length > 0) {
		    	       formatDates(data); // Convert dates before highlighting
		    	       var formattedJson = syntaxHighlight(data);
		    	       var messageElement = document.createElement('div');
		    	       messageElement.className = 'chat-message received';
		    	       messageElement.innerHTML = '<pre>' + formattedJson + '</pre>';
		    	       chatMessages.appendChild(messageElement);
    	    	 }else{
    	    		 
    	    		 var messageElement = document.createElement('div');
    	    		 messageElement.className = 'chat-message received';
    	    	     messageElement.innerHTML = '<pre> ['+val+'] is not a valid PO Number, Please enter a valid one </pre>';
    	    	     chatMessages.appendChild(messageElement);
                 }
    	     },
    	     error: function (jqXHR, exception) {
    	       $(".page-loader").hide();
    	       getErrorMessage(jqXHR, exception);
    	     }
    	   });
    	 }
	    }
     
     function syntaxHighlight(json) {
    	  if (typeof json !== 'string') {
    	    json = JSON.stringify(json, undefined, 2);
    	  }
    	  json = json.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
    	  json = json.replace(/[\[\]{}]/g, ''); // Remove square brackets and curly braces
    	  return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|\b-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function (match) {
    	    var cls = 'json-number';
    	    if (/^"/.test(match)) {
    	      if (/:$/.test(match)) {
    	        cls = 'json-key';
    	        if (match === '"Buyer_Acceptedon":') {
    	          cls = 'json-special-key';
    	        }
    	      } else {
    	        cls = 'json-string';
    	        if (match.includes('"08-04-2023"')) {
    	          cls = 'json-special-value';
    	        }
    	      }
    	    } else if (/true|false/.test(match)) {
    	      cls = 'json-boolean';
    	    } else if (/null/.test(match)) {
    	      cls = 'json-null';
    	    }
    	    return '<span class="' + cls + '">' + match + '</span>';
    	  });
    	}

    	function convertSAPDateFormat(sapDate) {
    	  var timestamp = parseInt(sapDate.match(/\/Date\((\d+)\)\//)[1], 10);
    	  var date = new Date(timestamp);
    	  var month = ('0' + (date.getMonth() + 1)).slice(-2);
    	  var day = ('0' + date.getDate()).slice(-2);
    	  var year = date.getFullYear();
    	  return month + '-' + day + '-' + year;
    	}

    	function formatDates(obj) {
    	  for (var key in obj) {
    	    if (obj.hasOwnProperty(key) && typeof obj[key] === 'string' && obj[key].startsWith('/Date(')) {
    	      obj[key] = convertSAPDateFormat(obj[key]);
    	    } else if (typeof obj[key] === 'object') {
    	      formatDates(obj[key]);
    	    }
    	  }
    	}
    	
    	function scrollToTop() {
    	    var chatMessages = document.getElementById('chat-messages');
    	    chatMessages.scrollTop = 0;
    	}

    	// Function to scroll to the bottom of the chat container
    	function scrollToBottom() {
    	    var chatMessages = document.getElementById('chat-messages');
    	    chatMessages.scrollTop = chatMessages.scrollHeight;
    	}
    	document.getElementById("user-input").addEventListener("keypress", function(event) {
    	    if (event.keyCode === 13) {
    	        event.preventDefault(); // Prevent the default Enter key behavior (e.g., new line)
    	        sendMessage();
    	    }
    	}); 

      </script>
  </body>
</html>