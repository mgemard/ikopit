<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="planet_finder" var="planet_finder" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${planet_finder}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${planet_finder}"/></title>
        
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


<h1><fmt:message key="planet-finder" bundle="${planet_finder}"/></h1>


 <table class="triangulation table" style="width:100%">
  <tr>
    <th>From</th>
    <td><fmt:message key="planet" bundle="${planet_finder}"/>&nbsp;1</td>
    <td><fmt:message key="planet" bundle="${planet_finder}"/>&nbsp;2</td>
    <td><fmt:message key="planet" bundle="${planet_finder}"/>&nbsp;3</td>
    <td><fmt:message key="planet" bundle="${planet_finder}"/>&nbsp;4</td>
    <td><fmt:message key="planet" bundle="${planet_finder}"/>&nbsp;5</td>
  </tr>
  <tr>
    <th><input style="background-color:transparent" type="text" id="planetA"></th>
    <td><input style="background-color:transparent" type="text" id="planet1fromA"></td>
    <td><input style="background-color:transparent" type="text" id="planet2fromA"></td>
    <td><input style="background-color:transparent" type="text" id="planet3fromA"></td>
    <td><input style="background-color:transparent" type="text" id="planet4fromA"></td>
    <td><input style="background-color:transparent" type="text" id="planet5fromA"></td>
  </tr>
  <tr>
     <th><input style="background-color:transparent" type="text" id="planetB"></th>
    <td><input style="background-color:transparent" type="text" id="planet1fromB"></td>
    <td><input style="background-color:transparent" type="text" id="planet2fromB"></td>
    <td><input style="background-color:transparent" type="text" id="planet3fromB"></td>
    <td><input style="background-color:transparent" type="text" id="planet4fromB"></td>
    <td><input style="background-color:transparent" type="text" id="planet5fromB"></td>
  </tr>
  <tr>
    <th><input style="background-color:transparent" type="text" id="planetC"></th>
    <td><input style="background-color:transparent" type="text" id="planet1fromC"></td>
    <td><input style="background-color:transparent" type="text" id="planet2fromC"></td>
    <td><input style="background-color:transparent" type="text" id="planet3fromC"></td>
    <td><input style="background-color:transparent" type="text" id="planet4fromC"></td>
    <td><input style="background-color:transparent" type="text" id="planet5fromC"></td>
  </tr>
</table> 

<button class="btn btn-default" onclick="findPlanet()"><fmt:message key="find" bundle="${planet_finder}"/></button>

</br></br>

<div id="result"></div>


   </div>
  <div class="col-md-2" style="text-align:center">
  </br></br></br>



