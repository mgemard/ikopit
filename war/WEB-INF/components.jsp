<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="settings" var="settings"/>
<fmt:setBundle basename="components" var="components" />
<fmt:setBundle basename="components_name" var="components_name" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${components}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${components}"/></title>
        
  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>
    <link href="<c:url value="/css/sprite/ressource_small.css"/>" rel="stylesheet" />
    <link href="<c:url value="/css/sprite/comp.css"/>" rel="stylesheet" />

    
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
 
<h1><fmt:message key="engines" bundle="${components}"/></h1>
<h2><fmt:message key="impulse" bundle="${components}"/></h2>
  <div id="impulse-table"></div>
<h2><fmt:message key="warp" bundle="${components}"/></h2>
  <div id="warp-table"></div>



<h1><fmt:message key="weapons" bundle="${components}"/></h1>
<h2><fmt:message key="projectiles" bundle="${components}"/></h2>
  <div id="projectile-table"></div>
<h2><fmt:message key="ions" bundle="${components}"/></h2>
  <div id="ion-table"></div>
<h2><fmt:message key="lasers" bundle="${components}"/></h2>
  <div id="laser-table"></div>
  
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
  

<h1><fmt:message key="defence" bundle="${components}"/></h1>
<h2><fmt:message key="resilience" bundle="${components}"/></h2>
  <div id="armor-table"></div>
<h2><fmt:message key="shields" bundle="${components}"/></h2>
  <div id="shield-table"></div>


<h1><fmt:message key="equipments" bundle="${components}"/></h1>
<h2><fmt:message key="mining_lasers" bundle="${components}"/></h2>
  <div id="mining-table"></div>
<h2><fmt:message key="salvage_tools" bundle="${components}"/></h2>
  <div id="salvage-table"></div>
<h2><fmt:message key="cargo" bundle="${components}"/></h2>
  <div id="cargo-table"></div>
<h2><fmt:message key="cloak" bundle="${components}"/></h2>
  <div id="cloak-table"></div>
<h2><fmt:message key="colonization_module" bundle="${components}"/></h2>
  <div id="colo-table"></div>
<h2><fmt:message key="scan" bundle="${components}"/></h2>
  <div id="scan-table"></div>
<h2><fmt:message key="troop_transporter" bundle="${components}"/></h2>
  <div id="troop-table"></div>
<h2><fmt:message key="fuel_tanks" bundle="${components}"/></h2>
  <div id="fuel-table"></div>
