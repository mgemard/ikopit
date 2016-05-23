

    function parse(item) {

        
        // $(battleLogRaw).each(function(index, item) {
        	
    	    var parsed = false;
    	    
        	var patt, result;
        	var attacker = "", defender;

        	console.log(item);
        	
        	var regex_missed;
        	var missed_found = true;
        	if (item.indexOf("Missed") > -1) { //en
        		regex_missed = "Missed";
        	}else if (item.indexOf("Ratés") > -1) { //fr
        		regex_missed = "Ratés";
        	}else if (item.indexOf("verfehlt") > -1) { //de
        		regex_missed = "verfehlt";
        	}else if (item.indexOf("CAPTION_MISSES") > -1) { //pl
        		regex_missed = "CAPTION_MISSES";
        	}else if (item.indexOf("CAPTION_MISSES") > -1) { //pt
        		regex_missed = "CAPTION_MISSES";
        	}else if (item.indexOf("CAPTION_MISSES") > -1) { //ru
        		regex_missed = "CAPTION_MISSES";
        	}else if (item.indexOf("Iska") > -1) { //tr
        		regex_missed = "Iska";
        	} else {
        		missed_found = false;
        	}
        	
        	if (missed_found) {
        		parsed = true;
        		//patt = /^ *-(.+) missed (.+)\./;
        		patt = new RegExp("^(.+) "+regex_missed+" (.+)");
        		result = item.match(patt);
        		if (result != null) {

        			attacker = listContainShip(result[1],shipList);
        			if (attacker == -1) {
        				var newShip = new ship(result[1]);
        				newShip.totalHitsDone=1;
        				shipList.push(newShip);
        			}
        			else {
        				shipList[attacker].totalHitsDone++;
        			}
        			defender =  listContainShip(result[2],shipList);
        			if (defender == -1) {
        				var newShip = new ship(result[2]);
        				newShip.totalHitsTaken=1;
        				shipList.push(newShip);
        			}
        			else {
        				shipList[defender].totalHitsTaken++;
        			}
        		}
        	}
	        if(!parsed) {
	        	
	        	var regex_attacked;
	        	var attacked_found = true;
	        	if (item.indexOf("Attacks") > -1) { //en
	        		regex_attacked = "Attacks";
	        	}else if (item.indexOf("Attaques") > -1) { //fr
	        		regex_attacked = "Attaques";
	        	}else if (item.indexOf("Angriff auf") > -1) { //de
	        		regex_attacked = "Angriff auf";
	        	}else if (item.indexOf("CAPTION_ATTACKS") > -1) { //pl
	        		regex_attacked = "CAPTION_ATTACKS";
	        	}else if (item.indexOf("CAPTION_ATTACKS") > -1) { //pt
	        		regex_attacked = "CAPTION_ATTACKS";
	        	}else if (item.indexOf("CAPTION_ATTACKS") > -1) { //ru
	        		regex_attacked = "CAPTION_ATTACKS";
	        	}else if (item.indexOf("Saldirilar") > -1) { //tr
	        		regex_attacked = "Saldirilar";
	        	}else {
	        		attacked_found = false;
	        	}
	        	
	        	if (attacked_found) {
	        		
	        		var regex_and_caused;
		        	if (item.indexOf("- Damage:") > -1) { //en
		        		regex_and_caused = "- Damage:";
		        	}else if (item.indexOf("- Dommages:") > -1) { //fr
		        		regex_and_caused = "- Dommages:";
		        	}else if (item.indexOf("- Schaden:") > -1) { //de
		        		regex_and_caused = "- Schaden:";
		        	}else if (item.indexOf("- CAPTION_DAMAGE:") > -1) { //pl
		        		regex_and_caused = "- CAPTION_DAMAGE:";
		        	}else if (item.indexOf("- CAPTION_DAMAGE:") > -1) { //pt
		        		regex_and_caused = "- CAPTION_DAMAGE:";
		        	}else if (item.indexOf("- CAPTION_DAMAGE:") > -1) { //ru
		        		regex_and_caused = "- CAPTION_DAMAGE:";
		        	}else if (item.indexOf("- Hasar:") > -1) { //tr
		        		regex_and_caused = "- Hasar:";
		        	}
		        	
		        	var regex_hull;
		        	var hull_found = true;
		        	if (item.indexOf("Hull resistance") > -1) { //en
		        		regex_hull = "Hull resistance";
		        	}else if (item.indexOf("Points de constitution") > -1) { //fr
		        		regex_hull = "Points de constitution";
		        	}else if (item.indexOf("Rumpfstärke") > -1) { //de
		        		regex_hull = "Rumpfstärke";
		        	}else if (item.indexOf("CAPTION_HEALTH_SHIP") > -1) { //pl
		        		regex_hull = "CAPTION_HEALTH_SHIP";
		        	}else if (item.indexOf("CAPTION_HEALTH_SHIP") > -1) { //pt
		        		regex_hull = "CAPTION_HEALTH_SHIP";
		        	}else if (item.indexOf("CAPTION_HEALTH_SHIP") > -1) { //ru
		        		regex_hull = "CAPTION_HEALTH_SHIP";
		        	}else if (item.indexOf("Geminin Durumu") > -1) { //tr
		        		regex_hull = "Geminin Durumu";
		        	}else if (item.indexOf("Fuerza de la tropa") > -1) { //undefined
		        		regex_hull = "Fuerza de la tropa";
		        	} else {
		        		hull_found = false;
		        	}
		        			        	
	        		if (hull_found) {
	        			//patt = /^ *-(.+) attacked (.+) and caused ([0-9]+) Damage to the hull/;
	            		patt = new RegExp("^(.+) "+regex_attacked+" (.+) "+regex_and_caused+" ([0-9]+) "+regex_hull);
	            		result = item.match(patt);
	
	            		if (result != null) {
	            			attacker = listContainShip(result[1],shipList);
	            			previousAttacker = attacker; // -> useless ??
	            			currentHullDmgDone = parseInt(result[3],10);
	            			if (attacker == -1) {
	            				var newShip = new ship(result[1]);
	            				newShip.hullDmgDone = parseInt(result[3],10);
	            				newShip.hitsDone = 1;
	            				newShip.totalHitsDone = 1 ;
	            				newShip.maxHullDmgDone = parseInt(result[3],10);
	            				newShip.maxTotalDmgDone = parseInt(result[3],10);
	            				shipList.push(newShip);
	            			}
	            			else {
	            				shipList[attacker].hullDmgDone += parseInt(result[3],10);
	            				shipList[attacker].hitsDone++;
	            				shipList[attacker].totalHitsDone++;
	            				if (parseInt(result[3],10) > shipList[attacker].maxHullDmgDone){
	            					shipList[attacker].maxHullDmgDone = parseInt(result[3],10);
	            				}
	            				if (parseInt(result[3],10) > shipList[attacker].maxTotalDmgDone){
	            					shipList[attacker].maxTotalDmgDone = parseInt(result[3],10);
	            				}
	            			}
	
	            			defender = listContainShip(result[2],shipList);
	            			currentHullDmgTaken = parseInt(result[3],10);
	            			if (defender == -1) {
	            				var newShip = new ship(result[2]);
	            				newShip.hullDmgTaken = parseInt(result[3],10);
	            				newShip.hitsTaken = 1;
	            				newShip.totalHitsTaken = 1;
	            				newShip.maxHullDmgTaken = parseInt(result[3],10);
	            				newShip.maxTotalDmgTaken = parseInt(result[3],10);
	            				shipList.push(newShip);
	            			}
	            			else {
	            				shipList[defender].hullDmgTaken += parseInt(result[3],10);
	            				shipList[defender].hitsTaken++;
	            				shipList[defender].totalHitsTaken++;
	            				if (parseInt(result[3],10) > shipList[defender].maxHullDmgTaken){
	            					shipList[defender].maxHullDmgTaken = parseInt(result[3],10);
	            				}
	            				if (parseInt(result[3],10) > shipList[defender].maxTotalDmgTaken){
	            					shipList[defender].maxTotalDmgTaken = parseInt(result[3],10);
	            				}
	
	            			}
	
	            		} previousAttacker = listContainShip(result[1],shipList);
	        		}
	        		
		        	var regex_shield;
		        	var shield_found = true;
		        	if (item.indexOf("Shield") > -1) { //en
		        		regex_shield = "Shield";
		        	}else if (item.indexOf("Bouclier") > -1) { //fr
		        		regex_shield = "Bouclier";
		        	}else if (item.indexOf("Schild") > -1) { //de
		        		regex_shield = "Schild";
		        	}else if (item.indexOf("Oslona") > -1) { //pl
		        		regex_shield = "Oslona";
		        	}else if (item.indexOf("Escudo") > -1) { //pt
		        		regex_shield = "Escudo";
		        	}else if (item.indexOf("???") > -1 && item.indexOf("????") == -1) { //ru
		        		regex_shield = "shield";
		        		item = item.replace("???","shield");
		        	}else if (item.indexOf("Kalkan") > -1) { //tr
		        		regex_shield = "Kalkan";
		        	} else {
		        		shield_found = false;
		        	}
		        	
	            	if (shield_found) {
	        			//patt = /^ *-(.+) attacked (.+) and caused .* ([0-9]+) Damage to shield/;
	        			patt = new RegExp("^(.+) "+regex_attacked+" (.+) "+regex_and_caused+" .* ([0-9]+) "+regex_shield);
	            		
	            		result = item.match(patt);
	            		if (result != null) {
	            			attacker = listContainShip(result[1],shipList);
	            			if (attacker == -1) {
	            				var newShip = new ship(result[1]);
	            				newShip.shieldDmgDone += parseInt(result[3],10);
	            				newShip.hitsDone = 1;
	            				newShip.totalHitsDone = 1;
	            				newShip.maxShieldDmgDone = parseInt(result[3],10);
	            				shipList.push(newShip);
	            			}
	            			else {
	            				shipList[attacker].shieldDmgDone += parseInt(result[3],10);
	            				if (parseInt(result[3],10) > shipList[attacker].maxShieldDmgDone){
	            					shipList[attacker].maxShieldDmgDone = parseInt(result[3],10);
	            				}
	            				if (item.indexOf(regex_hull) == -1) {
	            					shipList[attacker].hitsDone++;
	            					shipList[attacker].totalHitsDone++;
	            				}
	            				else {
	                				if (parseInt(result[3],10) + currentHullDmgDone > shipList[attacker].maxTotalDmgDone){
	                					shipList[attacker].maxTotalDmgDone = parseInt(result[3],10) + currentHullDmgDone;
	                				}
	            				}
	
	            			}
	
	            			defender = listContainShip(result[2],shipList);
	            			if (defender == -1) {
	            				var newShip = new ship(result[2]);
	            				newShip.shieldDmgTaken += parseInt(result[3],10);
	            				newShip.hitsTaken = 1;
	            				newShip.totalHitsTaken = 1;
	            				newShip.maxShieldDmgTaken = parseInt(result[3],10);
	            				shipList.push(newShip);
	            			}
	            			else {
	
	            				shipList[defender].shieldDmgTaken += parseInt(result[3],10);
	            				if (parseInt(result[3],10) > shipList[defender].maxShieldDmgTaken){
	            					shipList[defender].maxShieldDmgTaken = parseInt(result[3],10);
	            				}
	            				if (item.indexOf(regex_hull) == -1) {
	            					shipList[defender].hitsTaken++;
	            					shipList[defender].totalHitsTaken++;
	            				}
	            				else { //console.log(parseInt(result[3],10) +" + "+ currentHullDmgTaken +" > "+ shipList[defender].maxTotalDmgTaken);
	                				if (parseInt(result[3],10) + currentHullDmgTaken > shipList[defender].maxTotalDmgTaken){
	                					shipList[defender].maxTotalDmgTaken = parseInt(result[3],10) + currentHullDmgTaken;
	                				}
	            				}
	            			}
	
	
	            		}  
	            		previousAttacker = listContainShip(result[1],shipList);
	        		}
		        	
		        	var regex_ion;
		        	var ion_found = true;
		        	if (item.indexOf("Maneuverability") > -1) { //en TODO not verified
		        		regex_ion = "Maneuverability";
		        	}else if (item.indexOf("Manoeuvrabilité") > -1) { //fr
		        		regex_ion = "Manoeuvrabilité";
		        	}else if (item.indexOf("Maneuvriertriebwerke") > -1) { //de
		        		regex_ion = "Maneuvriertriebwerke";
		        	}else if (item.indexOf("CAPTION_MANEUVERABILITY_SHIP") > -1) { //pl
		        		regex_ion = "CAPTION_MANEUVERABILITY_SHIP";
		        	}else if (item.indexOf("CAPTION_MANEUVERABILITY_SHIP") > -1) { //pt
		        		regex_ion = "CAPTION_MANEUVERABILITY_SHIP";
		        	}else if (item.indexOf("CAPTION_MANEUVERABILITY_SHIP") > -1) { //ru
		        		regex_ion = "CAPTION_MANEUVERABILITY_SHIP";
		        	}else if (item.indexOf("Manevra Kabiliyeti") > -1) { //tr
		        		regex_ion = "Manevra Kabiliyeti";
		        	}else if (item.indexOf("Mobility") > -1) { //undefined
		        		regex_ion = "Mobility";
		        	} else {
		        		ion_found = false;
		        	}
		        	
	        		if (ion_found) {
	        			//patt = /^ *-(.+) attacked (.+) and caused .* ([0-9]+) Damage done to the aiming unit/;
	        			patt = new RegExp("^(.+) "+regex_attacked+" (.+) "+regex_and_caused+" .* ([0-9]+) "+regex_ion);
	            		result = item.match(patt);
	            		if (result != null) {
	            			attacker = listContainShip(result[1],shipList);
	            			if (attacker == -1) {
	            				var newShip = new ship(result[1]);
	            				newShip.ionDmgDone += parseInt(result[3],10);
	            				newShip.hitsDone = 1;
	            				newShip.totalHitsDone = 1;
	            				newShip.maxIonDmgDone = parseInt(result[3],10);
	            				shipList.push(newShip);
	            			}
	            			else {
	            				shipList[attacker].ionDmgDone += parseInt(result[3],10);
	            				if (parseInt(result[3],10) > shipList[attacker].maxIonDmgDone){
	            					shipList[attacker].maxIonDmgDone = parseInt(result[3],10);
	            				}
	            				if (item.indexOf(regex_hull) == -1 && item.indexOf(regex_shield) == -1) {
	            					shipList[attacker].hitsDone++;
	            					shipList[attacker].totalHitsDone++;
	            				}
	
	            			}
	
	            			defender = listContainShip(result[2],shipList);
	            			if (defender == -1) {
	            				var newShip = new ship(result[2]);
	            				newShip.shieldDmgTaken += parseInt(result[3],10);
	            				newShip.hitsTaken = 1;
	            				newShip.totalHitsTaken = 1;
	            				newShip.maxIonDmgTaken = parseInt(result[3],10);
	            				shipList.push(newShip);
	            			}
	            			else {
	
	            				shipList[defender].shieldDmgTaken += parseInt(result[3],10);
	            				if (parseInt(result[3],10) > shipList[defender].maxIonDmgTaken){
	            					shipList[defender].maxIonDmgTaken = parseInt(result[3],10);
	            				}
	            				if (item.indexOf(regex_hull) == -1) {
	            					shipList[defender].hitsTaken++;
	            					shipList[defender].totalHitsTaken++;
	            				}
	            			}
	
	
	            		}  previousAttacker = listContainShip(result[1],shipList);
	        		}
	        	}
    		}
	        if(!parsed) {
	        	
	        	var regex_destroyed;
	        	var destroyed_found = true;
	        	if (item.indexOf("destroyed") > -1) { //en
	        		regex_destroyed = "destroyed";
	        	}else if (item.indexOf("Détruit(s)") > -1) { //fr
	        		regex_destroyed = "Détruit";
	        		item.replace("(s)","");
	        	}else if (item.indexOf("zerstört") > -1) { //de
	        		regex_destroyed = "zerstört";
	        	}else if (item.indexOf("zniszczony") > -1) { //pl
	        		regex_destroyed = "zniszczony";
	        	}else if (item.indexOf("destruído") > -1) { //pt
	        		regex_destroyed = "destruído";
	        	}else if (item.indexOf("??????????") > -1) { //ru
	        		regex_destroyed = "destroyed";
	        		item = item.replace("??????????","destroyed")
	        	}else if (item.indexOf("Détruit(s)") > -1) { //tr
	        		regex_destroyed = "Détruit(s)";
	        	} else {
	        		destroyed_found = false;
	        	}
	        	
	        	if  (item.indexOf(regex_destroyed) > -1) {
	        		//patt = /^ *-(.+) has been destroyed!/;
	        		patt = new RegExp("^(.+) "+regex_destroyed);
	        		result = item.match(patt);
	        		if (result != null) {
	
	        			var destroyed = listContainShip(result[1],shipList);
	        			if (destroyed == -1) {
	        				var newShip = new ship(result[1]);
	        				newShip.destroyed=1;
	        				shipList.push(newShip);
	        			}
	        			else {
	        			//console.log(result[1]);
	
	        				shipList[destroyed].destroyed++;
	
	        			}
	    				shipList[previousAttacker].kills++;
	        		}
	        	}    
	        }
        	if(!parsed) {
        		
        		var regex_retreated;
	        	var retreated_found = true;
	        	if (item.indexOf("Retreat") > -1) { //en
	        		regex_retreated = "Retreat";
	        	}else if (item.indexOf("Retraite") > -1) { //fr
	        		regex_retreated = "Retraite";
	        	}else if (item.indexOf("Rückzug") > -1) { //de
	        		regex_retreated = "Rückzug";
	        	}else if (item.indexOf("CAPTION_RETREAT") > -1) { //pl
	        		regex_retreated = "CAPTION_RETREAT";
	        	}else if (item.indexOf("CAPTION_RETREAT") > -1) { //pt
	        		regex_retreated = "CAPTION_RETREAT";
	        	}else if (item.indexOf("CAPTION_RETREAT") > -1) { //ru
	        		regex_retreated = "CAPTION_RETREAT";
	        	}else if (item.indexOf("Geri Çekil") > -1) { //tr
	        		regex_retreated = "Geri Çekil";
	        	} else {
	        		retreated_found = false;
	        	}
	        	
        		if  (item.indexOf(regex_retreated) > -1) {
	        		//patt = /^ *-(.+) retreated from battle/;
	    			item = item.replace(regex_retreated+": ","");
	    			var list = item.split(", ");
	    			var arrayLength = list.length;
	    			for (var i = 0; i < arrayLength; i++) {
	    				var elem=list[i];
		
	        			var retreated = listContainShip(elem,shipList);
	        			if (retreated == -1) {
	        				var newShip = new ship(elem);
	        				newShip.retreated=1;
	        				shipList.push(newShip);
	        			}
	        			else {
	        			//console.log(result[1]);
	
	        				shipList[retreated].retreated++;
	
	        			}
		
		        		
	        		}
	        	}
    }

        //	console.log("att: " +attacker);
        	//console.log("prev: " +previousAttacker);

    		
        
        
       //  });

    }

