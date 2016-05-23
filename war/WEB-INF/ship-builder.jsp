<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="settings" var="settings"/>
<fmt:setBundle basename="ship_builder" var="ship_builder" />
<fmt:setBundle basename="chassis_name" var="chassis_name"/>
<fmt:setBundle basename="components_name" var="components_name"/>

 

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${ship_builder}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${ship_builder}"/></title>
        
  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>
    <link href="<c:url value="/css/sprite/ressource_small.css"/>" rel="stylesheet" />
    <link href="<c:url value="/css/sprite/comp.css"/>" rel="stylesheet" />
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
 <br>
<%@ include file="include/settings/html.jsp" %>



 <%--
<div class="dropdown"> 
 <ul class="dropdown-menu" role="menu">
   <li>	<a href="?language=en" ><img src="<c:url value="/img/chassis/lancer.gif"/>" alt="uk" /> <fmt:message key="lancer" bundle="${chassis_name}"/></a></li>
   <li><a href="?language=fr" ><img src="<c:url value="/img/chassis/mach.gif"/>" alt="uk" /> <fmt:message key="mach" bundle="${chassis_name}"/></a></li>
 </ul>
</div>  --%>




  
  </br>
  

 
  </br>
  </br>



       <%-- <img class="sprite sprite.chassis_small sprite.chassis_small.adam"></img>  --%>  
                  
      <div class="row">
        <div class="col-md-4">
        
        
  <div style="float:right">
  	<table><tbody>
		<td>
  			<span data-bind='text: chassis_name'></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  		</td>
		<td>
			<button type="button" class="btn btn-default" data-bind='click: function(){ ChassisClickRemove()}, disable: chassisClickRemoveOff'>-</button>
		 </td>
		<td>
			<input style="background-color:transparent;height:35px;text-align:center" size="1" type="text" data-bind="value: chassis_quantity,valueUpdate: 'afterkeyup'"/>
		</td>
		<td>
			<button type="button" class="btn btn-default" data-bind='click:  function(){ resetChassisClicks()}'>&#10227;</button>
		 </td>
		<td>
			<button type="button" class="btn btn-default" data-bind='click:  function() { ChassisClickAdd()}'>+</button></td>
		 </td>
	</tbody></table>
  </div>

<div class="bs-example">
    <ul class="nav nav-pills" role="tablist">
      <li role="presentation" class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><div id="menu-icon" ></div> <span class="caret"></span></a>
        <ul id="menu1" class="dropdown-menu scrollable-menu" role="menu" aria-labelledby="drop4">
          <div id="small">
          	<li class="dropdown-header"><fmt:message key="small" bundle="${ship_builder}"/></li>
          </div>
          <li role="presentation" class="divider"></li>
          <div id="destroyers">
          	<li class="dropdown-header"><fmt:message key="destroyers" bundle="${ship_builder}"/></li>
          </div>
          <li role="presentation" class="divider"></li>
          <div id="fireflys" >
          	<li class="dropdown-header"><fmt:message key="fireflys" bundle="${ship_builder}"/></li>
          </div>
          <li role="presentation" class="divider"></li>
          <div id="cruisers">
          	<li class="dropdown-header"><fmt:message key="cruisers" bundle="${ship_builder}"/></li>
          </div>
          <li role="presentation" class="divider"></li>
          <div id="battleships">
          	<li class="dropdown-header"><fmt:message key="battleships" bundle="${ship_builder}"/></li>
          </div>
          <li role="presentation" class="divider"></li>
          <div id=space_stations>
          	<li class="dropdown-header"><fmt:message key="space-stations" bundle="${ship_builder}"/></li>
          </div>
          <li role="presentation" class="divider"></li>
          <div id=no-chassis>
          	<li class="dropdown-header"><fmt:message key="no-chassis" bundle="${ship_builder}"/></li>
          </div>
        </ul>
      </li>
    </ul> <!-- /pills -->
  </div> <!-- /example -->
  
  <div id="details_stat" class="details_stat">
  <br>
	<div><fmt:message key="d_cargo" bundle="${ship_builder}"/> / <fmt:message key="d_troops" bundle="${ship_builder}"/> <span class='pull-right'><span data-bind='text: cargoTotal'></span> / <span data-bind='text: troopTotal'></span></span></div>
	<div><fmt:message key="d_resilience" bundle="${ship_builder}"/> / <fmt:message key="d_shield" bundle="${ship_builder}"/> <span class='pull-right'><span data-bind='text: armorTotal'></span> / <span data-bind='text: shieldTotal'></span></span></div>
	<div><fmt:message key="d_attack" bundle="${ship_builder}"/>
		<span data-bind="visible: ionTooltipEnabled">
        	(<fmt:message key="d_ion" bundle="${ship_builder}"/>)
    	</span>
    	<span data-bind="visible: laserTooltipEnabled">
        	(<fmt:message key="d_laser" bundle="${ship_builder}"/>)
    	</span> 
    	<span data-bind="visible: projectileTooltipEnabled">
        	(<fmt:message key="d_projectile" bundle="${ship_builder}"/>)
    	</span> 
		<span class='pull-right'>
			<span data-bind='text: ionTotal,event: { mouseover: enableIonTooltip, mouseout: disableIonTooltip }'></span> / <span data-bind='text: laserTotal,event: { mouseover: enableLaserTooltip, mouseout: disableLaserTooltip }'></span> / <span data-bind='text: projectileTotal,event: { mouseover: enableProjectileTooltip, mouseout: disableProjectileTooltip }'></span>
		</span>
	</div>
	<div><fmt:message key="d_scan" bundle="${ship_builder}"/> / <fmt:message key="d_cloaking" bundle="${ship_builder}"/> <span class='pull-right'><span data-bind='text: scanTotal'></span> / <span data-bind='text: cloakTotal'></span></span></div>
	<div><fmt:message key="d_collect" bundle="${ship_builder}"/>
		<span data-bind="visible: miningTooltipEnabled">
        	(<fmt:message key="d_asteroid" bundle="${ship_builder}"/>)
    	</span>
    	<span data-bind="visible: salvageTooltipEnabled">
        	(<fmt:message key="d_wreckage" bundle="${ship_builder}"/>)
    	</span>
    	<span class='pull-right'>
    		<span data-bind='text: miningRateTotal, event: { mouseover: enableMiningTooltip, mouseout: disableMiningTooltip }'></span> / <span data-bind='text: salvageRateTotal,event: { mouseover: enableSalvageTooltip, mouseout: disableSalvageTooltip }'></span>
    	</span>
    </div>
	<div><fmt:message key="d_impulse" bundle="${ship_builder}"/> / <fmt:message key="d_warp" bundle="${ship_builder}"/> <span class='pull-right'><span data-bind='text: impulseTotal'></span> / <span data-bind='text: warpTotal'></span></span></div>
	<div><fmt:message key="d_fuel" bundle="${ship_builder}"/> / <fmt:message key="d_consumption" bundle="${ship_builder}"/> <span class='pull-right'><span data-bind='text: fuelTotal'></span> / <span data-bind='text: consumptionTotal'></span></span></div>
	<div><fmt:message key="d_time" bundle="${ship_builder}"/> <span data-bind='text: timeTotal' class='pull-right'></span></div>
