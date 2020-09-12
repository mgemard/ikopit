<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="settings" var="settings"/>
<fmt:setBundle basename="troop_builder" var="ship_builder" />
<fmt:setBundle basename="troop_name" var="chassis_name"/>
<fmt:setBundle basename="components_troop_name" var="components_name"/>

 

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
 

<br>

<%@ include file="include/settings/html.jsp" %>

  

 
  </br>

 
  </br>
  </br>


       <%-- <img class="sprite sprite.chassis_small sprite.chassis_small.adam"></img>  --%>  
                  
      <div class="row">
        <div class="col-md-4">
        
       <%--  Number of ship/troop to build
       -----------------------------------------------%>  
       
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

       <%--  Selection of ship/troop to build
       -----------------------------------------------%>  
      
<div class="bs-example">
    <ul class="nav nav-pills" role="tablist">
      <li role="presentation" class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><div id="menu-icon" ></div> <span class="caret"></span></a>
        <ul id="menu1" class="dropdown-menu scrollable-menu" role="menu" aria-labelledby="drop4">
          
          <div id="menu-troop-list">
          	
          </div>
          
        </ul>
      </li>
    </ul> <!-- /pills -->
  </div> <!-- /example -->
  
  
         <%--  Details of stats
       -----------------------------------------------%>  
       
    
  <div id="details_stat" class="details_stat">
  <br>
	
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
	<div><fmt:message key="d_accuracy" bundle="${ship_builder}"/><span class='pull-right'><span data-bind='text: accuracyTotal'></span></span></div>
	<div><fmt:message key="d_mobility" bundle="${ship_builder}"/> / <fmt:message key="d_agility" bundle="${ship_builder}"/><span class='pull-right'><span class='pull-right'><span data-bind='text: mobilityTotal'></span> / <span data-bind='text: agilityTotal'></span></span></div>

	<div><fmt:message key="d_cargo" bundle="${ship_builder}"/><span class='pull-right'><span data-bind='text: cargoTotal'></span></span></div>
	
	<div><fmt:message key="d_time" bundle="${ship_builder}"/> <span data-bind='text: timeTotal' class='pull-right'></span></div>
</div>

 
 
<br>

       <%--  Details of ressources/credits cost
       -----------------------------------------------%>  
     
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
	<div><div class="icon-credit icon-ressource"></div> <fmt:message key="d_cost" bundle="${ship_builder}"/> / <fmt:message key="d_upkeep" bundle="${ship_builder}"/><span  class='pull-right'><span data-bind='text: costTotal'></span> / <span data-bind='text: upkeepTotal'></span></span></div>
   
<br>     
     </div>  
      
        
        </div> <!-- end col-md  -->
        
        
       <%--  Comp menu
       -----------------------------------------------%>  
       
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

		<%--  Comp sub-menu
       -----------------------------------------------%>  

  <div data-bind="foreach: subComp" class="btn-group btn-group-justified" role="group" style="height:10px">
	  <div  role="group"class="btn-group">
	    <button type="button" class="btn btn-sm btn-default" data-bind="click: $parent.toggleSubComp($data.type)"> 
	    	<span data-bind="text: $data.text"></span>
	    </button>
	  </div>
   </div>


<br>
		<%--  Cells used / Max cells
       -----------------------------------------------%>  
      
      
 <p class='cellsTotal'>
    <fmt:message key="m_cell" bundle="${ship_builder}"/>: <span id="total" data-bind='text:cellsTotal'></span>/<span data-bind='text:chassis_size'></span>
</p>


		<%--  List of comps
       -----------------------------------------------%> 
       
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
		  <%-- <td> <div data-bind="attr:{class: image}"></div></td> --%> 
		    <td> <img src="img/ground_dummy.gif"></img</td>
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


