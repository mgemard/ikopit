package ikopit.servlets.redirect;

import ikopit.entities.UserSession;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.googlecode.objectify.ObjectifyService;

public class Researchtime extends HttpServlet {
    // public static final String LANGUAGE = "language";
    //public static final String PARAM_LANGUAGE   = "language";
    public static final String SESSION_LANGUAGE = "language";
    /*
     * public static final String COOKIE_LANGUAGE = "language"; public static
     * final String SESSION_LANGUAGE = "language"; public static final String
     */
    public static final String VUE              = "/WEB-INF/research-time.jsp";

    static {
        ObjectifyService.register(UserSession.class);
    }
    
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
    	/* R�cup�ration de la session depuis la requ�te */
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

    
    

    

}