</div>
 
<br>
<div id="details_res" class="details_res">
<%--
	<div><img src="<c:url value="img/ressource_small/titanium.png"/>" alt="Ti" /> <fmt:message key="d_titanium" bundle="${ship_builder}"/> <span data-bind='text: titaniumTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/copper.png"/>" alt="Ti" /> <fmt:message key="d_copper" bundle="${ship_builder}"/> <span data-bind='text: copperTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/iron.png"/>" alt="Ti" /> <fmt:message key="d_iron" bundle="${ship_builder}"/> <span data-bind='text: ironTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/aluminium.png"/>" alt="Ti" /> <fmt:message key="d_aluminium" bundle="${ship_builder}"/> <span data-bind='text: aluminiumTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/silicon.png"/>" alt="Ti" /> <fmt:message key="d_silicon" bundle="${ship_builder}"/> <span data-bind='text: siliconTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/uranium.png"/>" alt="Ti" /> <fmt:message key="d_uranium" bundle="${ship_builder}"/> <span data-bind='text: uraniumTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/nitrogen.png"/>" alt="Ti" /> <fmt:message key="d_nitrogen" bundle="${ship_builder}"/> <span data-bind='text: nitrogenTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/hydrogen.png"/>" alt="Ti" /> <fmt:message key="d_hydrogen" bundle="${ship_builder}"/> <span data-bind='text: hydrogenTotal' class='pull-right'></span></div>
	<div><img src="<c:url value="img/ressource_small/credit.png"/>" alt="Ti" /> <fmt:message key="d_sum" bundle="${ship_builder}"/> <span data-bind='text: sumTotal' class='pull-right'></span></div>
   --%>
   
	<div><div class="icon-titanium icon-ressource"></div> <fmt:message key="d_titanium" bundle="${ship_builder}"/> <span data-bind='text: titaniumTotal' class='pull-right'></span></div>
	<div><div class="icon-copper icon-ressource"></div> <fmt:message key="d_copper" bundle="${ship_builder}"/> <span data-bind='text: copperTotal' class='pull-right'></span></div>
	<div><div class="icon-iron icon-ressource"></div> <fmt:message key="d_iron" bundle="${ship_builder}"/> <span data-bind='text: ironTotal' class='pull-right'></span></div>
	<div><div class="icon-aluminium icon-ressource"></div> <fmt:message key="d_aluminium" bundle="${ship_builder}"/> <span data-bind='text: aluminiumTotal' class='pull-right'></span></div>
	<div><div class="icon-silicon icon-ressource"></div> <fmt:message key="d_silicon" bundle="${ship_builder}"/> <span data-bind='text: siliconTotal' class='pull-right'></span></div>
	<div><div class="icon-uranium icon-ressource"></div> <fmt:message key="d_uranium" bundle="${ship_builder}"/> <span data-bind='text: uraniumTotal' class='pull-right'></span></div>
	<div><div class="icon-nitrogen icon-ressource"></div> <fmt:message key="d_nitrogen" bundle="${ship_builder}"/> <span data-bind='text: nitrogenTotal' class='pull-right'></span></div>
	<div><div class="icon-hydrogen icon-ressource"></div> <fmt:message key="d_hydrogen" bundle="${ship_builder}"/> <span data-bind='text: hydrogenTotal' class='pull-right'></span></div>
	<div><span style="margin-left:14px"><fmt:message key="d_sum" bundle="${ship_builder}"/></span> <span data-bind='text: sumTotal' class='pull-right'></span></div>
   
<br>     
     </div>  
        
        </div> <!-- end col-md  -->
        <div class="col-md-8">
        
      
      
<div class="btn-group btn-group-justified" role="group" style="height:10px">
  <div class="btn-group" role="group">
    <button id="engine" type="button" class="btn btn-sm btn-default" data-bind="click: toggleComp('engine')"><fmt:message key="engines" bundle="${ship_builder}"/></button>
  </div>
  <div class="btn-group" role="group">
    <button id="weapon" type="button" class="btn btn-sm btn-default" data-bind="click: toggleComp('weapon')"><fmt:message key="weapons" bundle="${ship_builder}"/></button>
  </div>
  <div class="btn-group" role="group">
    <button id="defence" type="button" class="btn btn-sm btn-default" data-bind="click: toggleComp('defence')"><fmt:message key="defence" bundle="${ship_builder}"/></button>
  </div>
  <div class="btn-group" role="group">
    <button id="equipment" type="button" class="btn btn-sm btn-default" data-bind="click: toggleComp('equipment')"><fmt:message key="equipments" bundle="${ship_builder}"/></button>
  </div>
</div>


  <div data-bind="foreach: subComp" class="btn-group btn-group-justified" role="group" style="height:10px">
	  <div  role="group"class="btn-group">
	    <button type="button" class="btn btn-sm btn-default" data-bind="click: $parent.toggleSubComp($data.type)"> 
	    	<span data-bind="text: $data.text"></span>
	    </button>
	  </div>
   </div>

<br>
      
 <p class='cellsTotal'>
    <fmt:message key="m_cell" bundle="${ship_builder}"/>: <span id="total" data-bind='text:cellsTotal'></span>/<span data-bind='text:chassis_size'></span>
</p>