<h2><fmt:message key="jammer" bundle="${components}"/></h2>
  <div id="jammer-table"></div>

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
       	  <c:choose>
						<c:when test="${server == 'global_infinity'}">
	                  <script type="text/javascript" src="<c:url value="inc/comps/comps_global.js"/>" charset="UTF-8"> </script>
	                </c:when>
					    <c:otherwise>
					    <script type="text/javascript" src="<c:url value="inc/comps/comps.js"/>" charset="UTF-8"> </script>
					    </c:otherwise>
					  </c:choose>

      
     <script>

     



     <%@ include file="include/i18n/comp_name.jsp" %>
     
     
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
	    

    var COLUMNS_IMPULSE = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		impulse: '<fmt:message key="impulse" bundle="${components}"/>',
    		consumption: '<fmt:message key="consumption" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    var COLUMNS_WARP = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		impulse: '<fmt:message key="impulse" bundle="${components}"/>',
    		warp: '<fmt:message key="warp" bundle="${components}"/>',
    		consumption: '<fmt:message key="consumption" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};
    
    
    var COLUMNS_WEAPONS = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		attack: '<fmt:message key="attack" bundle="${components}"/>',
    		aim: '<fmt:message key="aim" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    var COLUMNS_ARMOR = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		armor: '<fmt:message key="armor" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};

    
    var COLUMNS_SHIELD = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		shield: '<fmt:message key="shield" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};

    var COLUMNS_MINING = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		cargo: '<fmt:message key="cargo" bundle="${components}"/>',
    		rate: '<fmt:message key="rate" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};

    
    var COLUMNS_SALVAGE = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		cargo: '<fmt:message key="cargo" bundle="${components}"/>',
    		rate: '<fmt:message key="rate" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};

    
    var COLUMNS_CARGO = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		cargo: '<fmt:message key="cargo" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    var COLUMNS_CLOAK = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		cloak: '<fmt:message key="cloak" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    var COLUMNS_COLO = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    var COLUMNS_SCAN = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		scan: '<fmt:message key="scan" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    var COLUMNS_TROOP = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		troop: '<fmt:message key="troop" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    var COLUMNS_FUEL = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		fuel: '<fmt:message key="fuel_tanks" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    var COLUMNS_JAMMER = {image: '', 
    		name: '<fmt:message key="name" bundle="${components}"/>', 
    		size: '<fmt:message key="size" bundle="${components}"/>',
    		damage: '<fmt:message key="damage" bundle="${components}"/>',
    		time: '<fmt:message key="time" bundle="${components}"/>',
    		totCost: '<fmt:message key="totCost" bundle="${components}"/>',
    		titanium: '<fmt:message key="titanium" bundle="${components}"/>',
    		copper: '<fmt:message key="copper" bundle="${components}"/>',
    		iron: '<fmt:message key="iron" bundle="${components}"/>',
    		aluminium: '<fmt:message key="aluminium" bundle="${components}"/>',
    		silicon: '<fmt:message key="silicon" bundle="${components}"/>',
    		uranium: '<fmt:message key="uranium" bundle="${components}"/>',
    		nitrogen: '<fmt:message key="nitrogen" bundle="${components}"/>',
    		hydrogen: '<fmt:message key="hydrogen" bundle="${components}"/>'};


    
    
    
    
	
    	var LINES_IMPULSE = comps[0].impulse;
    	var LINES_WARP = comps[0].warp;
    	var LINES_PROJECTILE = comps[0].projectile;
    	var LINES_ION = comps[0].ion;
    	var LINES_LASER = comps[0].laser;
    	var LINES_ARMOR = comps[0].armor;
    	var LINES_SHIELD = comps[0].shield;
    	var LINES_MINING = comps[0].mining;
    	var LINES_SALVAGE = comps[0].salvage;
    	var LINES_CARGO = comps[0].cargo;
    	var LINES_CLOAK = comps[0].cloak;
    	var LINES_COLO = comps[0].colo;
    	var LINES_SCAN = comps[0].scan;
    	var LINES_TROOP = comps[0].troop;
    	var LINES_FUEL = comps[0].fuel;
    	var LINES_JAMMER = comps[0].jammer;
     
    		
    	  

	    
	    function renderReactTables() {
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_IMPULSE, lines:LINES_IMPULSE, name: compName, settings:settings, wrap:8,constructionTime:false, comp:true}), document.getElementById('impulse-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_WARP, lines:LINES_WARP, name: compName, settings:settings, wrap:8,constructionTime:false, comp:true}), document.getElementById('warp-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_WEAPONS, lines:LINES_PROJECTILE, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('projectile-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_WEAPONS, lines:LINES_ION, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('ion-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_WEAPONS, lines:LINES_LASER, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('laser-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_ARMOR, lines:LINES_ARMOR, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('armor-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_SHIELD, lines:LINES_SHIELD, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('shield-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_MINING, lines:LINES_MINING, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('mining-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_SALVAGE, lines:LINES_SALVAGE, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('salvage-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_CARGO, lines:LINES_CARGO, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('cargo-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_CLOAK, lines:LINES_CLOAK, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('cloak-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_COLO, lines:LINES_COLO, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('colo-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_SCAN, lines:LINES_SCAN, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('scan-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_TROOP, lines:LINES_TROOP, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('troop-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_FUEL, lines:LINES_FUEL, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('fuel-table'));
		    React.render(React.createElement(ResponsiveTable, {columns:COLUMNS_JAMMER, lines:LINES_JAMMER, name: compName, settings:settings, wrap:8,constructionTime:false}), document.getElementById('jammer-table'));
		    
	    	
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