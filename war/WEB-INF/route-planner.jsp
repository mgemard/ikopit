<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="route_planner" var="route_planner" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${route_planner}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${route_planner}"/></title>
        
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

<h1><fmt:message key="route-planner" bundle="${route_planner}"/></h1>



<textarea id="wh-list"  rows="5"></textarea>



<br>
<br>
<div>
  <button class="btn btn-default" onclick="convertList()"><fmt:message key="convert" bundle="${route_planner}"/></button>&#32;<span id="convert"> </span>
  
</div>
 

<br>
<br>

<span><fmt:message key="start" bundle="${route_planner}"/>:
<input style="background-color:transparent" type="text" id="systemStart">
<button onclick="switchCoords()">&#60;-&#62;</button>
<fmt:message key="end" bundle="${route_planner}"/>:
<input style="background-color:transparent" type="text" id="systemEnd"> </span>


<br>
<br>

<span> <fmt:message key="jump" bundle="${route_planner}"/> <input style="background-color:transparent"type="text" id="jump" size="1" value="3"></span>
<span> <fmt:message key="impulse_flight" bundle="${route_planner}"/> <input type="checkbox" id="impulseFlight" checked="checked"> </span>
<br>
<br>
<button class="btn btn-default" onclick="calculateRoute()"><fmt:message key="calculate" bundle="${route_planner}"/></button>&#32;<span id="result_title"> </span>

	
	<div id="result" style="height:1000px"> </div>
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


    <script src="inc/bootstrap/js/bootstrap.min.js"></script>
      <script src="inc/jquery-ui-1.11.4/jquery-ui.min.js"></script>
    <script>


    
    
    
    
    
    //for calculation system coordinates ("100*y+x" ingame) are projected to:
    //  x\y   1  2  ...
    //  1
    //  2
    //  ...
    //contains the whs usable for calculation
    var whList = new Array();
    //contains a list of only whs (no duplicates)
    var whListSorted = new Array();
    
    var pageReloaded = true;
    
    $("#result").html("");
   
    
    /*
    //$.cookie.json = true;
    //if the text field is not empty, we call convert
    if ($("#wh-list").val() != ""){
        convertList();
        $.cookie('whList', $("#wh-list"), { expires: 7 });
    }
    //otherwise, we check in cookies
    else {
        var cookie = $.cookie("whList");
        
            if(cookie != null){
            $("#wh-list").val(cookie);
        }
        
       
       //console.log($.cookie('name') == null); 
    }
    */
    
    
    
    
    //calculateRoute();
    //convertList()
    
 
 
 
 
    function convertList(){
        var whListRaw = $("#wh-list").val().split("\n");
        var patt=/^\d/;
        var nbWh = 0;        

        whListSorted = [];
        
         $(whListRaw).each(function(index, item) {
            item=item.replace("Wormhole,","");
            item=item.replace("\"Entrée de Vortex\",","");
            item=item.replace("Wurmlöcher,","");
            if(patt.exec(item)) {
                 if ($.inArray(item, whListSorted) == -1)
                     whListSorted.push(item);
                     
            }
         });
         
         
        $("#wh-list").val("");
        $(whListSorted).each(function(index, item) {
            //console.log(whListSorted[index]);
            $("#wh-list").val($("#wh-list").val() + item + "\n"); 
            nbWh++;
         });
        
        whList = whListSorted;
      
        whList.forEach(function(v, i, a) { 
            var b, c = new Array();
            var sys;
            var mod;
            b = v.split(/[,-]/); 
            sys = b[0];
            //console.log(Math.ceil(sys/100));
            c[0] = Math.ceil(sys/100);
            mod = sys % 100;
            c[1] = mod == 0 ? 100 : mod;
            c[2]=eval(b[1]);c[3]=eval(b[2]);c[4]=eval(b[3]);
            sys = b[4];
            c[5] = Math.ceil(sys/100);
            mod = sys % 100;
            c[6] = mod == 0 ? 100 : mod;
            c[7]=eval(b[5]);c[8]=eval(b[6]);c[9]=eval(b[7]);
            a[i]=c;
        });
        
        //console.log(whListSorted[0]);
        //console.log(whListSorted[0][0]+":"+whListSorted[0][1]+":"+whListSorted[0][2]+":"+whListSorted[0][3]+":"+whListSorted[0][4]);
        //$.cookie.json = true;
        //we save it in cookie
        /*var whListJson = JSON.stringify(whList);
        console.log(whListJson);
         $.cookie('whList', whListJson, { expires: 7 })
         console.log(JSON.parse($.cookie('whList')));
         console.log(roughSizeOfObject(whListJson));*/
        //console.log($.cookie("whList"));
        //console.log(JSON.parse($.cookie("whList")));    
        
        //we save it on server through ajax
        if (!pageReloaded ) {
        	saveWhList();
        }
    	pageReloaded = false;
        $("#convert").html('('+nbWh+' <fmt:message key="wormholes" bundle="${route_planner}"/>)');
        
    }
    
    

 
    function calculateRoute(){
        $("#result_title").html("Calculating, please wait ...");
        
        setTimeout(function(){ 
	        // contain strings from the input field
	        var systemStart,systemEnd, jump;
	        var mod;
	        var sysStartY,sysStartX,sysEndY,sysEndX;
	        
	 
	        //save the shortest distance evaluated to eliminate longer routes
	        var distMin;
	        //save one route per jump with the distance, this is the final result
	        var routesTmp = [[]];
	        //save all the potential routes with the current distance
	        var routesMin = [];
	        var impulseFlight = $('#impulseFlight').is( ":checked" );
	        
	        systemStart = $("#systemStart").val();
	        systemEnd = $("#systemEnd").val();
	        jump = $("#jump").val();
	    
	        //projecting
	        sysStartX = Math.ceil(systemStart /100);
	        mod = systemStart % 100;
	        sysStartY = mod == 0 ? 100 : mod;
	        sysEndX = Math.ceil(systemEnd /100);
	        mod = systemEnd % 100;
	        sysEndY = mod == 0 ? 100 : mod;
	        
	        distMin = Math.sqrt(Math.pow(sysStartX-sysEndX,2)+ Math.pow(sysStartY-sysEndY,2));
	        routesTmp[0][0] = 0;
	        routesTmp[0][1] = sysStartX;
	        routesTmp[0][2] = sysStartY;
	        routesMin[0] = [distMin, sysStartX, sysStartY];
	        
	        console.log("calculating from " + systemStart +" to " + systemEnd + " ...");
	        console.log("Direct:  " + distMin +" pc.");
	        
	 
	        var depth=1;
	        for (; depth <= jump ; depth++) {
	            var routesTmpSave = routesTmp.slice();
	            routesTmp.lenght = 0;
	            var j=0;
	            whList.forEach(function(whCurrent) {
	            
	                var arrayLength = routesTmpSave.length;
	                for (var k = 0; k < arrayLength; k++) {
	                    for (var i = 0; i < 2 ; i++){
	                        var dist = eval(routesTmpSave[k][0]);
	                        if (dist >= distMin) continue;
	                        var distInc = Math.sqrt(Math.pow(whCurrent[0+5*i]-routesTmpSave[k][1],2)+Math.pow(whCurrent[1+5*i]-routesTmpSave[k][2],2));
	                        
	                        
	                        if (!impulseFlight && distInc == 0) continue;
	                        dist += distInc;
	                        
	 
	                        if (dist >= distMin) continue;
	                        var currentRoute = whCurrent.slice();
	                        var routeEndPointCopy = routesTmpSave[k].slice();
	                        if (i == 0) currentRoute = revertWh(currentRoute);
	                        currentRoute.unshift(dist);
	                        routeEndPointCopy.shift();
	                        routeEndPointCopy.forEach(function(stuff){
	                            currentRoute.push(stuff);
	                            
	                        });
	                        if (depth != jump) {
	                            routesTmp[j] = currentRoute.slice();
	                            j++;
	                        }
	                            
	                        var distEnd = Math.sqrt(Math.pow(whCurrent[5-5*i]-sysEndX,2)+Math.pow(whCurrent[6-5*i]-sysEndY,2));
	                        if (!impulseFlight && distEnd == 0) continue;
	                        var distTot = dist+distEnd;
	                        
	                        if (distTot >= distMin) continue;
	                        
	 
	                        distMin = distTot;
	                        currentRoute[0]=distTot;
	                        routesMin[depth]=currentRoute;
	                            
	                        
	                    }//end loop for i
	                }//end loop routesTmpSave
	                                    
	            });//end loop whList.forEach
	            
	        }//end loop on jump
	        console.log("finished");
	 
	 
	        $("#result_title").html("Done");
	        
	       
	 
	        var routeBlock= $('<div class="route-block draggable ui-widget-content"></div>').append($('<div class="clickable" style="float:right">X</div>').click(function() {
                $(this).parent().remove();
            }))
            .draggable({ containment: "#result",cancel: '.text' , stack:".route-block"  })
            .append("<div class='text'>From " + systemStart+" to "+ systemEnd+"</div>")
            .append("<div class='text'>The direct route is: "+ Math.round(routesMin[0][0] * 100) / 100+"pc</div>");
 
	        
	        
	        for (var loop=1; loop <= jump; loop++ ){
	            var route= routesMin[loop];
	            if (typeof route=="undefined"){
	                continue;
	            }
	 
	        
	            var subRouteBlock = $('<div class="sub-route-block text"></div>')
                	.append($('<div class="clickable" style="float:right">X</div>').click(function() {
                      $(this).parent().remove();
                }))
                
	           subRouteBlock.append("With "+loop+" jump: "+Math.round(route[0] * 100) / 100+"pc");
	 
	            
	            //console.log(route);
	            //if(loop==2)console.log(route[0]);
	            for (var i=loop-1; i>=0; i--){
	                //console.log(route[6+10*i]);
	             subRouteBlock.append("<br>");
	             subRouteBlock.append(getSys(route[6+10*i],route[7+10*i])+":"+route[8+10*i]+":"+route[9+10*i]+":"+route[10+10*i]+"-"+getSys(route[1+10*i],route[2+10*i])+":"+route[3+10*i]+":"+route[4+10*i]+":"+route[5+10*i]);
	 
	            }
	 
	 

		        routeBlock.append(subRouteBlock);
	        }
	        console.log(routeBlock);
	        $("#result").append(routeBlock);
	        
	        //console.log("routesMin:" + routesMin);
	        routesMin.forEach(function(route){
	            //console.log("route: " + route);     
	        });
    	}, 100);
        
    }//end function calculateRoute
    
    //Transform [1,2,3,4,5,6,7,8,9,10]
    //into [6,7,8,9,10,1,2,3,4,5]
    function revertWh(array){
        var arrayReverted = new Array();
        arrayReverted = array.slice(5,11).concat(array.slice(0,5));
        return arrayReverted;
    }
        
    
    function getSys(x, y){
        //console.log("x:"+x+" and y:"+y)
        var sys;
        x=100*x;
        if(y==100){
            sys = x;
        }
        else sys = x-100+y;
        return sys;
            
        
        
    }
    
    function switchCoords() {
       var systemStart = $("#systemStart").val();
       var systemEnd = $("#systemEnd").val();
       $("#systemStart").val(systemEnd);
       $("#systemEnd").val(systemStart);
    }
 
 
 function saveWhList() {
     $.ajax({
         url: 'jsonservletexportwh',
         type: 'POST',
         data: JSON.stringify(whList),
         contentType: 'application/json; charset=utf-8',
         dataType: 'jsonp',
         async: false,
         success: function(msg) {
             console.log(msg);
         }
     });
 }
 

 
 
 
 $(document).ready(function(){
 
	 convertList();
 
        var request = ({"message":'Hello from browser'});
        var jsonobj=JSON.stringify(request);
        $.ajax({
            data: {para:jsonobj},
            dataType: 'json',
            url: './jsonservletimportwh',
            type: 'POST',
            success: function(jsonArr){
                //var test  
                //console.log(jsonArr);
                whList = jsonArr;
                //console.log(whList);
                $("#wh-list").val("");
                var line = "";
                var nbWh=0;
                for(var i = 0; i < whList.length; i++) {
                    line = "";
                    var whArray = whList[i];
                    var x = whArray[0];
                    var y = whArray[1];
                    var sys=getSys(x,y);
                    line = sys + "-" + whArray[2]+"-" +whArray[3] +"-"+whArray[4] + ",";
                    x = whArray[5];
                    y = whArray[6];
                    var sys=getSys(x,y);
                    line += sys + "-" + whArray[7]+"-" +whArray[8] +"-"+whArray[9];   
                            
                    
                    nbWh++;
                    $("#wh-list").val($("#wh-list").val() + line + "\n"); 
                }

                $("#convert").html('('+nbWh+' <fmt:message key="wormholes" bundle="${route_planner}"/>)');
                
                
                /*
                c[0] = Math.ceil(sys/100);
                mod = sys % 100;
                c[1] = mod == 0 ? 100 : mod;
                c[2]=eval(b[1]);c[3]=eval(b[2]);c[4]=eval(b[3]);
                sys = b[4];
                c[5] = Math.ceil(sys/100);
                mod = sys % 100;
                c[6] = mod == 0 ? 100 : mod;
                c[7]=eval(b[5]);c[8]=eval(b[6]);c[9]=eval(b[7]);
                a[i]=c;
                */
                
 
 
            },
            error: function() {
                console.log('Ajax readyState: '+xhr.readyState+'\nstatus: '+xhr.status + ' ' + err);
            }
        })/*
          .done(function( jsonArr ) {
            $( "#results" ).append( html );
          })
          */;
        
        
    
        
    });
 
 
 
 
 
 
 
 
 $("#navbar-tools").css({color:"#FFFFFF"});
 $("#navbar-route-planner").css({color:'#FFFFFF'});
    </script>
    
  </body>
</html>