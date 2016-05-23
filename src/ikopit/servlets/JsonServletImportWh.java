package ikopit.servlets;

import static com.googlecode.objectify.ObjectifyService.ofy;
import ikopit.entities.UserSession;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.labs.repackaged.org.json.JSONArray;
import com.google.appengine.labs.repackaged.org.json.JSONException;

public class JsonServletImportWh extends HttpServlet {


    private static final String SERVER = "server";
	public static final String  SESSION_ID 				  = "sessionId";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
    	
    }
        
    	
    	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        
        
        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();
        

        Long sessionId = Long.valueOf((String) session.getAttribute( SESSION_ID ));
        UserSession userSession = ofy().load().type(UserSession.class).id(sessionId).now();
        
        /*
        request.setCharacterEncoding("utf8");
        //response.setCharacterEncoding("utf8");
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        //JSONObject jsonObj = (JSONObject) JSONValue.parse(request.getParameter("para"));
        //System.out.println(jsonObj.get("message"));
        JSONObject obj = new JSONObject();
        obj.put("message", "hello from server");
        out.print(obj);
        */
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        

    	String server = (String) session.getAttribute( SERVER );
    	
        String testList = userSession.getWhList(server);

        JSONArray jsonArr = null;
		try {
			jsonArr = new JSONArray(testList);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        PrintWriter out = response.getWriter(); 
        out.print(jsonArr);
        //out.flush();
        
        //test
        //userSession = ofy().load().type(UserSession.class).id(sessionId).now();
        
        //System.out.println(jsonArr);
        
    }
}
