<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="include/setlocale.jsp" %>
<fmt:setBundle basename="donation" var="donation"/>

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<fmt:message key="description" bundle="${donation}"/>">
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
    <title><fmt:message key="title_page" bundle="${donation}"/></title>
        
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

<h1><fmt:message key="title_page" bundle="${donation}"/></h1>
<fmt:message key="message" bundle="${donation}"/>
<br><br>
<table>
	<tbody>
		<td>
		<select id="SelectBox" style="background-color:#222222">
<option value="us">USA</option>
<option value="uk">UK</option>
<option value="fr">France</option>
<option value="de">Deutch</option>
</select>

		</td>
		<td style="padding-left:50px">
		


<span id="us" class="toggle">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_donations">
<input type="hidden" name="business" value="mathieu.gemard@gmail.com">
<input type="hidden" name="lc" value="US">
<input type="hidden" name="item_name" value="ikopit support us">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="currency_code" value="USD">
<input type="hidden" name="bn" value="PP-DonationsBF:btn_donateCC_LG.gif:NonHostedGuest">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/fr_FR/i/scr/pixel.gif" width="1" height="1">
</form>
</span>


<span id="uk" class="toggle">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_donations">
<input type="hidden" name="business" value="mathieu.gemard@gmail.com">
<input type="hidden" name="lc" value="GB">
<input type="hidden" name="item_name" value="ikopit support uk">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="currency_code" value="GBP">
<input type="hidden" name="bn" value="PP-DonationsBF:btn_donateCC_LG.gif:NonHostedGuest">
<input type="image" src="https://www.paypalobjects.com/en_US/GB/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/fr_FR/i/scr/pixel.gif" width="1" height="1">
</form>
</span>


<span id="fr" class="toggle">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_donations">
<input type="hidden" name="business" value="mathieu.gemard@gmail.com">
<input type="hidden" name="lc" value="FR">
<input type="hidden" name="item_name" value="ikopit support fr">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="currency_code" value="EUR">
<input type="hidden" name="bn" value="PP-DonationsBF:btn_donateCC_LG.gif:NonHostedGuest">
<input type="image" src="https://www.paypalobjects.com/fr_FR/FR/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - la solution de paiement en ligne la plus simple et la plus sécurisée !">
<img alt="" border="0" src="https://www.paypalobjects.com/fr_FR/i/scr/pixel.gif" width="1" height="1">
</form>
</span>




<span id="de" class="toggle">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_donations">
<input type="hidden" name="business" value="mathieu.gemard@gmail.com">
<input type="hidden" name="lc" value="DE">
<input type="hidden" name="item_name" value="ikopit support de">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="currency_code" value="EUR">
<input type="hidden" name="bn" value="PP-DonationsBF:btn_donateCC_LG.gif:NonHostedGuest">
<input type="image" src="https://www.paypalobjects.com/de_DE/DE/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="Jetzt einfach, schnell und sicher online bezahlen – mit PayPal.">
<img alt="" border="0" src="https://www.paypalobjects.com/fr_FR/i/scr/pixel.gif" width="1" height="1">
</form>
</span>
		
		
		</td>
	</tbody>
</table>



<br><br><br><br><br>



    </div><!-- /.container -->
<div id="push"></div>
    

    </div><!-- /.wrap -->
    
 <%@ include file="include/footer.jsp" %>


  <%@ include file="include/js.jsp" %>

    <script>
    
    
    $(document).ready(function(){
   	 
   	  $('.toggle').hide();
   	  $('#us').show();
   	 
   	  $('#SelectBox').change(function(){
   		 console.log("hi");
   	  $('.toggle').hide();//Hide all
   	  $("#" + $(this).val()).show();
   	  

 	 $("#navbar-support").css({color:'#FFFFFF'});
    	 $("#navbar-donation").css({color:'#FFFFFF'});
    	 
    	 
   	 });
   	 
   	 
   	 

   	 
   	 
   	 
   	});
    </script>
    
  </body>
</html>