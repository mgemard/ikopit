


    
   	 
   //Use it like: "5678".toDHMS();
   String.prototype.toDHMS = function () {
   	 if (this == 0) return this;
	   var result ="";
	   var sec_num = parseInt(this, 10); // don't forget the second param
	   var days    = Math.floor(sec_num / 86400);
	   var hours   = Math.floor((sec_num-(days*86400)) / 3600);
	   var minutes = Math.floor((sec_num - (days*86400)-(hours * 3600)) / 60);
	   var seconds = sec_num -(days*86400)- (hours * 3600) - (minutes * 60);
	
	   var first = true;
	   if (days !=0) {
	   	result += days + "<fmt:message key="days" bundle="${settings}"/> ";
	   	first = false;
	   }
	
	   if (!first || (first && hours !=0)) {
	   	if (hours   < 10) {hours   = "0"+hours;}
	   	result += hours + ":";
	   	first = false;
	   }
	   if (!first || (first && minutes !=0)) {
	   	if (minutes   < 10) {minutes   = "0"+minutes;}
	   	result += minutes + ":";
	   	first = false;
	   }
	   if (!first || (first && seconds !=0)) {
	   	if (seconds   < 10) {seconds   = "0"+seconds;}
	   	result += seconds;
	   	first = false;
	   }
	
	   return result;
   }
	    
   	 $("#show-hide-slider").click(function () {
   		 $(".slider-content").toggle('slow');
   	
   		 });


    
    
    $("#step-down-society").click(function () {
    	 document.getElementById("rangeinput_society").stepUp(-1);
    	 var societyValue = $("#rangeinput_society").val();
		   $("#rangevalue_society").val( $("#rangeinput_society").val() );
		   settings.society = societyValue;
		   updateCookies();
    	
    });
    $("#step-up-society").click(function () {
    	 document.getElementById("rangeinput_society").stepUp(1);
    	 var societyValue = $("#rangeinput_society").val();
		   $("#rangevalue_society").val( $("#rangeinput_society").val() );
		   settings.society = societyValue;
		   updateCookies();
    	
    });
    $("#step-down-war").click(function () {
    	 document.getElementById("rangeinput_war").stepUp(-1);
    	 var warValue = $("#rangeinput_war").val();
		   $("#rangevalue_war").val( $("#rangeinput_war").val() );
		   settings.war = warValue;
		   updateCookies();
    	
    });
    $("#step-up-war").click(function () {
    	 document.getElementById("rangeinput_war").stepUp(1);
    	 var warValue = $("#rangeinput_war").val();
		   $("#rangevalue_war").val( $("#rangeinput_war").val() );
		   settings.war = warValue;
		   updateCookies();
    	
    });
    $("#step-down-construction").click(function () {
    	 document.getElementById("rangeinput_construction").stepUp(-1);
    	 var constructionValue = $("#rangeinput_construction").val();
		   $("#rangevalue_construction").val( $("#rangeinput_construction").val() );
		   settings.construction = constructionValue;
		   updateCookies();
    	
    });
    $("#step-up-construction").click(function () {
    	 document.getElementById("rangeinput_construction").stepUp(1);
    	 var constructionValue = $("#rangeinput_construction").val();
		   $("#rangevalue_construction").val( $("#rangeinput_construction").val() );
		   settings.construction = constructionValue;
		   updateCookies();
    });
    $("#step-down-economy").click(function () {
    	 document.getElementById("rangeinput_economy").stepUp(-1);
    	 
	    	 var economyValue = $("#rangeinput_economy").val();
			   $("#rangevalue_economy").val( $("#rangeinput_economy").val() );
			   settings.economy = economyValue;
			   updateCookies();
			   
			
    	
    });
    $("#step-up-economy").click(function () {
    	 document.getElementById("rangeinput_economy").stepUp(1);
    	 var economyValue = $("#rangeinput_economy").val();
		   $("#rangevalue_economy").val( $("#rangeinput_economy").val() );
		   settings.economy = economyValue;
		   updateCookies();
    	
    });
    
    
    
    
    $("#rangeinput_society").change(function () {
    	settings.society = $("#rangeinput_society").val();
    	updateCookies();
    });
    $("#rangeinput_war").change(function () {
    	settings.war = $("#rangeinput_war").val();
    	updateCookies();
    });
    $("#rangeinput_construction").change(function () {
    	settings.construction = $("#rangeinput_construction").val();
    	updateCookies();
    });
    $("#rangeinput_economy").change(function () {
    	settings.economy = $("#rangeinput_economy").val();
    	updateCookies();
    });
    
    
    
    
    var settings = Cookies.getJSON('settings');
    if (!!settings) {
    	 $("#rangeinput_society").val(settings.society);
		   $("#rangevalue_society").val(settings.society);
		   
    	 $("#rangeinput_war").val(settings.war);
		   $("#rangevalue_war").val(settings.war);
		   
		   $("#rangeinput_construction").val(settings.construction);
		   $("#rangevalue_construction").val(settings.construction);
		   
		   $("#rangeinput_economy").val(settings.economy);
		   $("#rangevalue_economy").val(settings.economy);
    }
    else {
    	settings = {"society": 0, "war": 0, "construction": 0, "economy": 0};
    }
    

    
    
    
    function updateCookies() {
    console.log(settings);
    	Cookies.set('settings', settings);
    }
    
    
    
	    
	    