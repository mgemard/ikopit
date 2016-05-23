// Some of the Knockout examples use this data
var chassis = [
{
	 "small": [{
		 "adam": [{
			"name":"Adam",
	        "image": "/img/chassis/adam.gif",
	        "size": 5,
	        "hull":100,
	        "maneuv":40,
	        "tank":750,
			"impulse": 1,
			"warp":1,
			"cloak":1,
			"time":3400,
			"totCost":6780,
			"titanium":2462,
			"copper":2462,
			"iron":1231,
			"aluminium":124,
			"silicon":124,
			"uranium":124,
			"nitrogen":124,
			"hydrogen":124
	   }],"lancer": [{
			"name":"Lancer",
	        "image": "/img/chassis/lancer.gif",
	        "size": 10,
	        "hull":100,
	        "maneuv":100,
	        "tank":10000,
			"impulse": 6.8,
			"warp":1.7,
			"cloak":0.95,
			"time":4500,
			"totCost":1602,
			"titanium":500,
			"copper":1000,
			"iron":450,
			"aluminium":200,
			"silicon":750,
			"uranium":840,
			"nitrogen":100,
			"hydrogen":500
       }],"cutter": [{
			"name":"Cutter",
		    "image": "/img/chassis/cutter.gif",
	        "size": 15,
	        "hull":100,
	        "maneuv":100,
	        "tank":15000,
			"impulse": 5.95,
			"warp":1.53,
			"cloak":0.90,
			"time":6750,
			"totCost":6300,
			"titanium":1500,
			"copper":1800,
			"iron":400,
			"aluminium":150,
			"silicon":1000,
			"uranium":0,
			"nitrogen":700,
			"hydrogen":750
	   }],"mesotron": [{
			"name":"Mesotron",
		    "image": "/img/chassis/mesotron.gif",
	        "size": 15,
	        "hull":300,
	        "maneuv":80,
	        "tank":20000,
			"impulse": 3,
			"warp":2,
			"cloak":0.90,
			"time":75000,
			"totCost":81701,
			"titanium":50000,
			"copper":10000,
			"iron":10000,
			"aluminium":2000,
			"silicon":7000,
			"uranium":1,
			"nitrogen":2000,
			"hydrogen":700
	   }],"corvette": [{
			"name":"Corvette",
		    "image": "/img/chassis/corvette.gif",
	        "size": 20,
	        "hull":240,
	        "maneuv":90,
	        "tank":20000,
			"impulse": 4.25,
			"warp":1.45,
			"cloak":0.85,
			"time":73800,
			"totCost":7800,
			"titanium":1800,
			"copper":2750,
			"iron":50,
			"aluminium":300,
			"silicon":1000,
			"uranium":0,
			"nitrogen":900,
			"hydrogen":1000
	   }],"short-nose": [{
			"name":"Short-Nose",
		    "image": "/img/chassis/short-nose.gif",
	        "size": 25,
	        "hull":30,
	        "maneuv":90,
	        "tank":10000,
			"impulse": 6,
			"warp":1,
			"cloak":0.90,
			"time":50000,
			"totCost":51100,
			"titanium":2500,
			"copper":2500,
			"iron":100,
			"aluminium":1000,
			"silicon":15000,
			"uranium":15000,
			"nitrogen":10000,
			"hydrogen":5000
	   }]
	 //,
	 //"cutter": [{ ...
	 }],

	 "destroyers": [{
		 "firefly": [{
   			"name":"Fregate",
	        "image": "/img/chassis/firefly.gif",
   	        "size": 25,
   	        "hull":325,
   	        "maneuv":85,
   	        "tank":20000,
   			"impulse": 3.06,
   			"warp":1.36,
   			"cloak":0.80,
   			"time":11250,
   			"totCost":9552,
   			"titanium":2500,
   			"copper":2500,
   			"iron":250,
   			"aluminium":100,
   			"silicon":1334,
   			"uranium":1834,
   			"nitrogen":1534,
   			"hydrogen":0
       }],"nighthawk": [{
  			"name":"Nighthawk",
	        "image": "/img/chassis/nighthawk.gif",
   	        "size": 30,
   	        "hull":420,
   	        "maneuv":80,
   	        "tank":15000,
   			"impulse": 2.21,
   			"warp":0.68,
   			"cloak":0.70,
   			"time":13500,
   			"totCost":17201,
   			"titanium":2000,
   			"copper":3000,
   			"iron":2500,
   			"aluminium":1200,
   			"silicon":2167,
   			"uranium":3167,
   			"nitrogen":1667,
   			"hydrogen":1500
       }],"teletron": [{
 			"name":"Teletron",
	        "image": "/img/chassis/teletron.gif",
   	        "size": 35,
   	        "hull":700,
   	        "maneuv":75,
   	        "tank":20000,
   			"impulse": 2.9,
   			"warp":0.9,
   			"cloak":0.70,
   			"time":13500,
   			"totCost":11500,
   			"titanium":3000,
   			"copper":1000,
   			"iron":500,
   			"aluminium":2000,
   			"silicon":2000,
   			"uranium":2000,
   			"nitrogen":1000,
   			"hydrogen":0
       }],"destroyer": [{
			"name":"Zerstorer",
	        "image": "/img/chassis/destroyer.gif",
   	        "size": 40,
   	        "hull":300,
   	        "maneuv":5,
   	        "tank":20000,
   			"impulse": 2.21,
   			"warp":1.27,
   			"cloak":0.75,
   			"time":13500,
   			"totCost":5750,
   			"titanium":3000,
   			"copper":1500,
   			"iron":500,
   			"aluminium":750,
   			"silicon":0,
   			"uranium":0,
   			"nitrogen":0,
   			"hydrogen":0
       }],"medium_cruiser": [{
		"name":"Mittlerer Kreuzer",
        "image": "/img/chassis/medium_cruiser.gif",
        "size": 50,
        "hull":750,
        "maneuv":65,
        "tank":40000,
		"impulse": 1.4,
		"warp":1.1,
		"cloak":3.25,
		"time":22500,
		"totCost":88303,
		"titanium":5000,
		"copper":5000,
		"iron":5000,
		"aluminium":500,
		"silicon":2601,
		"uranium":4301,
		"nitrogen":2301,
		"hydrogen":2500
       }]
	 	}],
   	 "fireflys": [{
		 "battle_cruiser": [{
   				"name":"Schlachtkreuzer",
   		        "image": "/img/chassis/battle_cruiser.gif",
   		        "size": 60,
   		        "hull":960,
   		        "maneuv":60,
   		        "tank":45000,
   				"impulse": 1.05,
   				"warp":1.05,
   				"cloak":0.60,
   				"time":27000,
   				"totCost":27003,
   				"titanium":6000,
   				"copper":6000,
   				"iron":6000,
   				"aluminium":1000,
   				"silicon":2568,
   				"uranium":3568,
   				"nitrogen":2368,
   				"hydrogen":2500
        }],"battleship": [{
			"name":"Battleship",
	        "image": "/img/chassis/battleship.gif",
	        "size": 70,
	        "hull":1190,
	        "maneuv":55,
	        "tank":50000,
			"impulse": 1.02,
			"warp":1.02,
			"cloak":0.55,
			"time":31500,
			"totCost":44703,
			"titanium":10000,
			"copper":7000,
			"iron":7000,
			"aluminium":2500,
			"silicon":6901,
			"uranium":3401,
			"nitrogen":4901,
			"hydrogen":3000
        }],"dreadnought": [{
			"name":"Dreadnought",
	        "image": "/img/chassis/dreadnought.gif",
	        "size": 80,
	        "hull":1440,
	        "maneuv":50,
	        "tank":55000,
			"impulse": 0.94,
			"warp":0.94,
			"cloak":0.50,
			"time":36000,
			"totCost":58001,
			"titanium":12000,
			"copper":8000,
			"iron":12000,
			"aluminium":6000,
			"silicon":8667,
			"uranium":2167,
			"nitrogen":6167,
			"hydrogen":3000
        }],"dreadnought_sl": [{
			"name":"Dreadnought SL",
	        "image": "/img/chassis/dreadnought_sl.gif",
	        "size": 90,
	        "hull":1710,
	        "maneuv":45,
	        "tank":60000,
			"impulse": 0.85,
			"warp":0.85,
			"cloak":0.45,
			"time":40500,
			"totCost":88303,
			"titanium":18000,
			"copper":300,
			"iron":15000,
			"aluminium":10000,
			"silicon":16501,
			"uranium":10001,
			"nitrogen":14501,
			"hydrogen":4000
        }]
   	 	}],
	 "cruisers": [{
		 "cruiser": [{
			"name":"Kreuzer",
		    "image": "/img/chassis/cruiser.gif",
	        "size": 120,
	        "hull":750,
	        "maneuv":5,
	        "tank":35000,
			"impulse": 1.7,
			"warp":1,
			"cloak":0.70,
			"time":25000,
			"totCost":23502,
			"titanium":4000,
			"copper":4000,
			"iron":4200,
			"aluminium":500,
			"silicon":2634,
			"uranium":3834,
			"nitrogen":2334,
			"hydrogen":2000
	    }],"behemoth": [{
			"name":"Behemoth",
		    "image": "/img/chassis/behemoth.gif",
	        "size": 150,
	        "hull":3000,
	        "maneuv":25,
	        "tank":70000,
			"impulse": 0.17,
			"warp":0.51,
			"cloak":0.40,
			"time":67500,
			"totCost":120401,
			"titanium":40000,
			"copper":1400,
			"iron":3000,
			"aluminium":25000,
			"silicon":23667,
			"uranium":6167,
			"nitrogen":16167,
			"hydrogen":5000
	    }],"zyklop": [{
			"name":"Zyklop",
		    "image": "/img/chassis/zyklop.gif",
	        "size": 160,
	        "hull":2000,
	        "maneuv":15,
	        "tank":100000,
			"impulse": 0.61,
			"warp":1.5,
			"cloak":0.40,
			"time":80000,
			"totCost":161000,
			"titanium":80000,
			"copper":60000,
			"iron":200,
			"aluminium":200,
			"silicon":20000,
			"uranium":200,
			"nitrogen":200,
			"hydrogen":200
	    }],"aurel": [{
			"name":"Aurel",
		    "image": "/img/chassis/aurel.gif",
	        "size": 176,
	        "hull":3675,
	        "maneuv":20,
	        "tank":55000,
			"impulse": 0.51,
			"warp":0.34,
			"cloak":0.40,
			"time":78750,
			"totCost":171202,
			"titanium":40000,
			"copper":200,
			"iron":4000,
			"aluminium":8000,
			"silicon":45334,
			"uranium":3334,
			"nitrogen":40334,
			"hydrogen":30000
	    }],"mach": [{
			"name":"Mach",
		    "image": "/img/chassis/mach.gif",
	        "size": 200,
	        "hull":4400,
	        "maneuv":15,
	        "tank":90000,
			"impulse": 0.17,
			"warp":1.27,
			"cloak":0.35,
			"time":90000,
			"totCost":173002,
			"titanium":50000,
			"copper":3000,
			"iron":2000,
			"aluminium":6000,
			"silicon":36334,
			"uranium":4334,
			"nitrogen":31334,
			"hydrogen":40000
		    }]
	 	}],
	 "battleships": [{
		 "minotaur": [{
			"name":"Minotaurus",
		    "image": "/img/chassis/minotaur.gif",
	        "size": 220,
	        "hull":3250,
	        "maneuv":30,
	        "tank":70000,
			"impulse": 0.45,
			"warp":0.45,
			"cloak":0.30,
			"time":252000,
			"totCost":203000,
			"titanium":50000,
			"copper":5000,
			"iron":8000,
			"aluminium":30000,
			"silicon":15000,
			"uranium":5000,
			"nitrogen":40000,
			"hydrogen":50000
	   }],"birel": [{
			"name":"Buran",
		    "image": "/img/chassis/birel.gif",
	        "size": 225,
	        "hull":5175,
	        "maneuv":10,
	        "tank":70000,
			"impulse": 0.42,
			"warp":0.34,
			"cloak":0.30,
			"time":101250,
			"totCost":126500,
			"titanium":60000,
			"copper":500,
			"iron":5000,
			"aluminium":5000,
			"silicon":14000,
			"uranium":5000,
			"nitrogen":22000,
			"hydrogen":15000
	   }],"doombringer": [{
			"name":"Doombringer",
		    "image": "/img/chassis/doombringer.gif",
	        "size": 250,
	        "hull":6500,
	        "maneuv":5,
	        "tank":80000,
			"impulse": 0.42,
			"warp":0.26,
			"cloak":0.20,
			"time":112500,
			"totCost":244802,
			"titanium":80000,
			"copper":8000,
			"iron":6000,
			"aluminium":5000,
			"silicon":31334,
			"uranium":22334,
			"nitrogen":59334,
			"hydrogen":40000
	   }],"leviathan": [{
			"name":"Leviathan",
		    "image": "/img/chassis/leviathan.gif",
	        "size": 250,
	        "hull":6000,
	        "maneuv":5,
	        "tank":70000,
			"impulse": 0.34,
			"warp":0.34,
			"cloak":0.25,
			"time":112500,
			"totCost":140503,
			"titanium":50000,
			"copper":500,
			"iron":0,
			"aluminium":27500,
			"silicon":30001,
			"uranium":7501,
			"nitrogen":20001,
			"hydrogen":5000
	   }],"titan": [{
			"name":"Grosser",
		    "image": "/img/chassis/titan.gif",
	        "size": 250,
	        "hull":1500,
	        "maneuv":5,
	        "tank":90000,
			"impulse": 0.17,
			"warp":0.5,
			"cloak":0.50,
			"time":60000,
			"totCost":62902,
			"titanium":20000,
			"copper":400,
			"iron":0,
			"aluminium":15000,
			"silicon":15501,
			"uranium":5001,
			"nitrogen":5000,
			"hydrogen":2000
	   }]
	 }],
	 "space-stations": [{
		 "hydra": [{
			"name":"Hydra",
		    "image": "/img/chassis/hydra.gif",
	        "size": 20,
	        "hull":200,
	        "maneuv":10,
	        "tank":1000,
			"impulse": 0.5,
			"warp":0,
			"cloak":0.20,
			"time":5000,
			"totCost":3186,
			"titanium":1000,
			"copper":785,
			"iron":600,
			"aluminium":423,
			"silicon":232,
			"uranium":21,
			"nitrogen":25,
			"hydrogen":100
	   }],"baal": [{
			"name":"Baal",
		    "image": "/img/chassis/baal.gif",
	        "size": 60,
	        "hull":2000,
	        "maneuv":5,
	        "tank":1000,
			"impulse": 0.4,
			"warp":0,
			"cloak":0.20,
			"time":60000,
			"totCost":33944,
			"titanium":10000,
			"copper":6000,
			"iron":4000,
			"aluminium":2000,
			"silicon":10000,
			"uranium":444,
			"nitrogen":500,
			"hydrogen":1000
	   }],"leviathan_station": [{
			"name":"Leviathan-Station",
		    "image": "/img/chassis/leviathan_station.gif",
	        "size": 120,
	        "hull":2000,
	        "maneuv":1,
	        "tank":1000,
			"impulse": 0.3,
			"warp":0,
			"cloak":0.20,
			"time":40000,
			"totCost":72944,
			"titanium":30000,
			"copper":8000,
			"iron":8000,
			"aluminium":2000,
			"silicon":23000,
			"uranium":444,
			"nitrogen":500,
			"hydrogen":1000
	   }],"chassis_sb_4": [{
			"name":"Skylab",
		    "image": "/img/chassis/chassis_sb_4.gif",
	        "size": 120,
	        "hull":16000,
	        "maneuv":1,
	        "tank":1000,
			"impulse": 0.2,
			"warp":0,
			"cloak":0.20,
			"time":100000,
			"totCost":99167,
			"titanium":50000,
			"copper":22222,
			"iron":8000,
			"aluminium":2000,
			"silicon":15000,
			"uranium":444,
			"nitrogen":501,
			"hydrogen":1000
	   }],"trayan": [{
			"name":"Trayan",
		    "image": "/img/chassis/trayan.gif",
	        "size": 250,
	        "hull":15000,
	        "maneuv":1,
	        "tank":50000,
			"impulse": 0.26,
			"warp":0,
			"cloak":0.20,
			"time":250000,
			"totCost":372000,
			"titanium":140000,
			"copper":3000,
			"iron":15000,
			"aluminium":20000,
			"silicon":70000,
			"uranium":14000,
			"nitrogen":50000,
			"hydrogen":60000
	   }]
	 }]
  }];
