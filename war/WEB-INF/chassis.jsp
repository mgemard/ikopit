<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="settings" var="settings"/>
<fmt:setBundle basename="chassis" var="chassis" />
<fmt:setBundle basename="chassis_name" var="chassis_name"/>

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${chassis}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${chassis}"/></title>
        
  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>
    <link href="<c:url value="/css/sprite/ressource_small.css"/>" rel="stylesheet" />
    <link href="<c:url value="/css/sprite/chassis.css"/>" rel="stylesheet" />

    
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
 
 
	
 
 
<h1><fmt:message key="small" bundle="${chassis}"/></h1>
 
  
  <div id="small-table"></div>
	
<h1><fmt:message key="destroyers" bundle="${chassis}"/></h1>
  
  <div id="destroyers-table"></div>
	
	

<h1><fmt:message key="fireflys" bundle="${chassis}"/></h1>
  
  <div id="fireflys-table"></div>
	
	
	
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
	
	
	
<h1><fmt:message key="cruisers" bundle="${chassis}"/></h1>
  
  <div id="cruisers-table"></div>
	
	
<h1><fmt:message key="battleships" bundle="${chassis}"/></h1>
  
  <div id="battleships-table"></div>
	
<h1><fmt:message key="space-stations" bundle="${chassis}"/></h1>
  
  <div id="space-stations-table"></div>
 
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
	
	

<br><br>

    </div><!-- /.container -->
    

    </div><!-- /.wrap -->
    
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>



     <%--  <script src="inc/twbs-tooltip.js"></script>  --%>
      <script src="https://fb.me/react-0.13.3.js"></script>
        <%--   <script src="https://fb.me/JSXTransformer-0.13.3.js"></script>  --%>
            
      <script src="js/react_comp/responsive_table.js"></script>
      
<script type="text/javascript" src="<c:url value="inc/chassis/chassis.js"/>" charset="UTF-8"> </script> 
      
     <script>

     



     <%@ include file="include/i18n/chassis_name.jsp" %>
     
     
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
    		name: '<fmt:message key="name" bundle="${chassis}"/>', 
    		size: '<fmt:message key="size" bundle="${chassis}"/>',
    		hull: '<fmt:message key="hull" bundle="${chassis}"/>',
    		maneuv: '<fmt:message key="maneuv" bundle="${chassis}"/>',
    		tank: '<fmt:message key="tank" bundle="${chassis}"/>',
    		impulse: '<fmt:message key="impulse" bundle="${chassis}"/>',
    		warp: '<fmt:message key="warp" bundle="${chassis}"/>',
    		cloak: '<fmt:message key="cloak" bundle="${chassis}"/>',
    		time: '<fmt:message key="time" bundle="${chassis}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${chassis}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${chassis}"/>',
    		copper: '<fmt:message key="copper" bundle="${chassis}"/>',
    		iron: '<fmt:message key="iron" bundle="${chassis}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${chassis}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${chassis}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${chassis}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${chassis}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${chassis}"/>'};


    	var LINES_SMALL = [];
    	var LINES_DESTROYERS = [];
    	var LINES_FIREFLYS = [];
    	var LINES_CRUISERS = [];
    	var LINES_BATTLESHIPS = [];
    	var LINES_SPACE_STATIONS = [];
        	
    	var small = chassis[0].small;
    	var destroyers = chassis[0].destroyers;
    	var fireflys = chassis[0].fireflys;
    	var cruisers = chassis[0].cruisers;
    	var battleships = chassis[0].battleships;
    	var space_stations = chassis[0].space_stations;
    	
    	small.forEach(function(item){
	    	for (var k in item){
	    	    if (item.hasOwnProperty(k)) {
	    	    	LINES_SMALL.push(item[k][0]);
	    	    	console.log(item[k][0]);
	    	    }
	    	}
    	});
    	destroyers.forEach(function(item){
	    	for (var k in item){
	    	    if (item.hasOwnProperty(k)) {
	    	    	LINES_DESTROYERS.push(item[k][0]);
	    	    	console.log(item[k][0]);
	    	    }
	    	}
    	});
    	fireflys.forEach(function(item){
	    	for (var k in item){
	    	    if (item.hasOwnProperty(k)) {
	    	    	LINES_FIREFLYS.push(item[k][0]);
	    	    	console.log(item[k][0]);
	    	    }
	    	}
    	});
    	cruisers.forEach(function(item){
	    	for (var k in item){
	    	    if (item.hasOwnProperty(k)) {
	    	    	LINES_CRUISERS.push(item[k][0]);
	    	    	console.log(item[k][0]);
	    	    }
	    	}
    	});
    	battleships.forEach(function(item){
	    	for (var k in item){
	    	    if (item.hasOwnProperty(k)) {
	    	    	LINES_BATTLESHIPS.push(item[k][0]);
	    	    	console.log(item[k][0]);
	    	    }
	    	}
    	});
    	space_stations.forEach(function(item){
	    	for (var k in item){
	    	    if (item.hasOwnProperty(k)) {
	    	    	LINES_SPACE_STATIONS.push(item[k][0]);
	    	    	console.log(item[k][0]);
	    	    }
	    	}
    	});
    	

	    function renderReactTables() {
	    	React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES_SMALL, name:chassisName, settings:settings, wrap:3,constructionTime:true}), document.getElementById('small-table'));
	    	React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES_DESTROYERS, name:chassisName, settings:settings, wrap:3,constructionTime:true}), document.getElementById('destroyers-table'));
	    	React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES_FIREFLYS, name:chassisName, settings:settings, wrap:3,constructionTime:true}), document.getElementById('fireflys-table'));
	    	React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES_CRUISERS, name:chassisName, settings:settings, wrap:3,constructionTime:true}), document.getElementById('cruisers-table'));
	    	React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES_BATTLESHIPS, name:chassisName, settings:settings, wrap:3,constructionTime:true}), document.getElementById('battleships-table'));
	    	React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines:LINES_SPACE_STATIONS, name:chassisName, settings:settings, wrap:3,constructionTime:true}), document.getElementById('space-stations-table'));

	    }
	    
	    renderReactTables();
	    
	    

	    
	    $(document).ready(function() {
	   
	    $("#step-up-society,#step-up-war,#step-up-construction,#step-up-economy,#step-down-society,#step-down-war,#step-down-construction,#step-down-economy").click(function () {
	    	renderReactTables();
	    });
	    
	    
	    $("#rangeinput_society,#rangeinput_war,#rangeinput_construction,#rangeinput_economy").change(function () {
	    	renderReactTables();
	    });
	    
    	
     //React.render(React.createElement(ResponsiveTable), document.getElementById('troop-table'));

     // {products: shipList 
     
    	 

	 $("#navbar-ressources").css({color:"#FFFFFF"});
     $("#navbar-chassis").css({color:'#FFFFFF'});
     
 
    	});

     
	</script>
    
    
  </body>
</html>