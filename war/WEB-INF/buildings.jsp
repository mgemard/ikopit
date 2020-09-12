<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="settings" var="settings"/>
<fmt:setBundle basename="buildings" var="buildings" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${buildings}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${buildings}"/></title>
        
  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>
    <link href="<c:url value="/css/sprite/ressource.css"/>" rel="stylesheet" />
    <link href="<c:url value="/css/sprite/building.css"/>" rel="stylesheet" />

    
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
 
<h1><fmt:message key="control_center" bundle="${buildings}"/></h1>
  <div id="control_center-table"></div>
 
<h1><fmt:message key="com_center" bundle="${buildings}"/></h1>
  <div id="com_center-table"></div>
 
<h1><fmt:message key="univ" bundle="${buildings}"/></h1>
  <div id="univ-table"></div>
 
<h1><fmt:message key="research_center" bundle="${buildings}"/></h1>
  <div id="research_center-table"></div>
 
<h1><fmt:message key="gov" bundle="${buildings}"/></h1>
  <div id="gov-table"></div>

	
<h1><fmt:message key="barracks" bundle="${buildings}"/></h1>
  <div id="barracks-table"></div>
 
<h1><fmt:message key="shipyard" bundle="${buildings}"/></h1>
  <div id="shipyard-table"></div>
 
<h1><fmt:message key="dock" bundle="${buildings}"/></h1>
  <div id="dock-table"></div>
 
<h1><fmt:message key="bunker" bundle="${buildings}"/></h1>
  <div id="bunker-table"></div>
 
<h1><fmt:message key="trade" bundle="${buildings}"/></h1>
  <div id="trade-table"></div>
 
<h1><fmt:message key="res_facility" bundle="${buildings}"/></h1>
  <div id="res_facility-table"></div>
	
	
	

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
      
<script type="text/javascript" src="<c:url value="inc/buildings/buildings.js"/>" charset="UTF-8"> </script> 
      
     <script>

     



var wrapWidth = 700;


    	<%@ include file="include/settings/js.jsp" %>
	    

    	
    	var buildingsName = {"level_1":"<fmt:message key="level_1" bundle="${buildings}"/>",
    												"level_2":"<fmt:message key="level_2" bundle="${buildings}"/>",
    												"level_3":"<fmt:message key="level_3" bundle="${buildings}"/>",
    												"level_4":"<fmt:message key="level_4" bundle="${buildings}"/>",
    												"level_5":"<fmt:message key="level_5" bundle="${buildings}"/>",
    												"level_6":"<fmt:message key="level_6" bundle="${buildings}"/>",
    												"level_7":"<fmt:message key="level_7" bundle="${buildings}"/>",
    												"level_8":"<fmt:message key="level_8" bundle="${buildings}"/>",
    												"level_9":"<fmt:message key="level_9" bundle="${buildings}"/>",
    												"level_10":"<fmt:message key="level_10" bundle="${buildings}"/>"};
    	
    	
    var COLUMNS = {name: '',
    		titanium: '', 
    		copper: '', 
    		iron: '', 
    		aluminium: '',
    		silicon: '',
    		uranium: '',
    		nitrogen:'',
    		hydrogen: '',
        totCost:'<fmt:message key="totCost" bundle="${buildings}"/>',
        time: '<fmt:message key="time" bundle="${buildings}"/>'};

    
    	
    	for (var k in buildings[0]){
    	    if (buildings[0].hasOwnProperty(k)) {
    	    	buildings[0][k];
    	    	buildings[0][k].forEach(function(level) {
    	    		level.time = level.time/2;
    	    	});
    	    	
    	    }
    	}
    	
    	
    	var LINES_CONTROL_CENTER = buildings[0].control_center;
    	var LINES_COM_CENTER = buildings[0].com_center;
    	var LINES_UNIV = buildings[0].univ;
    	var LINES_RESEARCH_CENTER = buildings[0].research_center;
    	var LINES_GOV = buildings[0].gov;
    	var LINES_BARRACKS = buildings[0].barracks;
    	var LINES_SHIPYARD = buildings[0].shipyard;
    	var LINES_DOCK = buildings[0].dock;
    	var LINES_BUNKER = buildings[0].bunker;
    	var LINES_TRADE = buildings[0].trade;
    	var LINES_RES_FACILITY = buildings[0].res_facility;
        	

	    function renderTables () {
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_CONTROL_CENTER, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('control_center-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_COM_CENTER, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('com_center-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_UNIV, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('univ-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_RESEARCH_CENTER, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('research_center-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_GOV, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('gov-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_BARRACKS, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('barracks-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_SHIPYARD, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('shipyard-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_DOCK, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('dock-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_BUNKER, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('bunker-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_TRADE, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('trade-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS, lines: LINES_RES_FACILITY, name: buildingsName, settings:settings, wrap:2,constructionTime:false}), document.getElementById('res_facility-table'));

	    }

    	
	    renderTables();
	    
	    

	    $(document).ready(function() {
	    	
	    	
	    	
	    $("#step-up-society,#step-up-war,#step-up-construction,#step-up-economy,#step-down-society,#step-down-war,#step-down-construction,#step-down-economy").click(function () {
	    	
	    		renderTables();
	    });
	    
	    
	    $("#rangeinput_society,#rangeinput_war,#rangeinput_construction,#rangeinput_economy").change(function () {
	    	renderTables();
	    });
	    
    	
     //React.render(React.createElement(ResponsiveTable), document.getElementById('troop-table'));

     // {products: shipList 
     
    	 

	 $("#navbar-ressources").css({color:"#FFFFFF"});
     $("#navbar-buildings").css({color:'#FFFFFF'});
     
 
    	});

     
	</script>
    
    
  </body>
</html>