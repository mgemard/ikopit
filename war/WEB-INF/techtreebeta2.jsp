<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="techtree" var="techtree" />

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="description">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title>Tech Tree</title>
        
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
 
                  
                  <c:set var="techtreePathBegin" value="img/techtree_"/>
		          <c:set var="techtreePathEnd" value=".svg"/>
		          
 <!-- <object id="tech-tree" style="width: 100%;height: 1004px " data="${techtreePathBegin}${flagLng}${techtreePathEnd}" type="image/svg+xml"></object> -->
	
	
  
    <object id="demo-tiger" type="image/svg+xml" data="img/techtree_test.svg" style="width: 500px; height: 500px; border:1px solid black; ">Your browser does not support SVG</object>


    </div><!-- /.container -->
    

    </div><!-- /.wrap -->
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>


    <script src="inc/svg-pan-zoom.js"></script>


     <script>


     // Don't use window.onLoad like this in production, because it can only listen to one function.
     window.onload = function() {
    	 var panZoomTiger = svgPanZoom('#demo-tiger', {
         zoomEnabled: true,
         controlIconsEnabled: true,
         minZoom: 1,
         maxZoom: 20
       });
    	
    	 
     };
     

     
     
     $("#navbar-tech-tree").css({color:'#FFFFFF'});
     
     <%--
     $(document).ready(function() {
    	 
    	
    	 /*
    	 var s = document.getElementById("demo-tiger");
    	    s.setAttribute("stroke","0000FF");
    	 
		    $("title").remove();
		    */
		});
	 
     /*//
     // Don't use window.onLoad like this in production, because it can only listen to one function.
     window.onload = function() {
     var panZoom = svgPanZoom('#demo-tiger', {
     zoomEnabled: true,
     controlIconsEnabled: false
     });
     };
     */
     var noPanZoom = true;
     /*
     $( "body" ).keyup(function(e) {
    	 if(e.which == 70) {
    		 $( "#demo-tiger" ).css( "position", "absolute")
    		 .css( "top", "0")
    		 .css( "left", "0")
    		 .css( "height", "800px");

    	 }
    	 */
    	 
    	 
    	 alert("enablePan = "+ enablePan +"\n enableZoom = " enableZoom + "\n enableDrag = " nableDrag + "\n zoomScale =" + zoomScale);
    	 
     $( "body" ).keyup(function(e) {
    	 if(e.which == 70) {
    		 $( "#tech-tree" ).css( "position", "absolute")
    		 .css( "top", "0")
    		 .css( "left", "0")
    		 .css( "height", "800px");

    	 }
    	 
    	
    	 
    	
    	 });
     
    --%>
    
     
	</script>
    
    
  </body>
</html>