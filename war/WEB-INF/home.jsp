<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="home" var="home"/>

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${home}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${home}"/></title>
        
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
 

         
     <div class="row">
    <div class="col-md-10">
    
    
         <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1 style="text-align:center"><fmt:message key="welcome.title" bundle="${home}"/> <img src="/img/ikopit_logo.png" alt="<fmt:message key="home" bundle="${navbar}"/>"/>! </h1>

        <p><fmt:message key="welcome.text" bundle="${home}"/></p>
      </div>
    </div>
    
    
    
    
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
  
      <div class="item peopleCarouselImg">
      
      <a href="${language}/<fmt:message key="uri_ship-builder" bundle="${navbar}"/>" ><img class="peopleCarouselImg" src=" /img/ship_build_preview.png" alt="..."></a>
      <div class="carousel-caption">
        <h1><fmt:message key="ship-builder-preview" bundle="${home}"/></h1>
      </div>
    </div>
    
    <div class="item active peopleCarouselImg">
      <a href="${language}/<fmt:message key="uri_techtree" bundle="${navbar}"/>" ><img class="peopleCarouselImg" src=" /img/tech-tree-preview.png" alt="..."></a>
      <div class="carousel-caption">
        <h1><fmt:message key="tech-tree-preview" bundle="${home}"/></h1>
      </div>
    </div>
    
    <div class="item peopleCarouselImg">
      <a href="${language}/<fmt:message key="uri_components" bundle="${navbar}"/>" ><img class="peopleCarouselImg" src="/img/comps-preview.png" alt="..."></a>
      <div class="carousel-caption">
        <h1><fmt:message key="comps-preview" bundle="${home}"/></h1>
        </div>
    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
   </div>
  <div class="col-md-2" style="text-align:center">
  </br></br></br>

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

</br></br></br></br>
</br></br></br></br>

   </div><!-- end col-md -->
   </div><!-- end row -->


    </div><!-- /.container -->
    
    

    </div><!-- /.wrap -->
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>

     <script>

     
     
     
     $(document).ready(function(){
    	 


    	 
    	 
    	 
    	 $("#navbar-home").css({color:'#FFFFFF'});
    	 
    	 
    	 
    	 
    	});
     
     
     
     
     
    
     
	</script>
    
    
  </body>
</html>