<div style="overflow:auto; height:500px;">
<table class="table table-condensed" width='100%'>
    <thead>
        <tr>
            <th></th>
            <th><fmt:message key="m_type" bundle="${ship_builder}"/></th>
            <th style="text-align:center"><fmt:message key="m_cell" bundle="${ship_builder}"/></th>
            <th style="text-align:center"><fmt:message key="m_time" bundle="${ship_builder}"/></th>
            <th style="text-align:center"><fmt:message key="m_amount" bundle="${ship_builder}"/></th>
        </tr>
    </thead>
    <tbody data-bind='foreach: lines'>
        <tr data-bind='visible: myViewModel.chassis_size() >= size() && compFilter()'>
		    <td> <div data-bind="attr:{class: image}"></div></td>
		   

		    <td><span style="font-weight: bold" data-bind="text: name"></span><BR/>
			<span data-bind="text: description"></span></td>
			<td style="text-align:center"><span data-bind="text: size"></span></td>
            <td style="text-align:center"><span data-bind="text: timeFormated"></span></td>
			<td style="text-align:center">
			<table><tbody>
				<td>
					<button type="button" class="btn btn-default" data-bind='click: function(){ ClickRemove(); $parent.CheckRemoveButton() }, disable: ClickRemoveOff'>-</button>
				 </td>
				<td>
					<input style="background-color:transparent;height:35px;text-align:center" size="1" type="text" data-bind="value: quantity,valueUpdate: 'afterkeyup', event: { change: function(){$parent.CheckAddButton();$parent.CheckRemoveButton()}}"/>
				</td>
				<td>
					<button type="button" class="btn btn-default" data-bind='click:  function(){ resetClicks(); $parent.CheckRemoveButton() }'>&#10227;</button>
				 </td>
				<td>
					<button type="button" class="btn btn-default" data-bind='enable: reachMaxCells, click:  function() { ClickAdd(); $parent.CheckAddButton() }'>+</button>
				 </td>
			</tbody></table>

        </tr>
    </tbody>
</table>
</div>
        </div>
      </div>
      
      



    </div><!-- /.container -->
    <div id="push"></div>

    </div><!-- /.wrap -->
    
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>




<script type="text/javascript" src="inc/knockout-3.3.js"></script>


<%-- <c:set var="chassisPathBegin" value="inc/chassis/chassis_"/>  --%>
<c:set var="compsPathBegin" value="inc/comps/comps_"/>
<fmt:message key="language" bundle="${navbar}" var="flagLng" />
<c:set var="PathEnd" value=".js"/>
                  
                  
<%-- <script type="text/javascript" src="<c:url value="${chassisPathBegin}${flagLng}${PathEnd}"/>" charset="UTF-8"> </script> --%>


 <script type="text/javascript" src="<c:url value="inc/chassis/chassis.js"/>" charset="UTF-8"> </script> 
 	  <c:choose>
						<c:when test="${server == 'global_infinity'}">
	                  <script type="text/javascript" src="<c:url value="inc/comps/comps_global.js"/>" charset="UTF-8"> </script>
	                </c:when>
					    <c:otherwise>
					    <script type="text/javascript" src="<c:url value="inc/comps/comps.js"/>" charset="UTF-8"> </script>
					    </c:otherwise>
					  </c:choose>

 
 
 
 <%--  <script type="text/javascript" src="<c:url value="${compsPathBegin}${flagLng}${PathEnd}"/>" charset="UTF-8"> </script> --%>  





<script>


<%@ include file="include/i18n/comp_type.jsp" %>
<%@ include file="include/i18n/chassis_name.jsp" %>
<%@ include file="include/i18n/comp_name.jsp" %>



<%@ include file="include/settings/js.jsp" %>


//var subCompList = { "engine" : ["Impulse","Warp"], "weapon": ["Projectile", "Laser","Ion"],"defence": ["Armor", "Shield"],"equipment": ["Mining", "Salvage","Cargo","Cloak","Colo","Scan","Troop","Fuel"]};



chassis[0]["no-chassis"] =[{
	 "no_chassis": [{
"name":"no_chassis",
"size": Infinity,
"hull":0,
"maneuv":0,
"tank":0,
"impulse": 0,
"warp":0,
"cloak":0,
"time":0,
"totCost":0,
"titanium":0,
"copper":0,
"iron":0,
"aluminium":0,
"silicon":0,
"uranium":0,
"nitrogen":0,
"hydrogen":0
}]}];



//find the 1st chassis for initialisation
var chassis_init;
for (var keyType in chassis[0]) {
	  if (chassis[0].hasOwnProperty(keyType)) {
		  var chassisList = chassis[0][keyType][0];
		  for (var keyChassis in chassisList) {
			  if (chassisList.hasOwnProperty(keyChassis)) {
					 var chassis_init = chassisList[keyChassis][0];
			  }
			  break;
		  }
			  
		  break;
	  }
}
	 

var maxCells= chassis_init.size;
$("#menu-icon").attr("class","icon-"+chassis_init.name);
		//console.log(chassis_init); 
		 
		 

var cellsUsed=0;
 
