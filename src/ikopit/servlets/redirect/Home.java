package ikopit.servlets.redirect;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Home extends HttpServlet {
    // public static final String LANGUAGE = "language";
    public static final String PARAM_LANGUAGE   = "language";
    public static final String SESSION_LANGUAGE = "language";
    /*
     * public static final String COOKIE_LANGUAGE = "language"; public static
     * final String SESSION_LANGUAGE = "language"; public static final String
     */
    public static final String VUE = "/WEB-INF/home.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
       
		/* Récupération de la session depuis la requête */
		HttpSession session = request.getSession();
		
			String uriLng = "";
			if (session.getAttribute( SESSION_LANGUAGE ) != null) {
				uriLng = (String) session.getAttribute( SESSION_LANGUAGE );
			}
			else {
				uriLng = request.getLocale().toString();
			}
			

			response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
			
			if ( uriLng.equals("fr")) {
				
				response.setHeader("Location","fr/accueil");
			}
			else if ( uriLng.equals("de") ) {
				
				response.setHeader("Location", "de/willkommen");
			}
			else { //uriLng.equals("en")
				response.setHeader("Location", "en/home");
			}
/*
			if (request.getLocale().equals("fr")) {
				response.setHeader("Location", "fr/accueil");
			}
			else if (request.getLocale().equals("de")) {
				response.setHeader("Location", "de/willkommen");
			}
			else {
				response.setHeader("Location", "en/home");
			}*/
		
        this.getServletContext().getRequestDispatcher( VUE ).forward(
                request, response );

    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( VUE ).forward(
                request, response );
    }

   

}