<%-- <c:set var="chassisPathBegin" value="inc/chassis/chassis_"/> 
<c:set var="compsPathBegin" value="inc/comps/comps_"/>
<fmt:message key="language" bundle="${navbar}" var="flagLng" />
<c:set var="PathEnd" value=".js"/>
                   --%>
                  
<%-- <script type="text/javascript" src="<c:url value="${chassisPathBegin}${flagLng}${PathEnd}"/>" charset="UTF-8"> </script> --%>


 <script type="text/javascript" src="<c:url value="inc/troops/troops.js"/>" charset="UTF-8"> </script> 
 <script type="text/javascript" src="<c:url value="inc/comps_troops/comps_troops.js"/>" charset="UTF-8"> </script> 
 
 <%--  <script type="text/javascript" src="<c:url value="${compsPathBegin}${flagLng}${PathEnd}"/>" charset="UTF-8"> </script> --%>  





<script>


<%@ include file="include/i18n/comp_troop_type.jsp" %>
<%@ include file="include/i18n/troop_name.jsp" %>
<%@ include file="include/i18n/comp_troop_name.jsp" %>



<%@ include file="include/settings/js.jsp" %>



//var subCompList = { "engine" : ["Impulse","Warp"], "weapon": ["Projectile", "Laser","Ion"],"defence": ["Armor", "Shield"],"equipment": ["Mining", "Salvage","Cargo","Cloak","Colo","Scan","Troop","Fuel"]};




chassis.push(
{
	   "name": "no_chassis",
	   "size": Infinity,
	   "agility": 0,
	   "hull": 0,
	   "capacity":0,
	   "cost":0,
	   "upkeep":0,
	   "time":0
});

//find the 1st chassis for initialisation
var chassis_init = chassis[0];




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
	self.size = ko.observable(items.size);
	self.time = items.time;
	self.titanium = items.titanium;
	self.copper = items.copper;
	self.iron = items.iron;
	self.aluminium = items.aluminium;
	self.silicon = items.silicon;
	self.uranium = items.uranium;
	self.nitrogen = items.nitrogen;
	self.hydrogen = items.hydrogen;
	
	
	

	 

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
        return self.quantity() * (self.titanium + self.copper 
        		+ self.iron + self.aluminium + self.silicon 
        		+ self.uranium + self.nitrogen + self.hydrogen);
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
 
 
 var Transport = function(items, type) { 
	var self = this;
	self.lineType = ko.observable("engine");
	self.compType = type;
	self.compAgility = items.agility;
	self.compMobility = items.mobility;
	self.compArmor = items.armor;
	
	
    //Extending this class from MyBaseType
    ko.utils.extend(self, new CompLine(items));
	
	
	self.description = ko.computed(function (){
		var result ="+" +self.compAgility+ " <fmt:message key="d_agility" bundle="${ship_builder}"/> " + "+" +numberWithCommas(self.compMobility)+ " <fmt:message key="d_mobility" bundle="${ship_builder}"/>";
		console.log(self.compArmor > 0);
		if (self.compArmor > 0) {
			result += " +"+ self.compArmor+ " <fmt:message key="d_amount" bundle="${ship_builder}"/>";
		}
		return result;
	});
	
	self.agilitySub = ko.computed(function() {
        return self.quantity() * self.compAgility;
    });
	
	self.mobilitySub = ko.computed(function() {
        return self.quantity() * self.compMobility;
    });
	
	self.armorSub = ko.computed(function() {
        return self.quantity() * self.compArmor;
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
	self.compArmor = items.armor;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compArmor)+ " <fmt:message key="d_resilience" bundle="${ship_builder}"/>";
	});
	
	self.armorSub = ko.computed(function() {
       return self.quantity() * self.compArmor;
   });
}