var CompLine = function(items) {
    //console.log(items);
    var self = this;
    
    self.compFilter = ko.observable();
    
    self.category = ko.observable(0);
    //comps properties
	self.name = ko.observable(compName[items.name]);
	self.image = ko.observable("icon-"+items.name);
	self.sizeArray = items.size;
	self.size = ko.computed(function (){
			return self.sizeArray[self.category()];
	});
	self.time = items.time;
	self.titanium = items.titanium;
	self.copper = items.copper;
	self.iron = items.iron;
	self.aluminium = items.aluminium;
	self.silicon = items.silicon;
	self.uranium = items.uranium;
	self.nitrogen = items.nitrogen;
	self.hydrogen = items.hydrogen;
	self.sum = items.totCost;
	
	
	

	 

	self.society = ko.observable(settings.society);
	self.war = ko.observable(settings.war);
	self.construction = ko.observable(settings.construction);
	self.economy = ko.observable(settings.economy);


	 self.updateSettings = function (settings){
		 this.society(settings.society);
		 this.war(settings.war);
		 this.construction(settings.construction);
		 this.economy(settings.economy);
	 }
	
	 
	 
	 
	
	self.timeFormated = ko.pureComputed(function() {
		 var time  =   Math.ceil ( items.time * (1 + self.society() * 0.05 ) * ( 1 - self.construction() * 0.005) /1.5152 );
	       
		 
			var timeToString = ""+ time;
		
		
			return timeToString.toDHMS();
	});
	

	self.quantity = ko.observable(0);
	
    self.cellsSub = ko.computed(function() {
        return self.quantity() * self.size();
    });
    
	self.reachMaxCells = ko.observable(true);
	self.showComp = ko.observable(true);
	
	
	self.quantity.subscribe(function(){
		var value = self.quantity();
		if (!value) value="0";
		if (isNaN(value)) {
			value = value.replace(/[^0-9]+/g,'');
			value = value.replace(/^0/g,'');
		}
		if (!value) value="0";
		
		
		self.quantity(parseFloat(value));
		
		if (cellsUsed > maxCells){
			var nbCellsExceeded = Math.ceil(cellsUsed-maxCells);
			value = Math.floor(value - nbCellsExceeded/self.size());
			cellsUsed = cellsUsed - nbCellsExceeded;
		}
		self.quantity(parseFloat(value));
		
	});
	
	self.timeSub = ko.computed(function() {
        return self.quantity() * self.time;
    });
	
	self.titaniumSub = ko.computed(function() {
        return self.quantity() * self.titanium;
    });
	
	self.copperSub = ko.computed(function() {
        return self.quantity() * self.copper;
    });
	
	self.ironSub = ko.computed(function() {
        return self.quantity() * self.iron;
    });
	
	self.aluminiumSub = ko.computed(function() {
        return self.quantity() * self.aluminium;
    });
	
	self.siliconSub = ko.computed(function() {
        return self.quantity() * self.silicon;
    });
	
	self.uraniumSub = ko.computed(function() {
        return self.quantity() * self.uranium;
    });
	
	self.nitrogenSub = ko.computed(function() {
        return self.quantity() * self.nitrogen;
    });
	
	self.hydrogenSub = ko.computed(function() {
        return self.quantity() * self.hydrogen;
    });
	
	self.sumSub = ko.computed(function() {
        return self.quantity() * self.sum;
    });
	
	
	
    this.ClickRemove = function() {
        this.quantity(this.quantity() - 1);
    };
	
	this.ClickAdd = function() {
	    var value = parseFloat(this.quantity())+1;
		this.quantity(value + "");
	};
	
    this.ClickRemoveOff = ko.computed(function() {
        return this.quantity() <= 0;
    }, this);
	
	this.resetClicks = function() {
        this.quantity(0);
    };
	
	//not used
	this.isFitting = function() {
	   return ( cellsUsed + this.size() > maxCells);
	}
	
};
 
 
 var Impulse = function(items, type) {
	var self = this;
	self.lineType = ko.observable("engine");
	self.compType = type;
	self.compImpulse = items.impulse;
	self.chassis_impulse = ko.observable(chassis_init.impulse);//init
	self.impulse =  ko.computed(function (){
		return self.compImpulse*self.chassis_impulse();
	});
	self.consumption = items.consumption;
	
	
    //Extending this class from MyBaseType
    ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(Math.floor(self.impulse()))+ " <fmt:message key="d_impulse" bundle="${ship_builder}"/> " + "+" +self.consumption+ " <fmt:message key="d_consumption" bundle="${ship_builder}"/> ";
	});
	
	self.impulseSub = ko.computed(function() {
        return self.quantity() * self.impulse();
    });
	
	self.consumptionSub = ko.computed(function() {
        return self.quantity() * self.consumption;
    });
	
	


		
}




var Warp = function(items, type) {
	var self = this;
	self.lineType = ko.observable("engine");
	self.compType = type;
	self.compImpulse = items.impulse;
	self.compWarp = items.warp;
	self.chassis_impulse = ko.observable(chassis_init.impulse);//init
	self.chassis_warp = ko.observable(chassis_init.warp);//init
	self.impulse =  ko.computed(function (){
		return self.compImpulse*self.chassis_impulse();
	});
	self.warp =  ko.computed(function (){
		return items.warp*self.chassis_warp();
	});
	self.consumption = items.consumption;
	
	    //Extending this class from MyBaseType
    ko.utils.extend(self, new CompLine(items));
	
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(Math.floor(self.impulse()))+ " <fmt:message key="d_impulse" bundle="${ship_builder}"/> +" +numberWithCommas(Math.floor(self.warp()))+ " <fmt:message key="d_warp" bundle="${ship_builder}"/> " + "+" +self.consumption+ " <fmt:message key="d_consumption" bundle="${ship_builder}"/> ";
	});
	
	
	self.impulseSub = ko.computed(function() {
        return self.quantity() * self.impulse();
    });
	self.warpSub = ko.computed(function() {
        return self.quantity() * self.warp();
    });
	
	
	self.consumptionSub = ko.computed(function() {
        return self.quantity() * self.consumption;
    });
}




var Projectile = function(items, type) {
	var self = this;
	self.lineType = ko.observable("weapon");
	self.compType = type;
	self.compAim = items.aim;
	self.compProjectile = items.attack;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compProjectile)+ " <fmt:message key="d_attack" bundle="${ship_builder}"/> (<fmt:message key="d_projectile" bundle="${ship_builder}"/>) " + "+" +self.compAim+ " <fmt:message key="d_aiming" bundle="${ship_builder}"/> ";
	});
	
	
	self.projectileSub = ko.computed(function() {
       return self.quantity() * self.compProjectile;
   });
}
	
var Ion = function(items, type) {
	var self = this;
	self.lineType = ko.observable("weapon");
	self.compType = type;
	self.compAim = items.aim;
	self.compIon = items.attack;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compIon)+ " <fmt:message key="d_attack" bundle="${ship_builder}"/> (<fmt:message key="d_ion" bundle="${ship_builder}"/>) " + "+" +self.compAim+ " <fmt:message key="d_aiming" bundle="${ship_builder}"/> ";
	});
	
	
	self.ionSub = ko.computed(function() {
       return self.quantity() * self.compIon;
   });	
}


var Laser = function(items, type) {
	var self = this;
	self.lineType = ko.observable("weapon");
	self.compType = type;
	self.compAim = items.aim;
	self.compLaser = items.attack;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compLaser)+ " <fmt:message key="d_attack" bundle="${ship_builder}"/> (<fmt:message key="d_laser" bundle="${ship_builder}"/>) " + "+" +self.compAim+ " <fmt:message key="d_aiming" bundle="${ship_builder}"/> ";
	});
	
	
	self.laserSub = ko.computed(function() {
       return self.quantity() * self.compLaser;
   });
}

