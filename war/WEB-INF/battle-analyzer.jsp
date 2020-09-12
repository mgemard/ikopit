<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="battle_analyzer" var="battle_analyzer" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${battle_analyzer}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${battle_analyzer}"/></title>
        
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


<h1><fmt:message key="title_page" bundle="${battle_analyzer}"/></h1>




<textarea id="battle-log"  rows="5"></textarea>



<br>
<br>



 <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><fmt:message key="popup_title" bundle="${battle_analyzer}"/></h4>
                </div>
            
                <div class="modal-body">
                    <p><fmt:message key="popup_info_text" bundle="${battle_analyzer}"/></p>
                    <p><fmt:message key="popup_confirm_text" bundle="${battle_analyzer}"/></p>
                    <p class="debug-url"></p>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="popup_cancel" bundle="${battle_analyzer}"/></button>
                    <button type="button" class="btn btn-danger btn-ok" data-dismiss="modal" onClick="resetLog()"><fmt:message key="popup_make_new" bundle="${battle_analyzer}"/></button>
                </div>
            </div>
        </div>
    </div>
    
<div>
  <button id="analyse-log-add" class="btn btn-default battle-analyser-button-analyse" onclick="analyzeLog()"><fmt:message key="add" bundle="${battle_analyzer}"/></button>&#32;<span id="convert"> </span>
  <button id="analyse-log-new" class="btn btn-default battle-analyser-button-analyse"><fmt:message key="new" bundle="${battle_analyzer}"/></button>&#32;<span id="convert"> </span>

  <%--<progress id="progress" value="0" max="100">0 %</progress> --%>
</div>
<br>
<div id="bubble-info" style="display:none">
 <table class="table-condensed">
 <tr>
    <td colspan="2"><b><fmt:message key="regex_title" bundle="${battle_analyzer}"/></b></td>
  </tr>
  <tr>
    <td><fmt:message key="regex_ex1_text" bundle="${battle_analyzer}"/></td>
    <td><fmt:message key="regex_ex1" bundle="${battle_analyzer}"/></td>
  </tr>
  <tr>
    <td><fmt:message key="regex_ex2_text" bundle="${battle_analyzer}"/></td>
    <td> <fmt:message key="regex_ex2" bundle="${battle_analyzer}"/></td>
  </tr>
  <tr>
    <td><fmt:message key="regex_ex3_text" bundle="${battle_analyzer}"/></td>
    <td> <fmt:message key="regex_ex3" bundle="${battle_analyzer}"/></td>
  </tr>
  <tr>
    <td><fmt:message key="regex_ex4_text" bundle="${battle_analyzer}"/></td>
    <td> <fmt:message key="regex_ex4" bundle="${battle_analyzer}"/></td>
  </tr>
  
</table> 
     
    
    
    
	    
</div>
<br>
  <div id="progressbar" style="display:none">
    <div class="progress-label" ></div>
</div>




