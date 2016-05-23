package ikopit.servlets.redirect;

import static com.googlecode.objectify.ObjectifyService.ofy;

import ikopit.entities.UserSession;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.googlecode.objectify.ObjectifyService;

public class JsonServletExportWh extends HttpServlet {


    private static final String SERVER = "server";
	public static final String  SESSION_ID 				  = "sessionId";
    public static final String SESSION_LANGUAGE = "language";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
    	
    }
        
    	
    	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        
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
			
    	 // 1. get received JSON data from request
        BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
        String json = "";
        if(br != null){
            json = br.readLine();
        }
 /*
        //Convert received JSON to ArrayList

        Type type = new TypeToken<ArrayList<String[]>>() {}.getType();
                
        ArrayList<String[]> target = new ArrayList<String[]>();

        Gson gson = new Gson();
        target = gson.fromJson(json, type);
        */
        
        
        // Save it in datastore
        //System.out.println(target.get(0)[0]+":"+target.get(0)[1]+":"+target.get(0)[2]+":"+target.get(0)[3]);
        
        System.out.println("sessionId: "+session.getAttribute( SESSION_ID ));
    	Long sessionId = Long.valueOf((String) session.getAttribute( SESSION_ID ));
   
    	UserSession userSession = ofy().load().type(UserSession.class).id(sessionId).now();
    	
    	String server = (String) session.getAttribute( SERVER );
    	
    	userSession.setWhList(server, json);
        
    	ofy().save().entity(userSession);  // async without the .now()
    	
        
        
        
        //test
        //userSession = ofy().load().type(UserSession.class).id(sessionId).now();
        //String testList = userSession.getWhListUk();
        //System.out.println(testList);
        
    }
}
