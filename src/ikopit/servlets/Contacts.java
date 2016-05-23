package ikopit.servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;


import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import com.google.appengine.labs.repackaged.org.json.JSONObject;


public class Contacts extends HttpServlet {
    // public static final String LANGUAGE = "language";
    public static final String PARAM_LANGUAGE   = "language";
    public static final String SESSION_LANGUAGE = "language";

    public static final String CHAMP_NOM = "nom";
    public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_SUBJECT = "subject";
    public static final String CHAMP_MESSAGE = "message";
    public static final String CHAMP_G_RECAPTCHA_RESPONSE = "g-recaptcha-response";

    public static final String ATT_ERREURS  = "erreurs";
    public static final String ATT_MESSAGE_STATUS = "message_status";
    
    public static final  String SECRET_CAPTCHA = "6LdnAQcTAAAAADIZyGLo-hSDCyuLl4XpYly60DAP";
    /*
     * 
     * public static final String COOKIE_LANGUAGE = "language"; public static
     * final String SESSION_LANGUAGE = "language"; public static final String
     */
    public static final String VUE  			 = "/WEB-INF/contacts.jsp";
    public static final String VUE_MESSAGE_SENT  = "/WEB-INF/contacts-sent.jsp";

    protected String URI_FR = "/fr/contact";
    protected String URI_DE = "/de/kontakt";
    protected String URI_EN = "/en/contact";
    
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
     
		request.setAttribute("uri_fr", this.URI_FR);
		request.setAttribute("uri_de", this.URI_DE);
		request.setAttribute("uri_en", this.URI_EN);
		   
    	
    	String message_status = "not_sent";
        request.setAttribute( ATT_MESSAGE_STATUS, message_status );
        
        
        this.getServletContext().getRequestDispatcher( VUE ).forward(
                request, response );

    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        

		
    	String success;
    	String message_status = "not_sent";
        Map<String, String> erreurs = new HashMap<String, String>();
        
        /*BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
        String json = "";
        if(br != null){
            json = br.readLine();
        }*/
        
        //System.out.println(request);
        
        /* Récupération des champs du formulaire. */
        String nom = request.getParameter( CHAMP_NOM );
        String email = request.getParameter( CHAMP_EMAIL );
        String subject = request.getParameter( CHAMP_SUBJECT );
        String message = request.getParameter( CHAMP_MESSAGE );
        String responseCaptcha = request.getParameter(CHAMP_G_RECAPTCHA_RESPONSE);
        //System.out.println(responseCaptcha);

        System.out.println(responseCaptcha);

        /*
        Enumeration<String> parameterNames = request.getParameterNames();

		while (parameterNames.hasMoreElements()) {

			String paramName = parameterNames.nextElement();
			System.out.println(paramName);
			System.out.println("n");

			String[] paramValues = request.getParameterValues(paramName);
			for (int i = 0; i < paramValues.length; i++) {
				String paramValue = paramValues[i];
				System.out.println("t" + paramValue);
				System.out.println("n");
			}

		}*/
		
		
		
        /* Validation du champ email. */
        try {
            validationEmail( email );
        } catch ( Exception e ) {
            erreurs.put( CHAMP_EMAIL, e.getMessage() );
        }
        
        /* Validation des champs mot de passe et confirmation. */
        try {
            validationMessage( message );
        } catch ( Exception e ) {
            erreurs.put( CHAMP_MESSAGE, e.getMessage() );
        }

