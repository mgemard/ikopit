<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="settings" var="settings"/>
<fmt:setBundle basename="troops" var="troops" />
<fmt:setBundle basename="troop_name" var="chassis_name"/>

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${troops}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${troops}"/></title>
        
  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>
    <link href="<c:url value="/css/sprite/ressource_small.css"/>" rel="stylesheet" />
    <link href="<c:url value="/css/sprite/troop.css"/>" rel="stylesheet" />

    
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
 



	<%--var settings = {"society": 5, "war": -1, "construction": 100, "economy": 9}; 
	
<input id="slider3" type ="range" min ="-2.5" max="3.0" step ="0.1"/> 

--%> 

  <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- adaptable -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-7435612721211156"
     data-ad-slot="1503968627"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
	
	
<%@ include file="include/settings/html.jsp" %>
 
<h1><fmt:message key="troops" bundle="${troops}"/></h1>
 
  
  <div id="troop-table"></div>
	
	
	<%--
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- adaptable -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-7435612721211156"
     data-ad-slot="1503968627"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
 --%>
 

</br>
</br>

    </div><!-- /.container -->
    

    </div><!-- /.wrap -->
    
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>



     <%--  <script src="inc/twbs-tooltip.js"></script>  --%>
      <script src="https://fb.me/react-0.13.3.js"></script>
        <%--   <script src="https://fb.me/JSXTransformer-0.13.3.js"></script>  --%>
            
      <script src="js/react_comp/responsive_table.js"></script>
      
<script type="text/javascript" src="<c:url value="inc/troops/troops.js"/>" charset="UTF-8"> </script> 
      
     <script>

     



     <%@ include file="include/i18n/troop_name.jsp" %>
     
     
     /*
     // for testing
     var COLUMNS = {column1: 'Sport', column2: 'Ball', column3: 'Details',
    		 column4: 'Sum'};
     var LINES = [
    	  {column1: 'Football', column2: 'yes', column3: 'details', column4: 2},
    	  {column1: 'Baseball', column2: 'yes', column3: 'details', column4: 2},
    	  {column1: 'Basketball1', column2: 'yes', column3: 'details', column4: 3},
    	  {column1: 'Rugby', column2: 'yes', column3: 'details', column4: 54},
    	  {column1: 'Volley', column2: 'yes', column3: 'details', column4: 565},
    	  {column1: 'blabla', column2: 'no', column3: 'details', column4: 65},
    	  {column1: 'blabla', column2: 'yes', column3: 'details', column4: 5}
    	];

*/


var wrapWidth = 700;


    	<%@ include file="include/settings/js.jsp" %>
	    

    var COLUMNS = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops}"/>', 
    		size: '<fmt:message key="size" bundle="${troops}"/>',
    		hull: '<fmt:message key="hull" bundle="${troops}"/>',
    		agility: '<fmt:message key="agility" bundle="${troops}"/>',
    		capacity: '<fmt:message key="capacity" bundle="${troops}"/>',
    		cost: '<fmt:message key="cost" bundle="${troops}"/>',
    		upkeep: '<fmt:message key="upkeep" bundle="${troops}"/>',
    		time: '<fmt:message key="time" bundle="${troops}"/>'};

    	var LINES = chassis;
        	

    	

   
	    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES, name:chassisName, settings:settings, wrap:3,constructionTime: true}), document.getElementById('troop-table'));
    	
	    

	    $(document).ready(function() {
	    	
	    	
	    	
	    $("#step-up-society,#step-up-war,#step-up-construction,#step-up-economy,#step-down-society,#step-down-war,#step-down-construction,#step-down-economy").click(function () {
	    	 React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES, name:chassisName, settings:settings, wrap:3,constructionTime:true}), document.getElementById('troop-table'));
	    });
	    
	    
	    $("#rangeinput_society,#rangeinput_war,#rangeinput_construction,#rangeinput_economy").change(function () {
	    	 React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES, name:chassisName, settings:settings, wrap:3,constructionTime: true}), document.getElementById('troop-table'));
	    });
	    
    	
	    
	    
     //React.render(React.createElement(ResponsiveTable), document.getElementById('troop-table'));

     // {products: shipList 
     
    	 

	 $("#navbar-ressources").css({color:"#FFFFFF"});
     $("#navbar-troops").css({color:'#FFFFFF'});
     
 
    	});

     
	</script>
    
    
  </body>
</html>