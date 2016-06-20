


    
   	 
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
		   settings.society = parseInt(societyValue);
		   updateSettings();
    	
    });
    $("#step-up-society").click(function () {
    	 document.getElementById("rangeinput_society").stepUp(1);
    	 var societyValue = $("#rangeinput_society").val();
		   $("#rangevalue_society").val( $("#rangeinput_society").val() );
		   settings.society = parseInt(societyValue);
		   updateSettings();
    	
    });
    $("#step-down-war").click(function () {
    	 document.getElementById("rangeinput_war").stepUp(-1);
    	 var warValue = $("#rangeinput_war").val();
		   $("#rangevalue_war").val( $("#rangeinput_war").val() );
		   settings.war = parseInt(warValue);
		   updateSettings();
    	
    });
    $("#step-up-war").click(function () {
    	 document.getElementById("rangeinput_war").stepUp(1);
    	 var warValue = $("#rangeinput_war").val();
		   $("#rangevalue_war").val( $("#rangeinput_war").val() );
		   settings.war = parseInt(warValue);
		   updateSettings();
    	
    });
    $("#step-down-construction").click(function () {
    	 document.getElementById("rangeinput_construction").stepUp(-1);
    	 var constructionValue = $("#rangeinput_construction").val();
		   $("#rangevalue_construction").val( $("#rangeinput_construction").val() );
		   settings.construction = parseInt(constructionValue);
		   updateSettings();
    	
    });
    $("#step-up-construction").click(function () {
    	 document.getElementById("rangeinput_construction").stepUp(1);
    	 var constructionValue = $("#rangeinput_construction").val();
		   $("#rangevalue_construction").val( $("#rangeinput_construction").val() );
		   settings.construction = parseInt(constructionValue);
		   updateSettings();
    });
    $("#step-down-economy").click(function () {
    	 document.getElementById("rangeinput_economy").stepUp(-1);
    	 
	    	 var economyValue = $("#rangeinput_economy").val();
			   $("#rangevalue_economy").val( $("#rangeinput_economy").val() );
			   settings.economy = parseInt(economyValue);
			   updateSettings();
			   
			
    	
    });
    $("#step-up-economy").click(function () {
    	 document.getElementById("rangeinput_economy").stepUp(1);
    	 var economyValue = $("#rangeinput_economy").val();
		   $("#rangevalue_economy").val( $("#rangeinput_economy").val() );
		   settings.economy = parseInt(economyValue);
		   updateSettings();
    	
    });
    
    
    
    $("#rangeinput_society").change(function () {
    	settings.society = parseInt($("#rangeinput_society").val());
    	updateSettings();
    });
    $("#rangeinput_war").change(function () {
    	settings.war = parseInt($("#rangeinput_war").val());
    	updateSettings();
    });
    $("#rangeinput_construction").change(function () {
    	settings.construction = parseInt($("#rangeinput_construction").val());
    	updateSettings();
    });
    $("#rangeinput_economy").change(function () {
    	settings.economy = parseInt($("#rangeinput_economy").val());
    	updateSettings();
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
    

    
    
    // we parse the url to set settings 
    
	var url = window.location.href;
	regex = /.*?settings=([a-zA-Z]*)/;
	result = url.match(regex)
	
	if(!!result) {
		var settingsFromUrl = decodeUrl(result[1]);
		
		$("#rangevalue_economy").val(settingsFromUrl.economy);
		document.getElementById("rangeinput_economy").value = settingsFromUrl.economy;
		 
		$("#rangevalue_society").val(settingsFromUrl.society);
		document.getElementById("rangeinput_society").value = settingsFromUrl.society;
		 
		$("#rangevalue_construction").val(settingsFromUrl.construction);
		document.getElementById("rangeinput_construction").value = settingsFromUrl.construction;
		 
    	updateSettings();
    	
	}
    
	
	
    
    // function to write the settings in cookies
    // and update the url
    function updateSettings() {
    console.log(settings);
    
        // write in the cookies
    	Cookies.set('settings', settings);
    	
    	// update the url
    	var string = encodeSettings(settings);
    	
    	window.history.pushState("object or string", "Title", location.pathname + "?settings=" + string);
    }
    
    
    
	
    
    
    // function that convert the settings Object into a String
    function encodeSettings(settings) {
    	var society, const1, const2, eco1, eco2;
    	
		society = 5 + parseInt(settings.society);
		
		const1 = parseInt(settings.construction%26);
		const2 = Math.floor(parseInt(settings.construction/26));
		eco1 = parseInt(settings.economy%26);
		eco2 = Math.floor(parseInt(settings.economy/26));
		
		return String.fromCharCode(97 + society)
			+ String.fromCharCode(97 + const1) + String.fromCharCode(97 + const2)
			+ String.fromCharCode(97 + eco1) + String.fromCharCode(97 + eco2);
		
    }
    
    
    
    // function that decode the setting from the url
    function decodeUrl(url) {
		
		settings.society = ( url[0].charCodeAt(0) - 97 )  - 5;  
		
		
		settings.construction = ( url[1].charCodeAt(0) - 97 ) + ( url[2].charCodeAt(0) - 97 ) * 26;  
		settings.economy = ( url[3].charCodeAt(0) - 97 ) + ( url[4].charCodeAt(0) - 97 ) * 26;  
    	
    	console.log(settings);
    	return settings;
    }
    
    
    
    
	    
	    