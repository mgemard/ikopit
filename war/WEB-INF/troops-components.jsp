<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="settings" var="settings"/>
<fmt:setBundle basename="troops_components" var="troops_components" />
<fmt:setBundle basename="components_troop_name" var="components_name" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${troops_components}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${troops_components}"/></title>
        
  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>
    <link href="<c:url value="/css/sprite/ressource_small.css"/>" rel="stylesheet" />
    <link href="<c:url value="/css/sprite/troop_comp.css"/>" rel="stylesheet" />

    
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


<%@ include file="include/settings/html.jsp" %>
 
 
 
<h1><fmt:message key="transport" bundle="${troops_components}"/></h1>
 
<h2><fmt:message key="transport" bundle="${troops_components}"/></h2>
  <div id="transport-table"></div>
	
	
	
	
<h1><fmt:message key="weapons" bundle="${troops_components}"/></h1>

<h2><fmt:message key="projectile" bundle="${troops_components}"/></h2>
  <div id="projectile-table"></div>
	
<h2><fmt:message key="ion" bundle="${troops_components}"/></h2>
  <div id="ion-table"></div>
	
<h2><fmt:message key="laser" bundle="${troops_components}"/></h2>
  <div id="laser-table"></div>
	
	
	
	
	
	
<h1><fmt:message key="defence" bundle="${troops_components}"/></h1>
	
	
<h2><fmt:message key="armor" bundle="${troops_components}"/></h2>
  <div id="armor-table"></div>
	
<h2><fmt:message key="shield" bundle="${troops_components}"/></h2>
  <div id="shield-table"></div>
	
	
	
	
	
<h1><fmt:message key="equipment" bundle="${troops_components}"/></h1>
	
	
<h2><fmt:message key="accuracy" bundle="${troops_components}"/></h2>
  <div id="accuracy-table"></div>
	
<h2><fmt:message key="capacity" bundle="${troops_components}"/></h2>
  <div id="capacity-table"></div>
	
	
 

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
      