var Armor = function(items, type) {
	var self = this;
	self.lineType = ko.observable("defence");
	self.compType = type;
	self.compArmor = items.armor;//its an array
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compArmor[self.category()])+ " <fmt:message key="d_resilience" bundle="${ship_builder}"/>";
	});
	
	self.armorSub = ko.computed(function() {
       return self.quantity() * self.compArmor[self.category()];
   });
}

var Shield = function(items, type) {
	var self = this;
	self.lineType = ko.observable("defence");
	self.compType = type;
	self.compShield = items.shield;//its an array
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compShield[self.category()])+ " <fmt:message key="d_shield" bundle="${ship_builder}"/>";
	});
	
	self.shieldSub = ko.computed(function() {
       return self.quantity() * self.compShield[self.category()];
   });
}



var Mining = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compCargo = items.cargo;
	self.compRate = items.rate;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compCargo)+ " <fmt:message key="d_cargo" bundle="${ship_builder}"/> +" +self.compRate+ " <fmt:message key="d_asteroid_quarying" bundle="${ship_builder}"/>";
	});
	

	self.cargoSub = ko.computed(function() {
       return self.quantity() * self.compCargo;
       
   });
	
	self.miningRateSub = ko.computed(function() {
       return self.quantity() * self.compRate;
   });
}



var Salvage = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compCargo = items.cargo;
	self.compRate = items.rate;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compCargo)+ " <fmt:message key="d_cargo" bundle="${ship_builder}"/> +" +self.compRate+ " <fmt:message key="d_wreckage_quarying" bundle="${ship_builder}"/>";
	});
	

	self.cargoSub = ko.computed(function() {
       return self.quantity() * self.compCargo;
       
   });
	
	self.salvageRateSub = ko.computed(function() {
       return self.quantity() * self.compRate;
   });
}

var Cargo = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compCargo = items.cargo;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compCargo)+ " <fmt:message key="d_cargo" bundle="${ship_builder}"/>";
	});
	

	self.cargoSub = ko.computed(function() {
       return self.quantity() * self.compCargo;
       
   });
}



var Cloak = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compCloak = items.cloak;
	self.chassis_cloak = ko.observable(chassis_init.cloak);//init
	self.chassis_cells = ko.observable(chassis_init.size);//init
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
   
   self.cloak =  ko.computed(function (){
		return Math.round(100*5*self.compCloak*self.chassis_cloak()/self.chassis_cells())/100;
	});
	
	self.description =  ko.computed(function (){
		var current_cloak = self.cloak(),
			cloak_max = 4.95;
		var pc = Math.floor( Math.min(cloak_max,current_cloak) );
		var ae = Math.floor( ( 100 * Math.min(cloak_max,current_cloak) ) % 100 );
		return "+" +pc + "pc " + ae + "ae";
	});
	

	self.cloakSub = ko.computed(function() {
       return self.quantity() * self.cloak();
       
   });
}


var Colo = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+1 <fmt:message key="d_colonization" bundle="${ship_builder}"/>";
	});
	

}


var Scan = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compScan = items.scan;
	
	
    //Extending this class from MyBaseType
    ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +self.compScan+ " <fmt:message key="d_scan" bundle="${ship_builder}"/>";
	});
	

	self.scanSub = ko.computed(function() {
       return self.quantity() * self.compScan;
       
   });
}


var Troop = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compTroop = items.troop;
	self.compManeuv = items.maneuv;
	
	
    //Extending this class from MyBaseType
    ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compTroop)+ " <fmt:message key="d_troops" bundle="${ship_builder}"/> -" + self.compManeuv + " <fmt:message key="d_maneuverability" bundle="${ship_builder}"/>";
	});
	

	self.troopSub = ko.computed(function() {
       return self.quantity() * self.compTroop;
       
   });
}


var Fuel = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compFuel = items.fuel;
	
	
    //Extending this class from MyBaseType
    ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compFuel)+ " <fmt:message key="d_fuel" bundle="${ship_builder}"/>";
	});
	

	self.fuelSub = ko.computed(function() {
       return self.quantity() * self.compFuel;
       
   });
}

var Jammer = function(items, type) {
	var self = this;
	self.lineType = ko.observable("jammer");
	self.compType = type;
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "<fmt:message key="d_jammer" bundle="${ship_builder}"/>";
	});
	

}



