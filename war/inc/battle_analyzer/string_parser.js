

    function parse(item) {

        
        // $(battleLogRaw).each(function(index, item) {
        	
        	var patt, result;
        	var attacker = "", defender;

        	//console.log(item);
        	if (item.indexOf(regex_missed) > -1) {
        		//patt = /^ *-(.+) missed (.+)\./;
        		if (regex_missed == "hat") { item = item.replace(" nicht getroffen", "."); }
        		patt = new RegExp("^ *-(.+) "+regex_missed+" (.+)\.");
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
        	else if  (item.indexOf(regex_attacked) > -1) {
        		if (item.indexOf(regex_damage_to_the_hull) > -1) {
        			//patt = /^ *-(.+) attacked (.+) and caused ([0-9]+) Damage to the hull/;
            		patt = new RegExp("^ *-(.+) "+regex_attacked+" (.+) "+regex_and_caused+" ([0-9]+) "+regex_damage_to_the_hull);
            		result = item.match(patt);

            		if (result != null) {
            			attacker = listContainShip(result[1],shipList);
            			//previousAttacker = attacker;  -> useless
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
            	if (item.indexOf(regex_damage_to_the_shield) > -1) {
        			//patt = /^ *-(.+) attacked (.+) and caused .* ([0-9]+) Damage to shield/;
        			patt = new RegExp("^ *-(.+) "+regex_attacked+" (.+) "+regex_and_caused+" .* ([0-9]+) "+regex_damage_to_the_shield);
            		
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
            				if (item.indexOf(regex_damage_to_the_hull) == -1) {
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
            				if (item.indexOf(regex_damage_to_the_hull) == -1) {
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
        		if (item.indexOf(regex_damage_to_the_aiming_unit) > -1) {
        			//patt = /^ *-(.+) attacked (.+) and caused .* ([0-9]+) Damage done to the aiming unit/;
        			patt = new RegExp("^ *-(.+) "+regex_attacked+" (.+) "+regex_and_caused+" .* ([0-9]+) "+regex_damage_to_the_aiming_unit);
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
            				if (item.indexOf(regex_damage_to_the_hull) == -1 && item.indexOf(regex_damage_to_the_shield) == -1) {
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

            				shipList[defender].ionDmgTaken += parseInt(result[3],10);
            				if (parseInt(result[3],10) > shipList[defender].maxIonDmgTaken){
            					shipList[defender].maxIonDmgTaken = parseInt(result[3],10);
            				}
            				if (item.indexOf(regex_damage_to_the_hull) == -1 && item.indexOf(regex_damage_to_the_shield) == -1) {
            					shipList[defender].hitsTaken++;
            					shipList[defender].totalHitsTaken++;
            				}
            			}


            		}  previousAttacker = listContainShip(result[1],shipList);
        		}
        	}
        	else if  (item.indexOf(regex_has_been_destroyed) > -1) {
        		//patt = /^ *-(.+) has been destroyed!/;
        		patt = new RegExp("^ *-(.+) "+regex_has_been_destroyed);
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

        				shipList[destroyed].destroyed=1;

        			}
    				shipList[previousAttacker].kills++;
        		}
        	}    
            
        	else if  (item.indexOf(regex_retreated_from_battle) > -1) {
        		//patt = /^ *-(.+) retreated from battle/;
        		patt = new RegExp("^ *-(.+) "+regex_retreated_from_battle);
        		result = item.match(patt);
        		if (result != null) {

        			var retreated = listContainShip(result[1],shipList);
        			if (retreated == -1) {
        				var newShip = new ship(result[1]);
        				newShip.retreated=1;
        				shipList.push(newShip);
        			}
        			else {
        			//console.log(result[1]);

        				shipList[retreated].retreated=1;

        			}

        		}
        	}

        //	console.log("att: " +attacker);
        	//console.log("prev: " +previousAttacker);

    		
        
        
       //  });

    }