<script type="text/javascript" src="<c:url value="inc/comps_troops/comps_troops.js"/>" charset="UTF-8"> </script> 
      
     <script>

     



     <%@ include file="include/i18n/comp_troop_name.jsp" %>
     
     
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
	    

    var COLUMNS_TRANSPORT = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops_components}"/>', 
    		size: '<fmt:message key="size" bundle="${troops_components}"/>',
    		armor: '<fmt:message key="armor" bundle="${troops_components}"/>',
    		agility: '<fmt:message key="agility" bundle="${troops_components}"/>',
    		mobility: '<fmt:message key="mobility" bundle="${troops_components}"/>',
    		time: '<fmt:message key="time" bundle="${troops_components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${troops_components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${troops_components}"/>',
    		copper: '<fmt:message key="copper" bundle="${troops_components}"/>',
    		iron: '<fmt:message key="iron" bundle="${troops_components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${troops_components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${troops_components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${troops_components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${troops_components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${troops_components}"/>'};

    var COLUMNS_WEAPONS = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops_components}"/>', 
    		size: '<fmt:message key="size" bundle="${troops_components}"/>',
    		attack: '<fmt:message key="attack" bundle="${troops_components}"/>',
    		aim: '<fmt:message key="aim" bundle="${troops_components}"/>',
    		time: '<fmt:message key="time" bundle="${troops_components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${troops_components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${troops_components}"/>',
    		copper: '<fmt:message key="copper" bundle="${troops_components}"/>',
    		iron: '<fmt:message key="iron" bundle="${troops_components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${troops_components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${troops_components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${troops_components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${troops_components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${troops_components}"/>'};

    var COLUMNS_ARMOR = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops_components}"/>', 
    		size: '<fmt:message key="size" bundle="${troops_components}"/>',
    		armor: '<fmt:message key="armor" bundle="${troops_components}"/>',
    		time: '<fmt:message key="time" bundle="${troops_components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${troops_components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${troops_components}"/>',
    		copper: '<fmt:message key="copper" bundle="${troops_components}"/>',
    		iron: '<fmt:message key="iron" bundle="${troops_components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${troops_components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${troops_components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${troops_components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${troops_components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${troops_components}"/>'};

    
    var COLUMNS_ARMOR = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops_components}"/>', 
    		size: '<fmt:message key="size" bundle="${troops_components}"/>',
    		armor: '<fmt:message key="armor" bundle="${troops_components}"/>',
    		time: '<fmt:message key="time" bundle="${troops_components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${troops_components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${troops_components}"/>',
    		copper: '<fmt:message key="copper" bundle="${troops_components}"/>',
    		iron: '<fmt:message key="iron" bundle="${troops_components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${troops_components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${troops_components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${troops_components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${troops_components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${troops_components}"/>'};

    
    var COLUMNS_SHIELD = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops_components}"/>', 
    		size: '<fmt:message key="size" bundle="${troops_components}"/>',
    		shield: '<fmt:message key="shield" bundle="${troops_components}"/>',
    		time: '<fmt:message key="time" bundle="${troops_components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${troops_components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${troops_components}"/>',
    		copper: '<fmt:message key="copper" bundle="${troops_components}"/>',
    		iron: '<fmt:message key="iron" bundle="${troops_components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${troops_components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${troops_components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${troops_components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${troops_components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${troops_components}"/>'};

    var COLUMNS_ACCURACY = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops_components}"/>', 
    		size: '<fmt:message key="size" bundle="${troops_components}"/>',
    		accuracy: '<fmt:message key="accuracy" bundle="${troops_components}"/>',
    		time: '<fmt:message key="time" bundle="${troops_components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${troops_components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${troops_components}"/>',
    		copper: '<fmt:message key="copper" bundle="${troops_components}"/>',
    		iron: '<fmt:message key="iron" bundle="${troops_components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${troops_components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${troops_components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${troops_components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${troops_components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${troops_components}"/>'};

    
    var COLUMNS_CAPACITY = {image: '', 
    		name: '<fmt:message key="name" bundle="${troops_components}"/>', 
    		size: '<fmt:message key="size" bundle="${troops_components}"/>',
    		cargo: '<fmt:message key="cargo" bundle="${troops_components}"/>',
    		time: '<fmt:message key="time" bundle="${troops_components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${troops_components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${troops_components}"/>',
    		copper: '<fmt:message key="copper" bundle="${troops_components}"/>',
    		iron: '<fmt:message key="iron" bundle="${troops_components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${troops_components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${troops_components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${troops_components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${troops_components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${troops_components}"/>'};

    
    
    
    
	
    	var LINES_TRANSPORT = comps[0].transport;
    	var LINES_PROJECTILE = comps[0].projectile;
    	var LINES_ION = comps[0].ion;
    	var LINES_LASER = comps[0].laser;
    	var LINES_ARMOR = comps[0].armor;
    	var LINES_SHIELD = comps[0].shield;
    	var LINES_ACCURACY = comps[0].accuracy;
    	var LINES_CAPACITY = comps[0].capacity;
     
    		
    	  

	    
	    function renderReactTables() {
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_TRANSPORT, lines:LINES_TRANSPORT, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('transport-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_WEAPONS, lines:LINES_PROJECTILE, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('projectile-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_WEAPONS, lines:LINES_ION, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('ion-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_WEAPONS, lines:LINES_LASER, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('laser-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_ARMOR, lines:LINES_ARMOR, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('armor-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_SHIELD, lines:LINES_SHIELD, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('shield-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_ACCURACY, lines:LINES_ACCURACY, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('accuracy-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_CAPACITY, lines:LINES_CAPACITY, name: compName, settings:settings, wrap:8,constructionTime: true}), document.getElementById('capacity-table'));
	    	
	    }
	    
	    renderReactTables();

	    $(document).ready(function() {
	    	
	    	

	    
	    $("#step-up-society,#step-up-war,#step-up-construction,#step-up-economy,#step-down-society,#step-down-war,#step-down-construction,#step-down-economy").click(function () {
	    	renderReactTables()
	    	 
	    });
	    
	    
	    $("#rangeinput_society,#rangeinput_war,#rangeinput_construction,#rangeinput_economy").change(function () {
	    	renderReactTables()
		    
	    });
	    
    	
     //React.render(React.createElement(ResponsiveTable), document.getElementById('troop-table'));

     // {products: shipList 
     
    	 
      $("#navbar-ressources").css({color:"#FFFFFF"});     
      $("#navbar-troops-components").css({color:"#FFFFFF"});
     
 
    	});

     
	</script>
    
    
  </body>
</html>