var Shield = function(items, type) {
	var self = this;
	self.lineType = ko.observable("defence");
	self.compType = type;
	self.compShield = items.shield;

	self.compAgility = items.agility;
	

	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compShield)+ " <fmt:message key="d_shield" bundle="${ship_builder}"/> " +numberWithCommas(self.compAgility)+ " <fmt:message key="d_agility" bundle="${ship_builder}"/>";
	});
	
	self.shieldSub = ko.computed(function() {
       return self.quantity() * self.compShield;
   });
	
	self.agilitySub = ko.computed(function() {
        return self.quantity() * self.compAgility;
    });
}



var Accuracy = function(items, type) {
	var self = this;
	self.lineType = ko.observable("equipment");
	self.compType = type;
	self.compAccuracy = items.accuracy;
	
	
   //Extending this class from MyBaseType
   ko.utils.extend(self, new CompLine(items));
	
	
	self.description =  ko.computed(function (){
		return "+" +numberWithCommas(self.compAccuracy)+ " <fmt:message key="d_accuracy" bundle="${ship_builder}"/>";
	});
	

	self.accuracySub = ko.computed(function() {
       return self.quantity() * self.compAccuracy;
       
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



var ViewModel = function() {
    // Stores an array of lines, and from these, can work out the cellsTotal
    var self = this;
   // console.log(chassis_init.name);
   // console.log(chassisName[chassis_init.name]);
    
    self.chassis_name = ko.observable(chassisName[chassis_init.name]);
    self.chassis_size = ko.observable(chassis_init.size);
    self.chassis_agility = ko.observable(chassis_init.agility);
    self.chassis_hull = ko.observable(chassis_init.hull);
	self.chassis_cargo = ko.observable(chassis_init.capacity);
	self.chassis_cost = ko.observable(chassis_init.cost);
	self.chassis_upkeep = ko.observable(chassis_init.upkeep);
	self.chassis_time = ko.observable(chassis_init.time);
    
	
		 
		 
	self.chassis_quantity = ko.observable(1);
	
	
	self.society = ko.observable(settings.society);
	self.war = ko.observable(settings.war);
	self.construction = ko.observable(settings.construction);
	self.economy = ko.observable(settings.economy);


    //we add the comps
    self.lines = ko.observableArray([new Transport(comps[0].transport[0],"transport")]);
    var init = true;
	for (var keyType in comps[0]) {
	  if (comps[0].hasOwnProperty(keyType)) {
		  var compsList = comps[0][keyType];
	  	  
	  	 
		  for (var keyComp = 0; keyComp < compsList.length; keyComp++) {
				
			 var currentComp = compsList[keyComp];
			 
			
			  
			 if (init) {
				
				 init = false;
			 } else {
				 if (keyType == "transport"){
					 self.lines.push(new Transport(currentComp, "transport"));
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
				 } else if (keyType == "accuracy") {
					 self.lines.push(new Accuracy(currentComp, "accuracy"));
				 } else if (keyType == "capacity") {
					 self.lines.push(new Cargo(currentComp, "cargo"));
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
	  
	

	
	 self.agilityTotal = ko.computed(function() {
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.agilitySub();
			}
			catch(err){
			}
		})
		total += self.chassis_agility();
        return numberWithCommas(total);
    });
	

	self.mobilityTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.mobilitySub();
			}
			catch(err){
			}
		})
        return numberWithCommas(total);
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
		total += self.chassis_cargo();
        return numberWithCommas(total);
    });
	
	
	self.accuracyTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.accuracySub();
			}
			catch(err){
			}
		})
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
        //total += self.chassis_titanium();
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
        //total += self.chassis_copper();
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
        //total += self.chassis_iron();
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
        //total += self.chassis_aluminium();
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
        //total += self.chassis_silicon();
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
        //total += self.chassis_uranium();
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
       // total += self.chassis_nitrogen();
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
        //total += self.chassis_hydrogen();
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
        //total += self.chassis_sum();
        total = total * self.chassis_quantity();
        total = getResCost(total);
        return numberWithCommas(total);
    });
	
	self.costTotal = ko.computed(function(){
	    var total = 0;
        $.each(self.lines(), function() { 
			try {
				total += this.costSub();
			}
			catch(err){
			}
		})
        //total += self.chassis_sum();
        total += self.chassis_cost();
        total = total * self.chassis_quantity();
        total = getCost(total);
        return numberWithCommas(total);
    });
	
	self.upkeepTotal = ko.computed(function(){
	    var total = 0;
       /* $.each(self.lines(), function() { 
			try {
				total += this.upkeepSub();
			}
			catch(err){
			}
		})*/
        //total += self.chassis_sum();
        total += self.chassis_upkeep();
        total = total * self.chassis_quantity();
        total = getUpkeep(total);
        
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
		 	upkeep =  Math.ceil ( upkeep * (1 + self.war() * 0.1 ) );
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
        
		
		var currentChassis;
		var arrayLength = chassis.length;
		for (var i = 0; i < arrayLength; i++) {
			//console.log(chassis[i].name+ " == "+name);
		    if( chassis[i].name == name) {

		    	currentChassis = chassis[i];
		    	break;
		    }
		    
		    //Do something
		}
		
		$.each(self.lines(), function() {
			//console.log("this.impulseSub()="+this.impulseSub());
			this.resetClicks();		
			
			this.reachMaxCells(true);
			
		});
		

		
        document.getElementById("menu-icon").setAttribute("class", "icon-"+currentChassis.name);
		//this.CheckAddButton();
		//this.CheckRemoveButton();
		
		
		maxCells = currentChassis.size;

		this.chassis_name(chassisName[currentChassis.name]);
		this.chassis_size(maxCells);
		this.chassis_agility(currentChassis.agility);
		this.chassis_hull(currentChassis.hull);
		this.chassis_cargo(currentChassis.capacity);
		this.chassis_cost(currentChassis.cost);
		this.chassis_upkeep(currentChassis.upkeep);
		this.chassis_time(currentChassis.time);
		
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
			    	if (this.compType == "transport") {
			    		
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
			    	if (this.compType == "accuracy" || this.compType == "cargo") {
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

var chassisList = chassis[0];

 	  //var sel = document.getElementById(chassisType[i]);
 	  //console.log(keyType);
  	  var typeId = $("#menu-troop-list");
  	  //console.log(keyType);
  	  //console.log(typeId)
  
  	  
  var tableTitle = $('<tr></tr>')
  	.append($('<th></th>'))
  	.append($('<th><fmt:message key="name" bundle="${ship_builder}"/></th>'))
  	.append($('<th><fmt:message key="hull" bundle="${ship_builder}"/></th>'))
  	.append($('<th><fmt:message key="agility" bundle="${ship_builder}"/></th>'))
  	.append($('<th><fmt:message key="capacity" bundle="${ship_builder}"/></th>'))
  	.append($('<th><fmt:message key="size" bundle="${ship_builder}"/></th>'));
  	
  var table =$('<table></table>')
  	.append(tableTitle);
  //for (var keyChassis in chassisList) 
	  chassis.forEach(function (keyChassis){
		  
		 // console.log(keyChassis);
		 
		 var currentChassis = keyChassis;
		 var line = $('<tr></tr>')
		  .addClass("clickable")
		  .attr({"id": keyChassis.name})
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
		 var tdAgility = $('<td></td>')
		    .append(currentChassis.agility);
		 var tdCapacity = $('<td></td>')
		    .append(currentChassis.capacity);
		 var tdSize = $('<td></td>')
		    .append(currentChassis.size);
		 
		 line.append(tdImage)
		  	.append(tdName)
		   	.append(tdHull)
		   	.append(tdAgility)
		   	.append(tdCapacity)
		   	.append(tdSize);
		table.append(line);
	   

  });
  

   

  var line = $('<li></li>').append(table);
  typeId.append(line);
  
  
  
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
$("#navbar-troop-builder").css({color:'#FFFFFF'});









</script>
    
    
    



    
  </body>
</html>