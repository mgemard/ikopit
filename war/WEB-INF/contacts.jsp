<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="contacts" var="contacts"/>

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${contacts}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${contacts}"/></title>
        
  <%@ include file="include/favicon.jsp" %>
  <%@ include file="include/css.jsp" %>


<style>

.overlay {
  fill: none;
  pointer-events: all;
}

</style>
<script src='https://www.google.com/recaptcha/api.js'></script>
	</head>
  
  
    <body>

<div id="wrap">
  <%@ include file="include/navbar.jsp" %>



 <div class="container bodytext">


         
     <div class="row">
    <div class="col-md-10">
    
    
<h1><fmt:message key="title_page" bundle="${contacts}"/></h1>



<c:choose>
      <c:when test="${message_status=='not_sent'}">
<form method="post" action="contact">
            <fieldset>

                <legend></legend>
<fmt:message key="message_ig" bundle="${contacts}"/> : CheCk_m8TT (<img src="<c:url value="/img/flag/en.gif"/>" alt="uk" /> <fmt:message key="message_ig_or" bundle="${contacts}"/>  <img src="<c:url value="/img/flag/fr.gif"/>" alt="fr" />) <br /><br />
<div>Infinity (Warserver)</div>
<%--
                <p><fmt:message key="message_acceuil" bundle="${contacts}"/> ( <img src="<c:url value="/img/flag/en.gif"/>" alt="uk" /> / <img src="<c:url value="/img/flag/fr.gif"/>" alt="fr" /> )</p>

                <br />
                
                <label for="nom"><fmt:message key="name" bundle="${contacts}"/></label>
                <input class="form-control" type="text" id="nom" name="nom" value="<c:out value="${param.nom}"/>"maxlength="20" />
                <c:if test="${not empty erreurs['nom']}"><span class="erreur"><fmt:message key="${erreurs['nom']}" bundle="${contacts}"/></span></c:if>
                <br /><br />
                
                <label for="email"><fmt:message key="email" bundle="${contacts}"/></label>
                <input class="form-control" type="text" id="email" name="email" value="<c:out value="${param.email}"/>" maxlength="60" ></input>
                 <c:if test="${not empty erreurs['email']}"><span class="erreur"><fmt:message key="${erreurs['email']}" bundle="${contacts}"/></span></c:if>
                <br /><br />

				<label for="subject"><fmt:message key="subject" bundle="${contacts}"/></label>
                <input class="form-control" type="text" id="subject" name="subject" value="<c:out value="${param.subject}"/>" maxlength="20"/>
                <br /><br />
                
				<label for="message"><fmt:message key="message" bundle="${contacts}"/></label>
                <textarea class="form-control" rows="6" name="message" maxlength="1000" /><c:out value="${param.message}"/></textarea>
                <c:if test="${not empty erreurs['message']}"><span class="erreur"><fmt:message key="${erreurs['message']}" bundle="${contacts}"/></span></c:if>
                <br /><br />

                <input type="submit" class="btn btn-default sansLabel" value="<fmt:message key="button_send" bundle="${contacts}"/>" />
                <br /><br />

            </fieldset>
            
			<div class="g-recaptcha" data-sitekey="6LdnAQcTAAAAAI42DOgOGF6KswKYJpRrUdiN38Mv"></div>
			<c:if test="${not empty erreurs['captcha']}"><span class="erreur"><fmt:message key="${erreurs['captcha']}" bundle="${contacts}"/></span></c:if>
        </form>
        
        --%>
	</c:when>
	 <c:otherwise>

<fmt:message key="sent" bundle="${contacts}"/>


      </c:otherwise>
</c:choose>

	
	
	</br>
	  
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

   </div><!-- end col-md -->
   </div><!-- end row -->
   
    </div><!-- /.container -->
<div id="push"></div>
    

    </div><!-- /.wrap -->
    
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>

    <script>
    
    $(document).ready(function(){
      	 
     	
     	  
	 $("#navbar-support").css({color:'#FFFFFF'});
   	 $("#navbar-contact").css({color:'#FFFFFF'});
   	 
     	  });
    
    
   	 </script>
    
  </body>
</html>