<fmt:setBundle basename="js" var="js"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js" ></script>

    <script src="inc/bootstrap/js/bootstrap.min.js" ></script>
    
    <script src="js/js-cookie/js.cookie-2.1.1.min.js" ></script>

    <!-- Begin Cookie Consent plugin by Silktide - http://silktide.com/cookieconsent -->
<script type="text/javascript" >
    window.cookieconsent_options = {"message":"<fmt:message key="message_cookie_consent" bundle="${js}"/>","dismiss":"<fmt:message key="got_it" bundle="${js}"/>","learnMore":"<fmt:message key="more_info" bundle="${js}"/>","link":null,"theme":"dark-bottom"};
</script>

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.9/cookieconsent.min.js" ></script>
<!-- End Cookie Consent plugin -->
    
    <script>
    
   	 //show the number 1234567 as "1.234.567"
   function numberWithCommas(x) {
   		
   	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
   }
   </script>
