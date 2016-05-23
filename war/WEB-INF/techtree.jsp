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
    <meta name="description" content="<fmt:message key="description" bundle="${techtree}"/>">
    <meta name="keywords" content="<fmt:message key="keywords" bundle="${techtree}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${techtree}"/></title>
        
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


                  
   <%-- <c:set var="techtreePathBegin" value="img/techtree_"/>
        <fmt:message key="language" bundle="${techtree}" var="flagLng" />
        <c:set var="techtreePathEnd" value=".svg"/>
         <object id="demo-tiger" type="image/svg+xml" data="<c:url value="${techtreePathBegin}${flagLng}${techtreePathEnd}"/>" style="width: 100%; height: 800px; border:1px solid black; ">Your browser does not support SVG</object>
    --%>
    
     <%--
          <c:choose>
		<c:when test="${server == 'global_infinity'}">
			<script src="inc/battle_analyzer/string_parser_global_infinity.js"></script>
		</c:when>
		<c:when test="${server == 'en_sector_one' || server == 'en_sector_two'}">
			<script src="inc/battle_analyzer/string_parser_global_infinity.js"></script>
		</c:when>
		<c:when test="${server == 'fr_secteur_un' || server == 'fr_secteur_deux'}">
			<script src="inc/battle_analyzer/string_parser_global_infinity.js"></script>
		</c:when>
		<c:when test="${server == 'de_alpha'}">
			<script src="inc/battle_analyzer/string_parser_global_infinity.js"></script>
		</c:when>
	    <c:otherwise>
			<script src="inc/battle_analyzer/string_parser.js"></script>
	    </c:otherwise>
	  </c:choose>
	  --%>
	  
	  
	  
      <c:choose>
      
		<c:when test="${server == 'global_infinity'}">
		  <c:choose>
			<c:when test="${language == 'de'}">
				<object id="demo-tiger" type="image/svg+xml" data="<c:url value="techtree_global_de.svg"/>" style="width: 100%; height: 100%; border:1px solid black; ">Your browser does not support SVG</object>
			</c:when>
			<c:when test="${language == 'fr'}">
				<object id="demo-tiger" type="image/svg+xml" data="<c:url value="techtree_global_fr.svg"/>" style="width: 100%; height: 100%; border:1px solid black; ">Your browser does not support SVG</object>
			</c:when>
		    <c:otherwise>
		    	<%-- ${language == 'en'} --%>
				<object id="demo-tiger" type="image/svg+xml" data="<c:url value="techtree_global_en.svg"/>" style="width: 100%; height: 100%; border:1px solid black; ">Your browser does not support SVG</object>
		    </c:otherwise>
		  </c:choose>
		</c:when>
		
		<c:when test="${server == 'de_alpha'}">
			<object id="demo-tiger" type="image/svg+xml" data="<c:url value="techtree_de.svg"/>" style="width: 100%; height: 100%; border:1px solid black; ">Your browser does not support SVG</object>
		</c:when>
		
		<c:when test="${server == 'fr_secteur_un' || server == 'fr_secteur_deux'}">
			<object id="demo-tiger" type="image/svg+xml" data="<c:url value="techtree_fr.svg"/>" style="width: 100%; height: 100%; border:1px solid black; ">Your browser does not support SVG</object>
		</c:when>
		
	    <c:otherwise>
	    	<%--${server == 'en_sector_one' || server == 'en_sector_two'} --%>
			<object id="demo-tiger" type="image/svg+xml" data="<c:url value="techtree_en.svg"/>" style="width: 100%; height: 100%; border:1px solid black; ">Your browser does not support SVG</object>
	    </c:otherwise>
	    
	  </c:choose> 
 



<br><br><br>


    
<br><br><br>
    </div><!-- /.wrap -->
    
    
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>


    <script src="inc/svg-pan-zoom.js"></script>



     <script>


     $("#navbar-ressources").css({color:"#FFFFFF"});
     $("#navbar-tech-tree").css({color:'#FFFFFF'});
     
     


     $( window ).load(function() {
    	 var panZoomTiger = svgPanZoom('#demo-tiger', {
         zoomEnabled: true,
         controlIconsEnabled: true,
         minZoom: 1,
         maxZoom: 40
       });

    	 $(window).resize(function(){
        	 panZoomTiger.resize();
        	 panZoomTiger.fit();
        	 panZoomTiger.center();
           })
           
     });
     
     
     
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