</br></br></br></br>

   </div><!-- end col-md -->
   </div><!-- end row -->
   
   
    </div><!-- /.container -->
    

    </div><!-- /.wrap -->
    
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>


    <script src="inc/bootstrap/js/bootstrap.min.js"></script>
    <script>


 
 function findPlanet() {
	 var planetA = $("#planetA").val();
	 var planetB = $("#planetB").val();
	 var planetC = $("#planetC").val();

	 var planetFromA = [];
	 var planetFromB = [];
	 var planetFromC = [];
	 
	 planetFromA[0] = $("#planet1fromA").val();
	 planetFromB[0] = $("#planet1fromB").val();
	 planetFromC[0] = $("#planet1fromC").val();

	 planetFromA[1] = $("#planet2fromA").val();
	 planetFromB[1] = $("#planet2fromB").val();
	 planetFromC[1] = $("#planet2fromC").val();

	 planetFromA[2] = $("#planet3fromA").val();
	 planetFromB[2] = $("#planet3fromB").val();
	 planetFromC[2] = $("#planet3fromC").val();

	 planetFromA[3] = $("#planet4fromA").val();
	 planetFromB[3] = $("#planet4fromB").val();
	 planetFromC[3] = $("#planet4fromC").val();

	 planetFromA[4] = $("#planet5fromA").val();
	 planetFromB[4] = $("#planet5fromB").val();
	 planetFromC[4] = $("#planet5fromC").val();
	 
	 
     $("#result").html("");
     
     
     if (!isNaturalNumber(planetA) || !isNaturalNumber(planetB) || !isNaturalNumber(planetC)) {
    	 $("#result").append("<div>"+"<fmt:message key="not_number" bundle="${planet_finder}"/>"+"</div>");
     }
     else if ( (planetA == 0 || planetA >10000 ) || (planetB == 0 || planetB >10000 ) || (planetC == 0 || planetC >10000 )) {
    	 $("#result").append("<div>"+"<fmt:message key="too_high" bundle="${planet_finder}"/>"+"</div>");
     }
     else {
	     for (var i = 0; i <5;i++){
	    	 var numberPlanet = i+1;
	    	 if (planetFromA[i]=="" && planetFromB[i]=="" && planetFromC[i]=="") continue;
	     	 else if (!isNaturalNumber(planetFromA[i]) || !isNaturalNumber(planetFromB[i]) || !isNaturalNumber(planetFromC[i])) {
				 $("#result").append("<div><strong><fmt:message key="planet" bundle="${planet_finder}"/> "+numberPlanet+"</strong>:  "+"<fmt:message key="distance_format" bundle="${planet_finder}"/>"+"</div>");
			 }
	     	 else {
	     		var result = triangulate(planetA,planetFromA[i],planetB,planetFromB[i],planetC,planetFromC[i]);
		         if (result ==""){
		        	 $("#result").append("<div><strong><fmt:message key="planet" bundle="${planet_finder}"/> "+numberPlanet+"</strong>:  "+"<fmt:message key="not_found" bundle="${planet_finder}"/>"+"</div>");
		         }
		         else {
		        	 $("#result").append("<div><strong><fmt:message key="planet" bundle="${planet_finder}"/> "+numberPlanet+"</strong>:  "+ result+"</div>");
		         }
		         
	     	 }
	         
	     } 
     }
  }
 
 function triangulate (planetA,distFromA,planetB,distFromB,planetC,distFromC) {
	 var planetAX= getX(planetA);
	 var planetAY= getY(planetA);
	 var planetBX= getX(planetB);
	 var planetBY= getY(planetB);
	 var planetCX= getX(planetC);
	 var planetCY= getY(planetC);
	 
	 var result = "";
	 	 
	 for (var x = 1; x <= 100; x++) {
		 for (var y = 1; y <= 100; y++) {
			var distA = Math.sqrt(Math.pow(x-planetAX,2)+Math.pow(y-planetAY,2));
			distA = Math.round(distA);
			//console.log("distA (calculated):" +distA);
			//console.log("distFromA:" +distFromA);
			if (distA != distFromA) continue;
			//console.log("distA:" +distA);
			var distB = Math.sqrt(Math.pow(x-planetBX,2)+Math.pow(y-planetBY,2));
			distB = Math.round(distB);
			//console.log("distB:" +distB);
			
			if (distB != distFromB) {
				//console.log(distB);
				//console.log(getSys(planetBX,planetBY));
				continue;
			}
			var distC = Math.sqrt(Math.pow(x-planetCX,2)+Math.pow(y-planetCY,2));
			distC = Math.round(distC);
			if (getSys(x,y) == 2170) console.log(distC);
			if (distC != distFromC) continue;
			result+=", "+getSys(x,y);
		 
		 }
	 }
	 
	 result = result.substr(2); 
	 return result;
 }
 
 function getX (system) {
	 return Math.ceil(system /100);
	 
 }
 
 function getY (system) {
     var mod = system % 100;
     return mod == 0 ? 100 : mod;
	 
 }
 
 
  function getSys(x, y){
        var sys;
        x=100*x;
        if(y==100){
            sys = x;
        }
        else sys = x-100+y;
        return sys;
                
    }
 
  function isNaturalNumber(n) {
	    n = n.toString(); // force the value incase it is not
	    var n1 = Math.abs(n),
	        n2 = parseInt(n, 10);
	    return !isNaN(n1) && n2 === n1 && n1.toString() === n;
	}
 
 $("#navbar-tools").css({color:"#FFFFFF"});
 $("#navbar-planet-finder").css({color:'#FFFFFF'});
    </script>
    
  </body>
</html>