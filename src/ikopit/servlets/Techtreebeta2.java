package ikopit.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Techtreebeta2 extends HttpServlet {
    // public static final String LANGUAGE = "language";
    public static final String PARAM_LANGUAGE   = "language";
    public static final String SESSION_LANGUAGE = "language";
    /*
     * public static final String COOKIE_LANGUAGE = "language"; public static
     * final String SESSION_LANGUAGE = "language"; public static final String
     */
    public static final String VUE              = "/WEB-INF/techtreebeta2.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /*
         * String cookieLanguage = getCookieValue( request, LANGUAGE ); if (
         * cookieLanguage != null ) {
         * 
         * } // no cookies else { HttpSession session = request.getSession();
         * String sessionLanguage = (String) session.getAttribute(
         * SESSION_LANGUAGE );
         * 
         * // no if ( nomClient != null && clients != null ) { clients.remove(
         * nomClient ); session.setAttribute( SESSION_CLIENTS, clients ); } //no
         * session else{
         * 
         * }
         * 
         * 
         * 
         * request.setAttribute( LANGUAGE, intervalleConnexions );
         */
        /*
         * System.out.println( "locale:" + response.getLocale() ); String
         * paramLanguage = request.getParameter( PARAM_LANGUAGE );
         * 
         * Locale loc = new Locale( "en" ); response.setLocale( loc );
         * System.out.println( loc );
         * 
         * System.out.println( "locale:" + response.getLocale() );
         */

        /*
         * // System.out.println( paramLanguage ); if ( paramLanguage == "fr" ||
         * paramLanguage == "gb" || paramLanguage == "us" ) { Locale loc = new
         * Locale( paramLanguage ); System.out.println( loc );
         * response.setLocale( loc ); }
         */
        /*
         * String paramLanguage = request.getParameter( PARAM_LANGUAGE );
         * 
         * HttpSession session = request.getSession(); if ( paramLanguage !=
         * null ) session.setAttribute( SESSION_LANGUAGE, paramLanguage );
         */
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