<br>
	<div id="result" ></div>
 
 
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

      <script src="inc/jquery-ui-1.11.4/jquery-ui.min.js"></script>

  <%--  <script src="inc/twbs-tooltip.js"></script>  --%>
   <script src="https://fb.me/react-0.13.3.js"></script>
     <%--   <script src="https://fb.me/JSXTransformer-0.13.3.js"></script>  --%>
      
      <script src="js/react_comp/battle_analyser.js"></script>
      <%-- compile with react-tools
      		run: jsx react_comp_jsx.js > react_comp.js   --%>
      		
      <c:choose>
		<c:when test="${server == 'global_infinity'}">
			<script src="inc/battle_analyzer/string_parser_global_infinity.js"></script>
		</c:when>
	    <c:otherwise>
			<script src="inc/battle_analyzer/string_parser.js"></script>
	    </c:otherwise>
	  </c:choose>
				
      
      
      
     <%--
         <script src="inc/battle_analyzer/bootstrap-sortable.js"></script>
    <script src="inc/react-with-addons.js"></script>
      <script src="inc/reactable.js"></script> --%>
      
      
    <script>
    
    

    
    
    
  //show the number 1234567 as "1.234.567"
    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
    
    function listContainShip(shipName, list) {
    	var result = -1;
    	$(list).each(function(index, item) {
    		if (item.name == shipName) {
    			result = index;
    		}
    	});
        return result;
    }
 
    function clone(objectToBeCloned) {
    	  // Basis.
    	  if (!(objectToBeCloned instanceof Object)) {
    	    return objectToBeCloned;
    	  }

    	  var objectClone;
    	  
    	  // Filter out special objects.
    	  var Constructor = objectToBeCloned.constructor;
    	  switch (Constructor) {
    	    // Implement other special objects here.
    	    case RegExp:
    	      objectClone = new Constructor(objectToBeCloned);
    	      break;
    	    case Date:
    	      objectClone = new Constructor(objectToBeCloned.getTime());
    	      break;
    	    default:
    	      objectClone = new Constructor();
    	  }
    	  
    	  // Clone each property.
    	  for (var prop in objectToBeCloned) {
    	    objectClone[prop] = clone(objectToBeCloned[prop]);
    	  }
    	  
    	  return objectClone;
    	}
    

    function resetLog() {
    	shipList = [];
    	$("#result").html("");

    	analyzeLog();
    }
    
    


    function ship(name) {
    	this.name=name;
    	
    	this.hitsDone=0; //that damaged the target
        this.totalHitsDone=0;
        this.hitsTaken=0; //that damaged the ship
        this.totalHitsTaken=0;

    	this.hullDmgDone=0;
    	this.maxHullDmgDone=0;
    	this.shieldDmgDone=0;
    	this.maxShieldDmgDone=0;
    	this.maxTotalDmgDone=0;
    	this.ionDmgDone=0;
    	this.maxIonDmgDone=0;

        this.hullDmgTaken=0;
    	this.maxHullDmgTaken=0;
        this.shieldDmgTaken=0;
    	this.maxShieldDmgTaken=0;
    	this.maxTotalDmgTaken=0;
    	this.ionDmgTaken=0;
    	this.maxIonDmgTaken=0;

        this.destroyed=0;
        this.retreated=0;
        this.kills=0;
    }


    
    <c:choose>
		<c:when test="${server == 'en_sector_one' || server == 'en_sector_two'}">
			var regex_missed="missed"
			var regex_attacked="attacked"
		    var regex_and_caused="and caused"
		    var regex_damage_to_the_hull="Damage to the hull"
		    var regex_damage_to_the_shield="Damage to shield"
		    var regex_damage_to_the_aiming_unit="Damage done to the aiming unit"
		    var regex_has_been_destroyed="has been destroyed!"
		    var regex_retreated_from_battle="retreated from battle"
	    </c:when>
		<c:when test="${server == 'fr_secteur_un' || server == 'fr_secteur_deux'}">
			var regex_missed="n’a pas touché"
			var regex_attacked="a touché"
		    var regex_and_caused="et a causé"
		    var regex_damage_to_the_hull="dégâts sur la coque"
		    var regex_damage_to_the_shield="dégâts sur le bouclier"
		    var regex_damage_to_the_aiming_unit="dégâts ioniques sur la propulsion"
		    var regex_has_been_destroyed="a été détruit !"
		    var regex_retreated_from_battle="se retire du combat"
		</c:when>
		<c:when test="${server == 'de_alpha'}">
			var regex_missed="hat"
			var regex_attacked="griff"
		    var regex_and_caused="mit"
		    var regex_damage_to_the_hull="Schaden am Rumpf"
		    var regex_damage_to_the_shield="Schaden am Schild"
		    var regex_damage_to_the_aiming_unit="Schaden an den Manövertriebwerken"
		    var regex_has_been_destroyed="zog sich aus dem Kampf zurück"
		    var regex_retreated_from_battle="wurde zerstört!"
		</c:when>
	    <c:otherwise>
	    </c:otherwise>
	  </c:choose>
  
  
    var react_ignore_number = '<fmt:message key="react_ignore_number" bundle="${battle_analyzer}"/>';
    var react_search = '<fmt:message key="react_search" bundle="${battle_analyzer}"/>';
    
    
    var react_name = '<fmt:message key="react_name" bundle="${battle_analyzer}"/>';
    var react_d = '<fmt:message key="react_d" bundle="${battle_analyzer}"/>';
    var react_r = '<fmt:message key="react_r" bundle="${battle_analyzer}"/>';
    var react_k = '<fmt:message key="react_k" bundle="${battle_analyzer}"/>';
    var react_done = '<fmt:message key="react_done" bundle="${battle_analyzer}"/>';
    var react_received = '<fmt:message key="react_received" bundle="${battle_analyzer}"/>';
    var react_avg = '<fmt:message key="react_avg" bundle="${battle_analyzer}"/>';
    var react_max = '<fmt:message key="react_max" bundle="${battle_analyzer}"/>';
    var react_hit = '<fmt:message key="react_hit" bundle="${battle_analyzer}"/>';
    var react_hull = '<fmt:message key="react_hull" bundle="${battle_analyzer}"/>';
    var react_shield = '<fmt:message key="react_shield" bundle="${battle_analyzer}"/>';
    var react_total = '<fmt:message key="react_total" bundle="${battle_analyzer}"/>';
    var react_ion = '<fmt:message key="react_ion" bundle="${battle_analyzer}"/>';


    var shipList = [];


    var previousAttacker;
    var currentHullDmgDone;
    var currentHullDmgTaken;
    
    
   	var nbLines;
    
    
   
        	
    function analyzeLog() {
     
     	
    	var d = new Date();
        //console.log(d.getMinutes() +"m "+d.getSeconds()+"s");
        
    	var textField = $("#battle-log").val();
    	if (textField == "") return;

    	var battleLogRaw = textField.split("\n");
    	
    	nbLines = battleLogRaw.length;
    	
    	/*d = new Date();
        console.log(d.getMinutes() +"m "+d.getSeconds()+"s");*/

        
        
        
        if (nbLines != 0) {
        

     	$("#analyse-log-add").prop( "disabled", true );
     	$("#analyse-log-new").prop( "disabled", true );
        
     		var index = 0;
			
			
			/*
			
      		  while ( (index % 100) != 0 && battleLogRaw.length !=0) {
        	var item = battleLogRaw.shift();
        	 document.getElementById("progress").innerHTML=Math.round(100*index/nbLines)+" %";
		   document.getElementById("progress").value=100*index/nbLines;
        	
        	
	        while (battleLogRaw.length !=0) {
		        //console.log("length:" +battleLogRaw.length +" index:"+ index+"/"+nbLines)
		        if(battleLogRaw.length == 0) {
		        	 
		        } else {
		            setTimeout(parse(battleLogRaw, index), 2000);
		        }
		    }*/
		    
		    
		    
        	
		     var progressbar = $("#progressbar"),
             progressLabel = $(".progress-label");
             
             progressbar.show();
        	//document.getElementById("progressbar").style.visibility = "visible";
        	
        	
		     progressbar.progressbar({
		          value: false,
		          change: function () {
		              progressLabel.text(progressbar.progressbar("value") + "%");
		          },
		          complete: function () {
		              progressLabel.text("Complete!");
		          }
		      });
		
		      function progress() {
		      
		      console.log("length:" +battleLogRaw.length +" index:"+ index+"/"+nbLines)
		          var val = progressbar.progressbar("value") || 0;
		
		          progressbar.progressbar( "value", Math.round(100*index/nbLines) );
		          
		      	   index++;
		      	  while ( (index % 100) != 0 && battleLogRaw.length != 0 ) {
		      	  	index++;
        			var item = battleLogRaw.shift();
		      	  	parse(item);
		      	  }
		      		
		
		          if ( battleLogRaw.length != 0 ) {
		              setTimeout(progress, 100);
		          } else {
		            React.render(React.createElement(FilterableProductTable, {products: shipList}), document.getElementById('result'));
		            progressbar.hide();
		            
			     	$("#analyse-log-add").prop( "disabled", false );
			     	$("#analyse-log-new").prop( "disabled", false );
			     	$(".info-icon").unbind('click');
			     	$(".info-icon").click(function() {
					  $( "#bubble-info" ).toggle( "slow" );
					});
		          }
		          
		      }
		
		      setTimeout(progress, 100);
		    
		    
		    
		}
		
        
       //  console.log(shipList);

         d = new Date();
         //console.log(d.getMinutes() +"m "+d.getSeconds()+"s");
         
        
         $("#battle-log").val("");

        d = new Date();
         //console.log(d.getMinutes() +"m "+d.getSeconds()+"s");
    }
    
    
    
    
    
 $("#navbar-tools").css({color:"#FFFFFF"});
 $("#navbar-battle-analyzer").css({color:'#FFFFFF'});
 
 
     $(function() {
    	
	    $('#analyse-log-new').click(function (){
	    	if (0 < shipList.length) {
	    		$('#confirm-delete').modal('show');
	    	} else {
	    		resetLog();
	    	}
	    });

	    
	    // TEST DEV BELOW
/*
	    $("#result").append(tooltip_regex);
	    
	    
    var tooltip_regex ="<span class='info-icon' title='Only Assassin and Stinger: ^(Assasin|Stinger).*$\nAll except Assassin and Stinger: ^((?!Assasin|Stinger).)*$'></span>";
	    
	   
	     $( "#bubble-info" ).toggle( "slow" );
	     	     $(".info-icon").click(function() {
  $( "#bubble-info" ).toggle( "slow" );
});
	     
	    */
	    
	    
	});
    
    
    
    </script>
    
    
    
    
  </body>
</html>