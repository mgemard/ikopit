package ikopit.servlets;

import ikopit.entities.UserSession;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

public class Planetfinder extends HttpServlet {
    // public static final String LANGUAGE = "language";
    //public static final String PARAM_LANGUAGE   = "language";
    //public static final String SESSION_LANGUAGE = "language";
    /*
     * public static final String COOKIE_LANGUAGE = "language"; public static
     * final String SESSION_LANGUAGE = "language"; public static final String
     */
    public static final String VUE              = "/WEB-INF/planet-finder.jsp";

    static {
        ObjectifyService.register(UserSession.class);
    }

    protected String URI_FR = "/fr/triangulateur-de-planete";
    protected String URI_DE = "/de/planeten-finder";
    protected String URI_EN = "/en/planet-triangulator";
    
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
     
		request.setAttribute("uri_fr", this.URI_FR);
		request.setAttribute("uri_de", this.URI_DE);
		request.setAttribute("uri_en", this.URI_EN);
		   
    	
    	
        this.getServletContext().getRequestDispatcher( VUE ).forward(
                request, response );

    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( VUE ).forward(
                request, response );
    }

    
    

    

}