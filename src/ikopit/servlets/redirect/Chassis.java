package ikopit.servlets.redirect;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Chassis extends HttpServlet {
    // public static final String LANGUAGE = "language";
    public static final String PARAM_LANGUAGE   = "language";
    public static final String SESSION_LANGUAGE = "language";
    /*
     * public static final String COOKIE_LANGUAGE = "language"; public static
     * final String SESSION_LANGUAGE = "language"; public static final String
     */
    public static final String VUE              = "/WEB-INF/chassis.jsp";

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
			
			if ( uriLng.equals("fr") || uriLng.equals("de") || uriLng.equals("en") ) {
				response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
				
				response.setHeader("Location", uriLng+request.getRequestURI());
			}
			else {
				response.setHeader("Location", "en"+request.getRequestURI());
			}
			
        this.getServletContext().getRequestDispatcher( VUE ).forward(
                request, response );

    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( VUE ).forward(
                request, response );
    }

    private static String getCookieValue( HttpServletRequest request, String nom ) {
        Cookie[] cookies = request.getCookies();
        if ( cookies != null ) {
            for ( Cookie cookie : cookies ) {
                if ( cookie != null && nom.equals( cookie.getName() ) ) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

}