var ViewModel = function() {
    // Stores an array of lines, and from these, can work out the cellsTotal
    var self = this;
    console.log(chassis_init.name);
    console.log(chassisName[chassis_init.name]);
    
    self.chassis_name = ko.observable(chassisName[chassis_init.name]);
    self.chassis_size = ko.observable(chassis_init.size);
    self.chassis_hull = ko.observable(chassis_init.hull);
    self.chassis_maneuv = ko.observable(chassis_init.maneuv);
    self.chassis_tank = ko.observable(chassis_init.tank);
    self.chassis_impulse = ko.observable(chassis_init.impulse);
	self.chassis_warp = ko.observable(chassis_init.warp);
	self.chassis_cloak = ko.observable(chassis_init.cloak);
	self.chassis_time = ko.observable(chassis_init.time);
	self.chassis_titanium = ko.observable(chassis_init.titanium);
	self.chassis_copper = ko.observable(chassis_init.copper);
	self.chassis_iron = ko.observable(chassis_init.iron);
	self.chassis_aluminium = ko.observable(chassis_init.aluminium);
	self.chassis_silicon = ko.observable(chassis_init.silicon);
	self.chassis_uranium = ko.observable(chassis_init.uranium);
	self.chassis_nitrogen = ko.observable(chassis_init.nitrogen);
	self.chassis_hydrogen = ko.observable(chassis_init.hydrogen);
	self.chassis_sum = ko.observable(chassis_init.totCost);
    
	
		 
		 
	self.chassis_quantity = ko.observable(1);
	
	
	self.society = ko.observable(settings.society);
	self.war = ko.observable(settings.war);
	self.construction = ko.observable(settings.construction);
	self.economy = ko.observable(settings.economy);


    //we add the comps
    self.lines = ko.observableArray([new Impulse(comps[0].impulse[0],"impulse")]);
    var init = true;
	for (var keyType in comps[0]) {
	  if (comps[0].hasOwnProperty(keyType)) {
		  var compsList = comps[0][keyType];
	  	  
	  	 
		  for (var keyComp = 0; keyComp < compsList.length; keyComp++) {
				
			 var currentComp = compsList[keyComp];
			 
			 
			  
			 if (init) {
				
				 init = false;
			 } else {
				 if (keyType == "impulse"){
					 self.lines.push(new Impulse(currentComp, "impulse"));
				 } else if (keyType == "warp") {
					 self.lines.push(new Warp(currentComp, "warp"));
				 } else if (keyType == "projectile") {
					 self.lines.push(new Projectile(currentComp, "projectile"));
				 } else if (keyType == "ion") {
					 self.lines.push(new Ion(currentComp, "ion"));
				 } else if (keyType == "laser") {
					 self.lines.push(new Laser(currentComp, "laser"));
				 } else if (keyType == "armor") {
					 self.lines.push(new Armor(currentComp, "armor"));
				 } else if (keyType == "shield") {
					 self.lines.push(new Shield(currentComp, "shield"));
				 } else if (keyType == "mining") {
					 self.lines.push(new Mining(currentComp, "mining"));
				 } else if (keyType == "salvage") {
					 self.lines.push(new Salvage(currentComp, "salvage"));
				 } else if (keyType == "cargo") {
					 self.lines.push(new Cargo(currentComp, "cargo"));
				 } else if (keyType == "cloak") {
					 self.lines.push(new Cloak(currentComp, "cloak"));
				 } else if (keyType == "colo") {
					 self.lines.push(new Colo(currentComp, "colo"));
				 } else if (keyType == "scan") {
					 self.lines.push(new Scan(currentComp, "scan"));
				 } else if (keyType == "troop") {
					 self.lines.push(new Troop(currentComp, "troop"));
				 } else if (keyType == "fuel") {
					 self.lines.push(new Fuel(currentComp, "fuel"));
				 } else if (keyType == "jammer") {
					 self.lines.push(new Jammer(currentComp, "jammer"));
				 }
			  }
		   }
	    }
	}
  

    
    
self.chassis_quantity.subscribe(function(){
	var value = self.chassis_quantity();
	if (!value) value="0";
	if (isNaN(value)) {
		value = value.replace(/[^0-9]+/g,'');
		value = value.replace(/^0/g,'');
	}
	if (!value) value="0";
	
	self.chassis_quantity(parseFloat(value));
	
});


this.ChassisClickRemove = function() {
    this.chassis_quantity(this.chassis_quantity() - 1);
};

this.chassisClickRemoveOff = ko.computed(function() {
    return this.chassis_quantity() <= 1;
}, this);

this.resetChassisClicks = function() {
    this.chassis_quantity(1);
};

this.ChassisClickAdd = function() {
    var value = parseFloat(this.chassis_quantity())+1;
	this.chassis_quantity(value + "");
};



	self.miningTooltipEnabled = ko.observable(false);
	self.enableMiningTooltip= function() {
	        this.miningTooltipEnabled(true);
	};
	self.disableMiningTooltip = function() {
	        this.miningTooltipEnabled(false);
	};
  
	self.salvageTooltipEnabled = ko.observable(false);
	self.enableSalvageTooltip= function() {
	        this.salvageTooltipEnabled(true);
	};
	self.disableSalvageTooltip = function() {
	        this.salvageTooltipEnabled(false);
	};
	
	
	self.laserTooltipEnabled = ko.observable(false);
	self.enableLaserTooltip= function() {
	        this.laserTooltipEnabled(true);
	};
	self.disableLaserTooltip = function() {
	        this.laserTooltipEnabled(false);
	};
	
	
	
	self.projectileTooltipEnabled = ko.observable(false);
	self.enableProjectileTooltip= function() {
	        this.projectileTooltipEnabled(true);
	};
	self.disableProjectileTooltip = function() {
	        this.projectileTooltipEnabled(false);
	};
	
	
	self.ionTooltipEnabled = ko.observable(false);
	self.enableIonTooltip= function() {
	        this.ionTooltipEnabled(true);
	};
	self.disableIonTooltip = function() {
	        this.ionTooltipEnabled(false);
	};
	

	self.cellsTotal = ko.computed(function() {
	   var total = 0;
	      $.each(self.lines(), function() { 
	      	if(!isNaN(this.cellsSub())) { 
	      		total += this.cellsSub()
	      	}
	      })
			cellsUsed = total;
	      return total;
	  });
	  
	
	 self.impulseTotal = ko.computed(function() {
	    var total = 0;
        $.each(self.lines(), function() { 
        	try {
			total += this.impulseSub();
			}
			catch(err){
			}
		})
		if(self.chassis_size() == 5) total += 2000;
        return numberWithCommas(Math.floor(total));
    });
	 
	
	 self.warpTotal = ko.computed(function() {
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.warpSub();
			}
			catch(err){
			}
		})
		if(self.chassis_size() == 5) total += 4000;
		//cellsUsed = total;
        return numberWithCommas(Math.floor(total));
    });
	

	self.consumptionTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.consumptionSub();
			}
			catch(err){
			}
		})
		if(self.chassis_size() == 5) total += 1.2;
        return Math.floor(total*10)/10;
    });
	
	self.projectileTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.projectileSub();
			}
			catch(err){
			}
		})
        return numberWithCommas(total);
    });
	
	self.ionTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.ionSub();
			}
			catch(err){
			}
		})
        return numberWithCommas(total);
    });
	
	self.laserTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.laserSub();
			}
			catch(err){
			}
		})
        return numberWithCommas(total);
    });
	
	self.armorTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.armorSub();
			}
			catch(err){
			}
		})
		total += self.chassis_hull();
        return numberWithCommas(total);
    });
	
	
	self.shieldTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.shieldSub();
			}
			catch(err){
			}
		})
        return numberWithCommas(total);
    });
	
	
	self.cargoTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.cargoSub();
			}
			catch(err){
			}
		})
        return numberWithCommas(total);
    });
	
	
	self.miningRateTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.miningRateSub();
			}
			catch(err){
			}
		})
        return numberWithCommas(total);
    });
	
	self.salvageRateTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.salvageRateSub();
			}
			catch(err){
			}
		})

        return numberWithCommas(total);
    });
	
	 self.cloakTotal = ko.computed(function() {
		    var total = 0;
	        $.each(self.lines(), function() { 
	        	try {
				total += this.cloakSub();
				}
				catch(err){
				}
			})
			var cloak_max = 4.95;
			var pc = Math.floor( Math.min(cloak_max,total) );
			var ae = Math.floor( ( 100 * Math.min(cloak_max,total) ) % 100 );
			return ( pc == 0 && ae == 0 ? 0 :"99% " +pc + "pc " + ae + "ae");
	    });
	 
	 self.scanTotal = ko.computed(function(){
		    var total = 0;
	        $.each(self.lines(), function() { 
				try {
					total += this.scanSub();
				}
				catch(err){
				}
			})
	        return numberWithCommas(total);
	    });
	 
	 
	 self.troopTotal = ko.computed(function(){
		    var total = 0;
	        $.each(self.lines(), function() { 
				try {
					total += this.troopSub();
				}
				catch(err){
				}
			})
	        return numberWithCommas(total);
	    });
	 
	 
	 
	 self.fuelTotal = ko.computed(function(){
		    var total = 0;
	        $.each(self.lines(), function() { 
				try {
					total += this.fuelSub();
				}
				catch(err){
				}
			})
	        total += self.chassis_tank();
	        return numberWithCommas(total);
	    });
	 
	 
	self.timeTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.timeSub();
			}
			catch(err){
			}
		})
        total += self.chassis_time();
        
        total =   Math.ceil ( total * (1 + self.society() * 0.05 ) * ( 1 - self.construction() * 0.005) /1.5152 );
        var totalToString = ""+total;
        return totalToString.toDHMS();
    });
	
	self.titaniumTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.titaniumSub();
			}
			catch(err){
			}
		})
        total += self.chassis_titanium();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.copperTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.copperSub();
			}
			catch(err){
			}
		})
        total += self.chassis_copper();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.ironTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.ironSub();
			}
			catch(err){
			}
		})
        total += self.chassis_iron();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.aluminiumTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.aluminiumSub();
			}
			catch(err){
			}
		})
        total += self.chassis_aluminium();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.siliconTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.siliconSub();
			}
			catch(err){
			}
		})
        total += self.chassis_silicon();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.uraniumTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.uraniumSub();
			}
			catch(err){
			}
		})
        total += self.chassis_uranium();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.nitrogenTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.nitrogenSub();
			}
			catch(err){
			}
		})
        total += self.chassis_nitrogen();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.hydrogenTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.hydrogenSub();
			}
			catch(err){
			}
		})
        total += self.chassis_hydrogen();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	

	
	self.sumTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.sumSub();
			}
			catch(err){
			}
		})
        total += self.chassis_sum();
        total = total * self.chassis_quantity();
        
        total = getResCost(total);
       
        return numberWithCommas(total);
    });
	
	
	 

	function getResCost(cost) {
	 	cost = Math.ceil ( cost * (1 - self.society() * 0.05 ) * ( 1 - self.economy() * 0.005) );
		return cost;
	};
	
	
		
		
	function getCost(cost) {
		 	cost = Math.ceil ( cost * (1 - self.society() * 0.05 ) * ( 1 - self.economy() * 0.005) );
			return numberWithCommas(cost);
		};
		 
		 

		function getUpkeep(upkeep) {
		 	upkeep =  Math.ceil ( upkeep * (1 - self.war() * 0.1 ) );
			return numberWithCommas(upkeep);
		};
		 
		 
		 
	
	self.CheckAddButton = function() {
		$.each(self.lines(), function() {
			if (parseFloat($("#total").html()) + this.size() > maxCells) {
				this.reachMaxCells(false);
			}
		})
	};
	
	self.CheckRemoveButton = function() {
		$.each(self.lines(), function() {
		if (parseFloat($("#total").html()) + this.size() <= maxCells) {
			this.reachMaxCells(true);
		}
		})
	};
	

	self.changeChassis = function(type, name) {
       	//we close the dropdown menu
       	$('li.dropdown')
       		.removeClass("open");
       		//.removeAttr("style")
       	$('#menu1')
       		.css("display","none");
       	setTimeout(function() { $('#menu1').removeAttr("style"); }, 500);
       	//console.log($(this).attr("id"));
        
       	//console.log(type+ " " +name);
		var currentChassis = chassis[0][type][0][name][0];
		console.log();
        document.getElementById("menu-icon").setAttribute("class", "icon-"+currentChassis.name);
		//this.CheckAddButton();
		//this.CheckRemoveButton();
		$.each(self.lines(), function() {
			//console.log("this.impulseSub()="+this.impulseSub());
			this.resetClicks();
			this.category(maxCells <= 40 ? 0 : 1);
			if (this.compType == "impulse" || this.compType == "warp") this.chassis_impulse(currentChassis.impulse);
			if (this.compType == "warp") this.chassis_warp(currentChassis.warp);
			if (this.compType == "cloak") {
				this.chassis_cloak(currentChassis.cloak);
				this.chassis_cells(currentChassis.size);
			}
			
			
			this.reachMaxCells(true);
			
		});
		
		maxCells = currentChassis.size;

		this.chassis_name(chassisName[currentChassis.name]);
		this.chassis_size(maxCells);
		this.chassis_tank(currentChassis.tank);
		this.chassis_hull(currentChassis.hull);
		this.chassis_time(currentChassis.time);
		this.chassis_titanium(currentChassis.titanium);
		this.chassis_copper(currentChassis.copper);
		this.chassis_iron(currentChassis.iron);
		this.chassis_aluminium(currentChassis.aluminium);
		this.chassis_silicon(currentChassis.silicon);
		this.chassis_uranium(currentChassis.uranium);
		this.chassis_nitrogen(currentChassis.nitrogen);
		this.chassis_hydrogen(currentChassis.hydrogen);
		this.chassis_sum(currentChassis.totCost);
		//TODO update mini menu chassis image
		// and update chassis_warp

	}
	
	
	self.subComp = ko.observableArray();
	self.toggleSubComp= function (type){
	//console.log(type);
	$.each(self.lines(), function() {
		     	if (this.compType == type) {
		    		this.compFilter(true);
		    	} else {
		    		this.compFilter(false);
		    	}				
		});
	 }
	 
	
	 self.toggleComp = function (compToShow){
		 //console.log(subCompListType[compToShow]);
		 self.subComp(subCompListType[compToShow]);
		 //console.log(subCompList[compToShow]);
		 for (var keyType in subCompListType) {
			 
			  if (subCompListType.hasOwnProperty(keyType)) {
				  if(keyType == compToShow) {
					  $("#"+keyType).css('background-color','#DDDDDD');
				  //console.log(keyType +" = " +compToShow);
				  }else {
					  $("#"+keyType).css('background-color','#FFFFFF');
					  //console.log(keyType +" != " +compToShow);
				  }
			  }
		 }
		 $.each(self.lines(), function() {
			 
			 switch(compToShow) {
			    case "engine":
			    	//console.log(compToShow + " = " + this.compType);
			    	if (this.compType == "impulse" || this.compType == "warp") {
			    		this.compFilter(true);
			    	} else {
			    		this.compFilter(false);
			    	}
			        break;
			    case "weapon":
			    	//console.log(compToShow + " = " + this.compType);
			    	if (this.compType == "projectile" || this.compType == "laser" || this.compType == "ion") {
			    		this.compFilter(true);
			    	} else {
			    		this.compFilter(false);
			    	}
			        break;
			    case "defence":
			    	//console.log(compToShow + " = " + this.compType);
			    	if (this.compType == "armor" || this.compType == "shield") {
			    		this.compFilter(true);
			    	} else {
			    		this.compFilter(false);
			    	}
			        break;
			    case "equipment":
			    	//console.log(compToShow + " = " + this.compType);
			    	if (this.compType == "mining"   ||
				    	this.compType == "salvage"  || 
				    	this.compType == "cargo"    || 
				    	this.compType == "cloak"    || 
				    	this.compType == "colo"     || 
				    	this.compType == "scan"     || 
				    	this.compType == "troop"    || 
				    	this.compType == "fuel"    || 
			    		this.compType == "jammer") {
			    		this.compFilter(true);
			    	} else {
			    		this.compFilter(false);
			    	}
			        break;
			 } 	
		});
	 }
	
	 
	 self.updateSettings = function (settings){
		 this.society(settings.society);
		 this.war(settings.war);
		 this.construction(settings.construction);
		 this.economy(settings.economy);
		 $.each(self.lines(), function() { 
			 this.society(settings.society);
			 this.war(settings.war);
			 this.construction(settings.construction);
			 this.economy(settings.economy);
		 });
	 }
	
	
    
};

