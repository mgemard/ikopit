<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="wlrce" var="wlrce" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${wlrce}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${wlrce}"/></title>

  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>

    
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
    
 

<h1><fmt:message key="route-planner" bundle="${wlrce}"/> for .uk, .de or .fr</h1>


<h2>1. Retreive your wormholes list (from the ingame config menu, click on galaxy and then CSV-Data Download. Open the ".txt" file.)</h2>
<h2>2. Paste it in the first area below</h2>
<h2>3. Click "Convert"</h2>
<h2>4. Your new list is ready to be used with Wormhole Route Planner Community Edition by TheWape (<a href="<c:url value="/download/wlrce912.13.uk.jar"/>">Download</a>)</h2>


<textarea id="wh-list"  rows="10"></textarea>

<br>
<br>
  <button class="btn btn-default" onclick="myFunction()">Convert</button> It aslo remove duplicated datas!

<br>
<br>

<textarea id="wh-result"  rows="10" cols="80"></textarea>


  
	
	
<br>

	
<br>
<br>

<br>



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

    <script>
    
    $("#navbar-tools").css({color:"#FFFFFF"});
    $("#navbar-wlrce").css({color:'#FFFFFF'});
    
    
    function myFunction(){
        var arr = $("#wh-list").val().split("\n");

        var arrDistinct = new Array();
        var patt=/^\d/;
         $(arr).each(function(index, item) {
        	item=item.replace("Wormhole,","");
         	item=item.replace("\"Entrée de Vortex\",","");
         	item=item.replace("Wurmlöcher,","");
        	 if(patt.exec(item)) {
	             if ($.inArray(item, arrDistinct) == -1)
	            	       arrDistinct.push(item);
	                 
         	}
         });
      $("#wh-result").val("");
        $(arrDistinct).each(function(index, item) {
            $("#wh-result").val($("#wh-result").val() + item + "\n"); 
         });
      
    }
    
 
    
    
    </script>
    
  </body>
</html>