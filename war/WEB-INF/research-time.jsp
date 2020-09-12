<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="research_time" var="research_time" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${research_time}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${research_time}"/></title>
        
  	<%@ include file="include/favicon.jsp" %>
  	<%@ include file="include/css.jsp" %>

    <link rel="stylesheet" href="inc/jquery-ui-1.11.4/jquery-ui.css">
    
<style>

.overlay {
  fill: none;
  pointer-events: all;
}



</style>
	</head>
  
  
  
    <body>


<div id="wrap">
  <%@ include file="include/navbar.jsp" %>


 <div class="container bodytext">
 
 


    <div class="row">
    <div class="col-md-10">


<h1><fmt:message key="simulator" bundle="${research_time}"/></h1>






	  <table>
		  <tr>
		    <td><input style="background-color:transparent; width:40px" type="text" id="day"></td>
		    <td style="width:40px;padding:5px;"><fmt:message key="day" bundle="${research_time}"/></td>
		    <td><input style="background-color:transparent; width:40px" type="text" id="hour"></td>
		    <td style="width:40px;padding:5px;"><fmt:message key="hour" bundle="${research_time}"/></td>
		    <td><input style="background-color:transparent; width:40px" type="text" id="minute"></td>
		    <td style="width:40px;padding:5px;"><fmt:message key="minute" bundle="${research_time}"/></td>
		    <td style="padding:0 40 0 40"></td>
		  </tr>
		</table> 
  	
 


<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios1" value="0" checked>
    0% - 2.6%: <fmt:message key="percent_a" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="1">
    2.6% - 5.2%: <fmt:message key="percent_b" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="2">
    5.2% - 11%: <fmt:message key="percent_c" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="3">
    11% - 16%: <fmt:message key="percent_d" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="4">
    16% - 21%: <fmt:message key="percent_e" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="5">
    21% - 26%: <fmt:message key="percent_f" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="6">
    26% - 32%: <fmt:message key="percent_g" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="7">
    32% - 37%: <fmt:message key="percent_h" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="8">
    37% - 42%: <fmt:message key="percent_i" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="9">
    42% - 47%: <fmt:message key="percent_j" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="10">
    47% - 53%: <fmt:message key="percent_k" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="11">
    53% - 58%: <fmt:message key="percent_l" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="12">
    58% - 63%: <fmt:message key="percent_m" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="13">
    63% - 68%: <fmt:message key="percent_n" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="14">
    68% - 74%: <fmt:message key="percent_o" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="15">
    74% - 79%: <fmt:message key="percent_p" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="16">
    79% - 84%: <fmt:message key="percent_q" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="17">
    84% - 89%: <fmt:message key="percent_r" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="18">
    89% - 95%: <fmt:message key="percent_s" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="19">
    95% - 99%: <fmt:message key="percent_t" bundle="${research_time}"/>
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="20">
    99% - 100%: <fmt:message key="percent_u" bundle="${research_time}"/>
  </label>
</div>

</br>
<div>
	<input  type="checkbox" id="show_total">
  <span style="padding:5px;"></span><fmt:message key="show_total" bundle="${research_time}"/></span>
</div>
</br>
<button class="btn btn-default" onclick="evaluateTime()"><fmt:message key="evaluate" bundle="${research_time}"/></button>

</br></br>

<div id="result"></div>

</br></br>



<h1><fmt:message key="difficulty_level" bundle="${research_time}"/></h1>

<table class="table-condensed">
	<tr>
		<td>(1)</td>
		<td><div class="star-research-difficuly" style="width:13px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_a" bundle="${research_time}"/></td>
		<td><fmt:message key="level_a_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(2)</td>
		<td><span class="star-research-difficuly " style="width:26px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_b" bundle="${research_time}"/></td>
		<td><fmt:message key="level_b_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(3)</td>
		<td><span class="star-research-difficuly" style="width:39px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_c" bundle="${research_time}"/></td>
		<td><fmt:message key="level_c_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(4)</td>
		<td><span class="star-research-difficuly" style="width:52px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_d" bundle="${research_time}"/></td>
		<td><fmt:message key="level_d_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(5)</td>
		<td><span class="star-research-difficuly" style="width:65px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_e" bundle="${research_time}"/></td>
		<td><fmt:message key="level_e_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(6)</td>
		<td><span class="star-research-difficuly" style="width:78px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_f" bundle="${research_time}"/></td>
		<td><fmt:message key="level_f_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(7)</td>
		<td><span class="star-research-difficuly" style="width:91px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_g" bundle="${research_time}"/></td>
		<td><fmt:message key="level_g_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(8)</td>
		<td><span class="star-research-difficuly" style="width:104px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_h" bundle="${research_time}"/></td>
		<td><fmt:message key="level_h_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(9)</td>
		<td><span class="star-research-difficuly" style="width:117px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_i" bundle="${research_time}"/></td>
		<td><fmt:message key="level_i_msg" bundle="${research_time}"/></td>
	</tr>
	<tr>
		<td>(10)</td>
		<td><span class="star-research-difficuly" style="width:130px"/>
		<div class="star-research-difficuly-opacity" style="width:130px;"/></td>
		<td><fmt:message key="level_j" bundle="${research_time}"/></td>
		<td><fmt:message key="level_j_msg" bundle="${research_time}"/></td>
	</tr>
