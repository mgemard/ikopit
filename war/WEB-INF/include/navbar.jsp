
<fmt:setBundle basename="navbar" var="navbar"/>

  <!-- NAVBAR
================================================== -->


    <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a href="${language}/<fmt:message key="uri_home" bundle="${navbar}"/>" class="navbar-brand nav-bar-hover" id="navbar-home"><img src="/img/ikopit_logo.png" alt="<fmt:message key="home" bundle="${navbar}"/>" height="15"/></a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="navbar-ressources"><fmt:message key="ressources" bundle="${navbar}"/> <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
					         <li><a href="${language}/<fmt:message key="uri_chassis" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-chassis" ><fmt:message key="chassis" bundle="${navbar}"/></a></li>
	               <li><a href="${language}/<fmt:message key="uri_components" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-components" ><fmt:message key="components" bundle="${navbar}"/></a></li>
	                
					  <c:choose>
						<c:when test="${server == 'global_infinity'}">
	                <li><a href="${language}/<fmt:message key="uri_troops" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-troops" ><fmt:message key="troops" bundle="${navbar}"/></a></li>
	                <li><a href="${language}/<fmt:message key="uri_troops-components" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-troops-components" ><fmt:message key="troops-components" bundle="${navbar}"/></a></li>
	                </c:when>
					    <c:otherwise>
					    </c:otherwise>
					  </c:choose>
	                
	                <li><a href="${language}/<fmt:message key="uri_buildings" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-buildings" ><fmt:message key="buildings" bundle="${navbar}"/></a></li>
                    <li><a href="${language}/<fmt:message key="uri_research-time" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-research-time" ><fmt:message key="research-time" bundle="${navbar}"/></a></li>
                  <li><a href="${language}/<fmt:message key="uri_techtree" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-tech-tree" ><fmt:message key="techtree" bundle="${navbar}"/></a></li>
	       </ul>
                </li>
                <li class="dropdown">   
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="navbar-tools"><fmt:message key="tools" bundle="${navbar}"/> <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                	<li><a href="${language}/<fmt:message key="uri_ship-builder" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-ship-builder" ><fmt:message key="ship-builder" bundle="${navbar}"/></a></li>
					<li><a href="${language}/<fmt:message key="uri_troop-builder" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-troop-builder" ><fmt:message key="troop-builder" bundle="${navbar}"/></a></li>
					
					<%--
          <li><a href="${language}/wlrce" class="nav-bar-hover" id="navbar-wlrce" >Wlrce</a></li>
           --%>
          
					<li><a href="${language}/<fmt:message key="uri_battle-analyzer" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-battle-analyzer" ><fmt:message key="battle-analyzer" bundle="${navbar}"/></a></li>
				<c:choose>
		<c:when test="${server == 'global_infinity'}">
			<li><a href="${language}/<fmt:message key="uri_troop-battle-analyzer" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-tropo-battle-analyzer" ><fmt:message key="troop-battle-analyzer" bundle="${navbar}"/></a></li>
		</c:when>
	    <c:otherwise>
	    </c:otherwise>
	  </c:choose>
				<li><a href="${language}/<fmt:message key="uri_planet-finder" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-planet-finder" ><fmt:message key="planet-finder" bundle="${navbar}"/></a></li>
					
								<li><a href="${language}/<fmt:message key="uri_route-planner" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-route-planner" ><fmt:message key="route-planner" bundle="${navbar}"/></a></li>
	
					
                  </ul>
                </li>
                <li class="dropdown">   
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="navbar-tools"><fmt:message key="official-sites" bundle="${navbar}"/> <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                  	<li class="dropdown-header"><img src="<c:url value="/img/flag/en.gif"/>" alt="uk" /> <fmt:message key="english" bundle="${navbar}"/></li>
					<li><a href="http://uk.empireuniverse.com" class="nav-bar-hover"  target="_blank"> <fmt:message key="server" bundle="${navbar}"/></a></li>
                    <li><a href="http://www.looki.co.uk/forum/forumdisplay.php?f=1095ied" class="nav-bar-hover"  target="_blank"> <fmt:message key="forum" bundle="${navbar}"/></a></li>
                    <li class="divider"></li>
                  	<li class="dropdown-header"><img src="<c:url value="/img/flag/fr.gif"/>" alt="uk" /> <fmt:message key="french" bundle="${navbar}"/></li>
                	<li><a href="http://fr.empireuniverse.com" class="nav-bar-hover"  target="_blank"> <fmt:message key="server" bundle="${navbar}"/></a></li>
                    <li><a href="http://fr.wiki.empireuniverse.com" class="nav-bar-hover"  target="_blank"> <fmt:message key="wiki" bundle="${navbar}"/></a></li>
                    <li><a href="http://www.looki.fr/forum/empire-universe-3-a_f1235/" class="nav-bar-hover"  target="_blank"> <fmt:message key="forum" bundle="${navbar}"/></a></li>
                    <li class="divider"></li>
                  	<li class="dropdown-header"><img src="<c:url value="/img/flag/de.gif"/>" alt="uk" /> <fmt:message key="german" bundle="${navbar}"/></li>
                	<li><a href="http://de.empireuniverse.com" class="nav-bar-hover"  target="_blank"> <fmt:message key="server" bundle="${navbar}"/></a></li>
                    <li><a href="http://de.wiki.empireuniverse.com" class="nav-bar-hover"  target="_blank"> <fmt:message key="wiki" bundle="${navbar}"/></a></li>
                    <li><a href="http://www.looki.de/forum/empire-universe_f1110" class="nav-bar-hover"  target="_blank"> <fmt:message key="forum" bundle="${navbar}"/></a></li>
                  </ul>
                </li>
                <li class="dropdown">   
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="navbar-tools"><fmt:message key="fan-site-projects" bundle="${navbar}"/> <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                  	<li class="dropdown-header"><fmt:message key="english" bundle="${navbar}"/></li>
					<li><a href="https://docs.google.com/spreadsheets/d/12nObDDDNPUNYby4gXOWCmTJgLA2D9V1yeyflNvYAdhU/edit?usp=sharing" class="nav-bar-hover"  target="_blank" ><fmt:message key="spreadsheet" bundle="${navbar}"/></a></li> 
					<li class="divider"></li>
					
					<%--
                  	<li class="dropdown-header"><fmt:message key="french" bundle="${navbar}"/></li>
                	<li><a href="http://centauri.free-h.net" class="nav-bar-hover"  target="_blank"><fmt:message key="centauri" bundle="${navbar}"/></a></li>
                	<li class="divider"></li>
                --%>
                
                 	
                  	<li class="dropdown-header"><fmt:message key="german" bundle="${navbar}"/></li>
                	<li><a href="http://de.empire-universe-3.wikia.com" class="nav-bar-hover"  target="_blank"><fmt:message key="german_wikia" bundle="${navbar}"/></a></li>
                  </ul>
                </li>
                <li class="dropdown">   
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="navbar-support"><fmt:message key="support" bundle="${navbar}"/> <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                	<li><a href="${language}/<fmt:message key="uri_contacts" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-contact" ><fmt:message key="contacts" bundle="${navbar}"/></a></li>
					<li><a href="${language}/<fmt:message key="uri_donate" bundle="${navbar}"/>" class="nav-bar-hover" id="navbar-donation" ><fmt:message key="donate" bundle="${navbar}"/></a></li>
                  </ul>
                </li>
                <li class="dropdown">   
          		  <c:set var="flagPathBegin" value="/img/flag/"/>
		          <fmt:message key="language" bundle="${navbar}" var="flagLng" />
		          <c:set var="flagPathEnd" value=".gif"/>
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><fmt:message key="lng" bundle="${navbar}"/>: <img src="<c:url value="${flagPathBegin}${flagLng}${flagPathEnd}"/>" alt="${flagLng}" /> <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="${uri_en}" ><img src="<c:url value="/img/flag/en.gif"/>" alt="uk" /> <fmt:message key="english" bundle="${navbar}"/></a></li>
                    <li><a href="${uri_fr}" ><img src="<c:url value="/img/flag/fr.gif"/>" alt="fr" /> <fmt:message key="french" bundle="${navbar}"/></a></li>
                    <li><a href="${uri_de}" ><img src="<c:url value="/img/flag/de.gif"/>" alt="de" /> <fmt:message key="german" bundle="${navbar}"/></a></li>
                  </ul>
                </li>
                
                <li class="dropdown">   
          		  <c:set var="flagPathBegin" value="/img/flag/"/>
          		  <c:choose>
					<c:when test="${server == 'en_sector_one' || server == 'en_sector_two'}">
					   <c:set var="flagServer" value="en" scope="session" />
					</c:when>
					<c:when test="${server == 'fr_secteur_un' || server == 'fr_secteur_deux'}">
					   <c:set var="flagServer" value="fr" scope="session" />
					</c:when>
					<c:when test="${server == 'de_alpha'}">
					   <c:set var="flagServer" value="de" scope="session" />
					</c:when>
				    <c:otherwise>
				         <c:set var="flagServer" value="global" scope="session" />
				    </c:otherwise>
				  </c:choose>
		          <c:set var="flagPathEnd" value=".gif"/>
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><fmt:message key="server" bundle="${navbar}"/>: <img src="<c:url value="${flagPathBegin}${flagServer}${flagPathEnd}"/>" alt="${flagLng}" /> <fmt:message key="${server}" bundle="${navbar}"/><span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="${uri_en}?server=en_sector_one" rel="nofollow"><img src="<c:url value="/img/flag/en.gif"/>" alt="uk" /> Sector One</a></li>
                    <li><a href="${uri_en}?server=en_sector_two" rel="nofollow"><img src="<c:url value="/img/flag/en.gif"/>" alt="uk" /> Sector Two</a></li>
                    <li><a href="${uri_en}?server=fr_secteur_un" rel="nofollow"><img src="<c:url value="/img/flag/fr.gif"/>" alt="fr" /> Secteur 1</a></li>
                    <li><a href="${uri_en}?server=fr_secteur_deux" rel="nofollow"><img src="<c:url value="/img/flag/fr.gif"/>" alt="fr" /> Secteur 2</a></li>
                    <li><a href="${uri_en}?server=de_alpha" rel="nofollow"><img src="<c:url value="/img/flag/de.gif"/>" alt="de" /> Alpha (DE)</a></li>
                    <li><a href="${uri_en}?server=global_infinity" rel="nofollow"><img src="<c:url value="/img/flag/global.gif"/>" alt="global" /> Infinity (Warserver)</a></li>
                  </ul>
                </li>
                
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>
    