var myViewModel = new ViewModel();
ko.applyBindings(myViewModel);


//console.log(chassis);



//console.log(chassis[0].small[0].lancer[0].name);
//
//
// **  fill the select menu **
//
//

var typeList = chassis[0];

for (var keyType in typeList) {
  if (typeList.hasOwnProperty(keyType)) {
	  var chassisList = typeList[keyType][0];
 	  //var sel = document.getElementById(chassisType[i]);
 	  //console.log(keyType);
  	  var typeId = $("#" +keyType);
  	  //console.log(keyType);
  	  //console.log(typeId)
  
  	  
  	  //TODO - is this really the place to put this
  var tableTitle = $('<tr></tr>')
  	.append($('<th></th>'))
  	.append($('<th><fmt:message key="name" bundle="${ship_builder}"/></th>'))
  	.append($('<th><fmt:message key="hull" bundle="${ship_builder}"/></th>'))
  	.append($('<th><fmt:message key="maneuverability" bundle="${ship_builder}"/></th>'))
  	.append($('<th><fmt:message key="size" bundle="${ship_builder}"/></th>'));
  	
  var table =$('<table></table>')
  	.append(tableTitle);
  for (var keyChassis in chassisList) {
	  if (chassisList.hasOwnProperty(keyChassis)) {
		 var currentChassis = chassisList[keyChassis][0];
		 var line = $('<tr></tr>')
		  .addClass("clickable")
		  .attr({"id": keyChassis})
		  .click(function() {
			 //console.log( $(this).parent().parent().parent().parent());
			 //FIXME need to call twice
		  	myViewModel.changeChassis($(this).parent().parent().parent().parent().attr("id"),$(this).attr("id"));
		  	myViewModel.changeChassis($(this).parent().parent().parent().parent().attr("id"),$(this).attr("id"));
		  });
		 var tdImage = $('<td></td>')
		 	.append($('<div></div>')
		 			  .addClass("icon-"+ currentChassis.name)
		       // .attr({ src : currentChassis.image})
		     );
		 var tdName = $('<td></td>')
		    .append(chassisName[currentChassis.name]);
		 var tdHull = $('<td></td>')
		    .append(currentChassis.hull);
		 var tdManeuv = $('<td></td>')
		    .append(currentChassis.maneuv);
		 var tdSize = $('<td></td>')
		    .append(currentChassis.size);
		 
		 line.append(tdImage)
		  	.append(tdName)
		   	.append(tdHull)
		   	.append(tdManeuv)
		   	.append(tdSize);
		table.append(line);
	  }  
   }
  
   

  var line = $('<li></li>').append(table);
  typeId.append(line);
  
  

  	  
   }
}




myViewModel.toggleComp("engine");


$("#step-up-society,#step-up-war,#step-up-construction,#step-up-economy,#step-down-society,#step-down-war,#step-down-construction,#step-down-economy").click(function () {
	  myViewModel.updateSettings(settings);
});


$("#rangeinput_society,#rangeinput_war,#rangeinput_construction,#rangeinput_economy").change(function () {
	  myViewModel.updateSettings(settings);
});



/* RESPONSIVE DISPLAY
 * ---------------------------------
 */
if($(window).width() > 970) {
	$("#details_stat").removeClass("details_stat");
	$("#details_res").removeClass("details_res");
}

$( window ).resize(function() {console.log($(window).width());
	if($(window).width() > 970) {
		$("#details_stat").removeClass("details_stat");
		$("#details_res").removeClass("details_res");
	}else {
		$("#details_stat").addClass("details_stat");
		$("#details_res").addClass("details_res");
	}
	  
	});

    


$("#navbar-tools").css({color:"#FFFFFF"});
$("#navbar-ship-builder").css({color:'#FFFFFF'});









</script>
    
    
    



    
  </body>
</html>