</table>

</br></br>


   </div>
   
   

  <div class="col-md-2" style="text-align:center">
  </br></br></br>


</br></br></br></br>

   </div><!-- end col-md -->
   </div><!-- end row -->
   
   
    </div><!-- /.container -->
    

    </div><!-- /.wrap -->
    
</br></br>
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>


    <script src="inc/bootstrap/js/bootstrap.min.js"></script>
    <script>

 var percent=0;
 var percentArray = [0, 0.026, 0.052, 0.11, 0.16, 0.21, 0.26, 0.32, 0.37, 
                     0.42, 0.47, 0.53, 0.58, 0.63, 0.68, 0.74, 
                     0.79, 0.84, 0.89, 0.95, 0.99, 1.00];
 
    
  function evaluateTime() {
   	 var day = $("#day").val() | 0;
   	 var hour = $("#hour").val() | 0;
   	 var min = $("#minute").val() | 0;
   	 
console.log(day, hour, min);
     $("#result").html("");
     
    
   	if (!isNaturalNumber(day) || !isNaturalNumber(hour) || !isNaturalNumber(min)) {
   	 $("#result").append("<div>"+"<fmt:message key="not_number" bundle="${research_time}"/>"+"</div>");
    }
   	else if (day == 0 && hour == 0 && min == 0 && percent == 0) {
   		$("#result").append("<div>"+"<fmt:message key="not_started" bundle="${research_time}"/>"+"</div>");
    }	
    else{
    	var timeMinute = parseInt(day,10)*60*24+parseInt(hour,10)*60+parseInt(min,10);
    	
    	var timeMin, timeMax;
    	if (percent != 0) {
    		timeMax = timeMinute/percentArray[percent];
    	}
    	
    	timeMin = timeMinute/percentArray[parseInt(percent,10)+1];
    	
    	if(!document.getElementById("show_total").checked) {
		    timeMax = timeMax - timeMinute;
		    timeMin = timeMin - timeMinute;
    	}
    	timeMax = timeMax + "";
    	timeMin = timeMin + "";
    	
    	if (percent == 0) {
        	$("#result").append("<div>Min: "+timeMin.toDHM()+"</div>");
        	$("#result").append("<div>Max: <fmt:message key="not_finished" bundle="${research_time}"/></div>");
    	}
    	else if(percent == 20) {
        	$("#result").append("<div>Min: <fmt:message key="finished_now" bundle="${research_time}"/></div>");
        	$("#result").append("<div>Max: "+timeMax.toDHM()+"</div>");
    	}
    	else {
    		$("#result").append("<div>Min: "+timeMin.toDHM()+"</div>");
        	$("#result").append("<div>Max: "+timeMax.toDHM()+"</div>");
    	}
    	
    		
    }
   	
   	 
  }
    
  function isNaturalNumber(n) {
	    n = n.toString(); // force the value incase it is not
	    var n1 = Math.abs(n),
	        n2 = parseInt(n, 10);
	    return !isNaN(n1) && n2 === n1 && n1.toString() === n;
	}
 
//Use it like: "5678".toDHM();
  String.prototype.toDHM = function () {
  	var result ="";
    var min_num = parseInt(this, 10); // don't forget the second param
    var days    = Math.floor(min_num / (24*60));
    var hours   = Math.floor((min_num-(days*(24*60))) / 60);
    var minutes = Math.floor(min_num - (days*(24*60))-(hours * 60));
  	
    result += days + "<fmt:message key="day" bundle="${research_time}"/> ";
    result += hours + "<fmt:message key="hour" bundle="${research_time}"/> ";
    result += minutes + "<fmt:message key="minute" bundle="${research_time}"/> ";
    
  	
    return result;
  }
  
  $(".radio input").click(function() {
	    // whenever a button is clicked, set the hidden helper
	    percent = $(this).val();
	    //console.log(percent);
	}); 
	
  $("#optionsRadios1").prop('checked', true);
  
  
 $("#navbar-ressources").css({color:"#FFFFFF"});
 $("#navbar-research-time").css({color:'#FFFFFF'});
    </script>
    
  </body>
</html>