        /* Validation du champ nom. */
        try {
            validationNom( nom );
        } catch ( Exception e ) {
            erreurs.put( CHAMP_NOM, e.getMessage() );
        }
       
        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty() ) {
            success = "true";
        } else {
            success = "false";
        }
        
        /* We test the captcha only if the rest is correct */
        if ( success == "true") {
        	try {
                validationCaptcha(responseCaptcha,request.getRemoteAddr());
            } catch ( Exception e ) {
                erreurs.put( "captcha", e.getMessage() );
            }
        	
        	if ( erreurs.isEmpty()){
        		/* We send a mail */
        		Properties props = new Properties();
                Session session = Session.getDefaultInstance(props, null);


                try {
                    Message msg = new MimeMessage(session);
                    msg.setFrom(new InternetAddress("fjieobudnkeijfmgs@gmail.com", "Ikopit contacts"));
                    msg.addRecipient(Message.RecipientType.TO,
                                     new InternetAddress("check_m8tt@hotmail.fr", "CheCk_m8TT"));
                    msg.setSubject(subject);
                    
                    msg.setText("From: "+email+"\n\nName: "+nom+"\n\n"+message);
                    Transport.send(msg);
                    message_status = "sent";

                } catch (AddressException e) {
                    System.out.println("AddressException");
                } catch (MessagingException e) {
                	System.out.println("MessagingException");
                }
        		
        		/* We redirect */
                //this.getServletContext().getRequestDispatcher( VUE_MESSAGE_SENT ).forward( request, response );
        		
        	}
        	
        }
        
        
        
        
        
        
        
        
        /* Stockage du résultat et des messages d'erreur dans l'objet request */
        request.setAttribute( ATT_ERREURS, erreurs );
        request.setAttribute( ATT_MESSAGE_STATUS, message_status );
        
        
        
        
        //System.out.println(request.getParameter("g-recaptcha-response"));
        //System.out.println(request.getParameter("g-recaptcha-response") != null && request.getParameter("g-recaptcha-response").trim().length() != 0);
        
        //System.out.println(responseCaptcha);
        /*HttpURLConnectionVerifyCaptcha http = new HttpURLConnectionVerifyCaptcha();
        try {
			http.sendPost(secretCaptcha, responseCaptcha);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
        
        
        //String messageUrl = URLEncoder.encode("my message", "UTF-8");
        


        /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        
    }

    /**
     * Valide l'adresse mail saisie.
     */
    private void validationEmail( String email ) throws Exception {
        if ( email != null && email.trim().length() != 0 ) {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
                throw new Exception( "email_regex" );
            }
        } else {
            throw new Exception( "email_empty" );
        }
    }

    /**
     * Valide les mots de passe saisis.
     */
    private void validationMessage( String message ) throws Exception{
        if (message.trim().length() < 3) {
            throw new Exception("message_short");
        }
        
    }

    /**
     * Valide le nom d'utilisateur saisi.
     */
    private void validationNom( String nom ) throws Exception {
        if ( nom != null && nom.trim().length() < 3 ) {
            throw new Exception( "nom_short" );
        }
    }
    
    private void validationCaptcha(String captchaResponse, String remoteAddr) throws Exception {
		try {
		    URL url = new URL("https://www.google.com/recaptcha/api/siteverify?secret="+SECRET_CAPTCHA+"&response="+captchaResponse+"&remoteip="+remoteAddr);
		    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		    connection.setDoOutput(true);
		    connection.setRequestMethod("POST");
		
		    //String urlParameters = "secret="+SECRET_CAPTCHA+"&response="+captchaResponse;
		    
		    OutputStreamWriter writer = new OutputStreamWriter(connection.getOutputStream());
			//writer.write(urlParameters);
		    writer.close();
		
		    if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {
		        System.out.println("OK");
		        BufferedReader in = new BufferedReader(
			        new InputStreamReader(connection.getInputStream()));
		        String json1 = "";
		        String inputLine;
		   		StringBuffer responsePost = new StringBuffer();
		    
		   		while ((inputLine = in.readLine()) != null) {
		   			responsePost.append(inputLine);
		   		}
		        /*if(in != null){
		            json1 = in.readLine();
		    	}*/
		        
		   		/*String inputLine;
		   		StringBuffer responsePost = new StringBuffer();
		    
		   		while ((inputLine = in.readLine()) != null) {
		   			responsePost.append(inputLine);
		   		}*/
		   		in.close();
		
			/*	BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		        String json = "";
		        if(br != null){
		            json = br.readLine();
		    	}
		        
			 */
		   		//print result
		   		
		   		//System.out.println(captchaResponse);

		   		JSONObject json = new JSONObject(responsePost.toString());
		   		//System.out.println(json);
		   		//String resuslt = json.getString("success");
		   		//System.out.println(resuslt);
		   		//System.out.println(resuslt+" ");
		   		
		   		if (json.getString("success") == "false") {
		   			//System.out.println(json.getString("success"));
		            throw new Exception( "captcha" );
		        }

		       
		    } else {
		    	 System.out.println("Server returned HTTP error code");
		    }
		} catch (MalformedURLException e) {
		    // ...
		} catch (IOException e) {
		    // ...
		}
    }

}