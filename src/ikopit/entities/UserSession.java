package ikopit.entities;

import java.util.Date;
import java.util.HashMap;

import com.googlecode.objectify.annotation.Cache;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
@Cache
public class UserSession {
	@Id Long id; // Sera généré automatiquement
	//private Date date;
	
	private HashMap<String, String> whList = new HashMap<>();
	
	
	
	
	public UserSession() {
		//this.date = new Date();
		
	}
	
	
	public Long getId() {
    	//this.date = new Date();
		return id;
	}
	
	public String getWhList(String server) {
	    return whList.get(server);
	}

    public void setWhList(String server, String whList) {
        this.whList.put(server, whList);
    }
	

	
	
}
