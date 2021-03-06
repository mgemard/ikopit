//Some of the Knockout examples use this data
var buildings = [{
	"control_center": [
           {
        	   "name": "level_1",
        	   "titanium":0,
        	   "copper":0,
        	   "iron":0,
        	   "aluminium":0,
        	   "silicon":0,
        	   "uranium":0,
        	   "nitrogen":0,
        	   "hydrogen":0,	
        	   "time":0
           },
           {
        	   "name": "level_2",
        	   "titanium":1000,
        	   "copper":250,
        	   "iron":1500,
        	   "aluminium":250,
        	   "silicon":584,
        	   "uranium":84,
        	   "nitrogen":84,
        	   "hydrogen":0,	
        	   "time":3600
           },
           {
        	   "name": "level_3",
        	   "titanium":7000,
        	   "copper":4500,
        	   "iron":6000,
        	   "aluminium":10000,
        	   "silicon":6334,
        	   "uranium":3334,
        	   "nitrogen":3334,
        	   "hydrogen":0,	
        	   "time":86400
           },{
        	   "name": "level_4",
        	   "titanium":10000,
        	   "copper":8000,
        	   "iron":10000,
        	   "aluminium":4000,
        	   "silicon":9334,
        	   "uranium":1334,
        	   "nitrogen":1334,
        	   "hydrogen":0,	
        	   "time":172800
           },{
        	   "name": "level_5",
        	   "titanium":20000,
        	   "copper":12500,
        	   "iron":20000,
        	   "aluminium":6250,
        	   "silicon":14584,
        	   "uranium":2084,
        	   "nitrogen":2084,
        	   "hydrogen":0,	
        	   "time":432000
           },{
        	   "name": "level_6",
        	   "titanium":30000,
        	   "copper":18000,
        	   "iron":30000,
        	   "aluminium":9000,
        	   "silicon":21000,
        	   "uranium":3000,
        	   "nitrogen":3000,
        	   "hydrogen":0,	
        	   "time":864000
           },{
        	   "name": "level_7",
        	   "titanium":40000,
        	   "copper":24500,
        	   "iron":40000,
        	   "aluminium":12250,
        	   "silicon":28584,
        	   "uranium":4084,
        	   "nitrogen":4084,
        	   "hydrogen":0,	
        	   "time":1296000
           },{
        	   "name": "level_8",
        	   "titanium":64000,
        	   "copper":32000,
        	   "iron":64000,
        	   "aluminium":16000,
        	   "silicon":37334,
        	   "uranium":5334,
        	   "nitrogen":5334,
        	   "hydrogen":0,	
        	   "time":1728000
           },{
        	   "name": "level_9",
        	   "titanium":81000,
        	   "copper":40500,
        	   "iron":81000,
        	   "aluminium":20250,
        	   "silicon":47250,
        	   "uranium":6750,
        	   "nitrogen":6750,
        	   "hydrogen":0,	
        	   "time":2160000
           },{
        	   "name": "level_10",
        	   "titanium":100000,
        	   "copper":50000,
        	   "iron":100000,
        	   "aluminium":25000,
        	   "silicon":58334,
        	   "uranium":8334,
        	   "nitrogen":8334,
        	   "hydrogen":0,	
        	   "time":2592000
           }
  ],"com_center": [
            {
        	"name": "level_1",
        	"titanium":0,
        	"copper":250,
        	"iron":0,
        	"aluminium":0,
        	"silicon":250,
        	"uranium":0,
        	"nitrogen":250,
        	"hydrogen":250,	
        	"time":1800
        },
        {
        	"name": "level_2",
        	"titanium":1000,
        	"copper":8000,
        	"iron":2000,
        	"aluminium":2000,
        	"silicon":8667,
        	"uranium":667,
        	"nitrogen":2667,
        	"hydrogen":0,	
        	"time":28800
        },
        {
        	"name": "level_3",
        	"titanium":2250,
        	"copper":20000,
        	"iron":4500,
        	"aluminium":2545000,
        	"silicon":21500,
        	"uranium":1500,
        	"nitrogen":6000,
        	"hydrogen":0,	
        	"time":86400
        },{
        	"name": "level_4",
        	"titanium":4000,
        	"copper":30000,
        	"iron":8000,
        	"aluminium":8000,
        	"silicon":32667,
        	"uranium":2667,
        	"nitrogen":10667,
        	"hydrogen":0,	
        	"time":172800
        },{
        	"name": "level_5",
        	"titanium":6250,
        	"copper":50000,
        	"iron":12500,
        	"aluminium":12500,
        	"silicon":54367,
        	"uranium":4167,
        	"nitrogen":16667,
        	"hydrogen":0,	
        	"time":432000
        },{
        	"name": "level_6",
        	"titanium":9000,
        	"copper":75000,
        	"iron":18000,
        	"aluminium":18000,
        	"silicon":81000,
        	"uranium":6000,
        	"nitrogen":24000,
        	"hydrogen":0,	
        	"time":864000
        },{
        	"name": "level_7",
        	"titanium":12250,
        	"copper":100000,
        	"iron":24500,
        	"aluminium":24500,
        	"silicon":108167,
        	"uranium":8167,
        	"nitrogen":32667,
        	"hydrogen":0,	
        	"time":1296000
        },{
        	"name": "level_8",
        	"titanium":16000,
        	"copper":125000,
        	"iron":32000,
        	"aluminium":32000,
        	"silicon":135667,
        	"uranium":10667,
        	"nitrogen":42667,
        	"hydrogen":0,	
        	"time":1728000
        },{
        	"name": "level_9",
        	"titanium":20250,
        	"copper":202500,
        	"iron":40500,
        	"aluminium":40500,
        	"silicon":216000,
        	"uranium":13500,
        	"nitrogen":54000,
        	"hydrogen":0,	
        	"time":2160000
        },{
        	"name": "level_10",
        	"titanium":25000,
        	"copper":250000,
        	"iron":50000,
        	"aluminium":50000,
        	"silicon":266667,
        	"uranium":16667,
        	"nitrogen":66667,
        	"hydrogen":0,	
        	"time":2592000
        }
 ],"univ": [
         {
    	 "name": "level_1",
    	 "titanium":0,
    	 "copper":500,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":751,
    	 "uranium":251,
    	 "nitrogen":751,
    	 "hydrogen":0,	
    	 "time":900
     },
     {
    	 "name": "level_2",
    	 "titanium":2000,
    	 "copper":8000,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":16668,
    	 "uranium":6667,
    	 "nitrogen":8667,
    	 "hydrogen":0,	
    	 "time":21600
     },
     {
    	 "name": "level_3",
    	 "titanium":4500,
    	 "copper":20000,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":40001,
    	 "uranium":20001,
    	 "nitrogen":24501,
    	 "hydrogen":0,	
    	 "time":800
     },{
    	 "name": "level_4",
    	 "titanium":8000,
    	 "copper":38000,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":66667,
    	 "uranium":31667,
    	 "nitrogen":39667,
    	 "hydrogen":0,	
    	 "time":172800
     },{
    	 "name": "level_5",
    	 "titanium":12500,
    	 "copper":62500,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":100001,
    	 "uranium":50001,
    	 "nitrogen":62501,
    	 "hydrogen":0,	
    	 "time":432000
     },{
    	 "name": "level_6",
    	 "titanium":18000,
    	 "copper":90000,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":150000,
    	 "uranium":75000,
    	 "nitrogen":90000,
    	 "hydrogen":0,	
    	 "time":864000
     },{
    	 "name": "level_7",
    	 "titanium":24500,
    	 "copper":133600,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":206668,
    	 "uranium":106668,
    	 "nitrogen":131168,
    	 "hydrogen":0,	
    	 "time":1296000
     },{
    	 "name": "level_8",
    	 "titanium":32000,
    	 "copper":160000,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":306667,
    	 "uranium":156667,
    	 "nitrogen":188667,
    	 "hydrogen":0,	
    	 "time":1728000
     },{
    	 "name": "level_9",
    	 "titanium":40500,
    	 "copper":202500,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":401667,
    	 "uranium":201667,
    	 "nitrogen":242167,
    	 "hydrogen":0,	
    	 "time":2160000
     },{
    	 "name": "level_10",
    	 "titanium":50000,
    	 "copper":250000,
    	 "iron":0,
    	 "aluminium":0,
    	 "silicon":500001,
    	 "uranium":250001,
    	 "nitrogen":300001,
    	 "hydrogen":0,	
    	 "time":2592000
     }
 ],"research_center": [
      {
    	  "name": "level_1",
    	  "titanium":0,
    	  "copper":0,
    	  "iron":0,
    	  "aluminium":0,
    	  "silicon":400,
    	  "uranium":120,
    	  "nitrogen":120,
    	  "hydrogen":0,	
    	  "time":60
      },
      {
    	  "name": "level_2",
    	  "titanium":250,
    	  "copper":250,
    	  "iron":0,
    	  "aluminium":0,
    	  "silicon":667,
    	  "uranium":167,
    	  "nitrogen":167,
    	  "hydrogen":0,	
    	  "time":3600
      },
      {
    	  "name": "level_3",
    	  "titanium":2000,
    	  "copper":2000,
    	  "iron":0,
    	  "aluminium":2000,
    	  "silicon":667,
    	  "uranium":667,
    	  "nitrogen":667,
    	  "hydrogen":0,	
    	  "time":48000
      },{
    	  "name": "level_4",
    	  "titanium":8000,
    	  "copper":16000,
    	  "iron":0,
    	  "aluminium":8000,
    	  "silicon":18668,
    	  "uranium":10668,
    	  "nitrogen":10668,
    	  "hydrogen":0,	
    	  "time":172800
      },{
    	  "name": "level_5",
    	  "titanium":12500,
    	  "copper":25000,
    	  "iron":0,
    	  "aluminium":12500,
    	  "silicon":29168,
    	  "uranium":16668,
    	  "nitrogen":16668,
    	  "hydrogen":0,	
    	  "time":432000
      },{
    	  "name": "level_6",
    	  "titanium":18000,
    	  "copper":36000,
    	  "iron":0,
    	  "aluminium":18000,
    	  "silicon":42000,
    	  "uranium":24000,
    	  "nitrogen":24000,
    	  "hydrogen":0,	
    	  "time":864000
      },{
    	  "name": "level_7",
    	  "titanium":24500,
    	  "copper":49000,
    	  "iron":0,
    	  "aluminium":24500,
    	  "silicon":57168,
    	  "uranium":32668,
    	  "nitrogen":32668,
    	  "hydrogen":0,	
    	  "time":1296000
      },{
    	  "name": "level_8",
    	  "titanium":32000,
    	  "copper":64000,
    	  "iron":0,
    	  "aluminium":32000,
    	  "silicon":74000,
    	  "uranium":42668,
    	  "nitrogen":42668,
    	  "hydrogen":0,	
    	  "time":1728000
      },{
    	  "name": "level_9",
    	  "titanium":40500,
    	  "copper":81000,
    	  "iron":0,
    	  "aluminium":40500,
    	  "silicon":94500,
    	  "uranium":54000,
    	  "nitrogen":54000,
    	  "hydrogen":0,	
    	  "time":2160000
      },{
    	  "name": "level_10",
    	  "titanium":50000,
    	  "copper":100000,
    	  "iron":0,
    	  "aluminium":50000,
    	  "silicon":116668,
    	  "uranium":66668,
    	  "nitrogen":66668,
    	  "hydrogen":0,	
    	  "time":2592000
      }
 ],"gov": [
       {
	   "name": "level_1",
	   "titanium":100,
	   "copper":250,
	   "iron":100,
	   "aluminium":0,
	   "silicon":250,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":1800
   },
   {
	   "name": "level_2",
	   "titanium":2000,
	   "copper":2000,
	   "iron":4500,
	   "aluminium":2000,
	   "silicon":4500,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":28800
   },
   {
	   "name": "level_3",
	   "titanium":4500,
	   "copper":4500,
	   "iron":15000,
	   "aluminium":4500,
	   "silicon":12000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":48000
   },{
	   "name": "level_4",
	   "titanium":8000,
	   "copper":8000,
	   "iron":18000,
	   "aluminium":8000,
	   "silicon":18000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":168000
   },{
	   "name": "level_5",
	   "titanium":12500,
	   "copper":12500,
	   "iron":30000,
	   "aluminium":12500,
	   "silicon":30000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":432000
   },{
	   "name": "level_6",
	   "titanium":18000,
	   "copper":18000,
	   "iron":45000,
	   "aluminium":18000,
	   "silicon":45000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":864000
   },{
	   "name": "level_7",
	   "titanium":24500,
	   "copper":24500,
	   "iron":60000,
	   "aluminium":24500,
	   "silicon":60000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":1296000
   },{
	   "name": "level_8",
	   "titanium":32000,
	   "copper":32000,
	   "iron":80000,
	   "aluminium":32000,
	   "silicon":80000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":1728000
   },{
	   "name": "level_9",
	   "titanium":40500,
	   "copper":40500,
	   "iron":100000,
	   "aluminium":40500,
	   "silicon":100000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":2160000
   },{
	   "name": "level_10",
	   "titanium":50000,
	   "copper":50000,
	   "iron":125000,
	   "aluminium":50000,
	   "silicon":125000,
	   "uranium":0,
	   "nitrogen":0,
	   "hydrogen":0,	
	   "time":2592000
   }
],"barracks": [
    {
    	"name": "level_1",
    	"titanium":2500,
    	"copper":0,
    	"iron":5000,
    	"aluminium":0,
    	"silicon":500,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":21600
    },
    {
    	"name": "level_2",
    	"titanium":10000,
    	"copper":0,
    	"iron":20000,
    	"aluminium":0,
    	"silicon":2000,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":43200
    },
    {
    	"name": "level_3",
    	"titanium":22500,
    	"copper":0,
    	"iron":45000,
    	"aluminium":0,
    	"silicon":4500,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":86400
    },{
    	"name": "level_4",
    	"titanium":40000,
    	"copper":0,
    	"iron":80000,
    	"aluminium":0,
    	"silicon":8000,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":254400
    },{
    	"name": "level_5",
    	"titanium":62500,
    	"copper":0,
    	"iron":125000,
    	"aluminium":0,
    	"silicon":12500,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":432000
    },{
    	"name": "level_6",
    	"titanium":90000,
    	"copper":0,
    	"iron":180000,
    	"aluminium":0,
    	"silicon":18000,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":864000
    },{
    	"name": "level_7",
    	"titanium":122500,
    	"copper":0,
    	"iron":245000,
    	"aluminium":0,
    	"silicon":24500,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":1296000
    },{
    	"name": "level_8",
    	"titanium":160000,
    	"copper":0,
    	"iron":320000,
    	"aluminium":0,
    	"silicon":32000,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":1728000
    },{
    	"name": "level_9",
    	"titanium":202500,
    	"copper":0,
    	"iron":405000,
    	"aluminium":0,
    	"silicon":40500,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":2160000
    },{
    	"name": "level_10",
    	"titanium":250000,
    	"copper":0,
    	"iron":500000,
    	"aluminium":0,
    	"silicon":50000,
    	"uranium":0,
    	"nitrogen":0,
    	"hydrogen":0,	
    	"time":2592000
    }
 ],"shipyard": [
     {
    	 "name": "level_1",
    	 "titanium":250,
    	 "copper":50,
    	 "iron":100,
    	 "aluminium":50,
    	 "silicon":50,
    	 "uranium":500,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":7200
     },
     {
    	 "name": "level_2",
    	 "titanium":8000,
    	 "copper":2000,
    	 "iron":9000,
    	 "aluminium":2000,
    	 "silicon":2000,
    	 "uranium":15000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":43200
     },
     {
    	 "name": "level_3",
    	 "titanium":10000,
    	 "copper":4500,
    	 "iron":10000,
    	 "aluminium":4500,
    	 "silicon":4500,
    	 "uranium":20000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":86400
     },{
    	 "name": "level_4",
    	 "titanium":20000,
    	 "copper":8000,
    	 "iron":20000,
    	 "aluminium":8000,
    	 "silicon":8000,
    	 "uranium":30000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":254400
     },{
    	 "name": "level_5",
    	 "titanium":35000,
    	 "copper":12500,
    	 "iron":35000,
    	 "aluminium":12500,
    	 "silicon":12500,
    	 "uranium":4000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":432000
     },{
    	 "name": "level_6",
    	 "titanium":50000,
    	 "copper":18000,
    	 "iron":50000,
    	 "aluminium":18000,
    	 "silicon":18000,
    	 "uranium":60000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":864000
     },{
    	 "name": "level_7",
    	 "titanium":70000,
    	 "copper":24500,
    	 "iron":70000,
    	 "aluminium":24500,
    	 "silicon":24500,
    	 "uranium":90000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":1296000
     },{
    	 "name": "level_8",
    	 "titanium":90000,
    	 "copper":32000,
    	 "iron":90000,
    	 "aluminium":32000,
    	 "silicon":32000,
    	 "uranium":120000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":1728000
     },{
    	 "name": "level_9",
    	 "titanium":120000,
    	 "copper":40500,
    	 "iron":120000,
    	 "aluminium":40500,
    	 "silicon":40500,
    	 "uranium":150000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":2160000
     },{
    	 "name": "level_10",
    	 "titanium":150000,
    	 "copper":50000,
    	 "iron":150000,
    	 "aluminium":50000,
    	 "silicon":50000,
    	 "uranium":200000,
    	 "nitrogen":0,
    	 "hydrogen":0,	
    	 "time":2592000
     }
 ],"dock": [
      {
    	  "name": "level_1",
    	  "titanium":10000,
    	  "copper":1000,
    	  "iron":3000,
    	  "aluminium":1000,
    	  "silicon":500,
    	  "uranium":0,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":14400
      },
      {
    	  "name": "level_2",
    	  "titanium":25000,
    	  "copper":4000,
    	  "iron":12000,
    	  "aluminium":4000,
    	  "silicon":2000,
    	  "uranium":0,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":43200
      },
      {
    	  "name": "level_3",
    	  "titanium":50000,
    	  "copper":9000,
    	  "iron":27000,
    	  "aluminium":9000,
    	  "silicon":4500,
    	  "uranium":0,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":86400
      },{
    	  "name": "level_4",
    	  "titanium":100000,
    	  "copper":16000,
    	  "iron":48000,
    	  "aluminium":16000,
    	  "silicon":8000,
    	  "uranium":5000,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":254400
      },{
    	  "name": "level_5",
    	  "titanium":150000,
    	  "copper":25000,
    	  "iron":75000,
    	  "aluminium":25000,
    	  "silicon":12500,
    	  "uranium":10000,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":432000
      },{
    	  "name": "level_6",
    	  "titanium":225000,
    	  "copper":36000,
    	  "iron":100000,
    	  "aluminium":36000,
    	  "silicon":18000,
    	  "uranium":25000,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":864000
      },{
    	  "name": "level_7",
    	  "titanium":300000,
    	  "copper":49000,
    	  "iron":130000,
    	  "aluminium":49000,
    	  "silicon":24500,
    	  "uranium":50000,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":1296000
      },{
    	  "name": "level_8",
    	  "titanium":400000,
    	  "copper":64000,
    	  "iron":160000,
    	  "aluminium":64000,
    	  "silicon":32000,
    	  "uranium":100000,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":1728000
      },{
    	  "name": "level_9",
    	  "titanium":500000,
    	  "copper":81000,
    	  "iron":200000,
    	  "aluminium":81000,
    	  "silicon":40500,
    	  "uranium":150000,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":2160000
      },{
    	  "name": "level_10",
    	  "titanium":750000,
    	  "copper":100000,
    	  "iron":250000,
    	  "aluminium":100000,
    	  "silicon":50000,
    	  "uranium":230000,
    	  "nitrogen":0,
    	  "hydrogen":0,	
    	  "time":2592000
      }
],"bunker": [
       {
    	   "name": "level_1",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":1000,
    	   "aluminium":0,
    	   "silicon":334,
    	   "uranium":334,
    	   "nitrogen":834,
    	   "hydrogen":0,	
    	   "time":21600
       },
       {
    	   "name": "level_2",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":20000,
    	   "aluminium":0,
    	   "silicon":6667,
    	   "uranium":6667,
    	   "nitrogen":8667,
    	   "hydrogen":0,	
    	   "time":43200
       },
       {
    	   "name": "level_3",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":45000,
    	   "aluminium":0,
    	   "silicon":15000,
    	   "uranium":15000,
    	   "nitrogen":19500,
    	   "hydrogen":0,	
    	   "time":86400
       },{
    	   "name": "level_4",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":80000,
    	   "aluminium":0,
    	   "silicon":26667,
    	   "uranium":26667,
    	   "nitrogen":34667,
    	   "hydrogen":0,	
    	   "time":254400
       },{
    	   "name": "level_5",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":80000,
    	   "aluminium":0,
    	   "silicon":26667,
    	   "uranium":26667,
    	   "nitrogen":34667,
    	   "hydrogen":0,	
    	   "time":432000
       },{
    	   "name": "level_6",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":180000,
    	   "aluminium":0,
    	   "silicon":60000,
    	   "uranium":60000,
    	   "nitrogen":78000,
    	   "hydrogen":0,	
    	   "time":864000
       },{
    	   "name": "level_7",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":245000,
    	   "aluminium":0,
    	   "silicon":81667,
    	   "uranium":81667,
    	   "nitrogen":106167,
    	   "hydrogen":0,	
    	   "time":1296000
       },{
    	   "name": "level_8",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":320000,
    	   "aluminium":0,
    	   "silicon":106667,
    	   "uranium":106667,
    	   "nitrogen":138667,
    	   "hydrogen":0,	
    	   "time":1728000
       },{
    	   "name": "level_9",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":405000,
    	   "aluminium":0,
    	   "silicon":135000,
    	   "uranium":135000,
    	   "nitrogen":175000,
    	   "hydrogen":0,	
    	   "time":2160000
       },{
    	   "name": "level_10",
    	   "titanium":0,
    	   "copper":0,
    	   "iron":500000,
    	   "aluminium":0,
    	   "silicon":166667,
    	   "uranium":166667,
    	   "nitrogen":216667,
    	   "hydrogen":0,	
    	   "time":2592000
       }
 ],"trade": [
        {
        	"name": "level_1",
        	"titanium":50,
        	"copper":100,
        	"iron":50,
        	"aluminium":0,
        	"silicon":51,
        	"uranium":51,
        	"nitrogen":51,
        	"hydrogen":0,	
        	"time":300
        },
        {
        	"name": "level_2",
        	"titanium":2000,
        	"copper":5000,
        	"iron":2000,
        	"aluminium":2500,
        	"silicon":8334,
        	"uranium":3334,
        	"nitrogen":3334,
        	"hydrogen":0,	
        	"time":21600
        },
        {
        	"name": "level_3",
        	"titanium":4500,
        	"copper":22500,
        	"iron":4500,
        	"aluminium":22500,
        	"silicon":14167,
        	"uranium":14167,
        	"nitrogen":14167,
        	"hydrogen":0,	
        	"time":43200
        },{
        	"name": "level_4",
        	"titanium":8000,
        	"copper":40000,
        	"iron":8000,
        	"aluminium":40000,
        	"silicon":30001,
        	"uranium":30001,
        	"nitrogen":30001,
        	"hydrogen":0,	
        	"time":254400
        },{
        	"name": "level_5",
        	"titanium":12500,
        	"copper":62500,
        	"iron":12500,
        	"aluminium":62500,
        	"silicon":47501,
        	"uranium":47501,
        	"nitrogen":47501,
        	"hydrogen":0,	
        	"time":432000
        },{
        	"name": "level_6",
        	"titanium":18000,
        	"copper":90000,
        	"iron":18000,
        	"aluminium":90000,
        	"silicon":73334,
        	"uranium":73334,
        	"nitrogen":73334,
        	"hydrogen":0,	
        	"time":864000
        },{
        	"name": "level_7",
        	"titanium":24500,
        	"copper":122500,
        	"iron":24500,
        	"aluminium":122500,
        	"silicon":107501,
        	"uranium":107501,
        	"nitrogen":107501,
        	"hydrogen":0,	
        	"time":1296000
        },{
        	"name": "level_8",
        	"titanium":32000,
        	"copper":160000,
        	"iron":32000,
        	"aluminium":160000,
        	"silicon":160001,
        	"uranium":160001,
        	"nitrogen":160001,
        	"hydrogen":0,	
        	"time":1728000
        },{
        	"name": "level_9",
        	"titanium":40500,
        	"copper":202500,
        	"iron":40500,
        	"aluminium":202500,
        	"silicon":202500,
        	"uranium":202500,
        	"nitrogen":202500,
        	"hydrogen":0,	
        	"time":2160000
        },{
        	"name": "level_10",
        	"titanium":50000,
        	"copper":250000,
        	"iron":50000,
        	"aluminium":250000,
        	"silicon":250001,
        	"uranium":250001,
        	"nitrogen":250001,
        	"hydrogen":0,	
        	"time":2592000
        }
],"res_facility": [
         {
        	 "name": "level_1",
        	 "titanium":50,
        	 "copper":50,
        	 "iron":50,
        	 "aluminium":50,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":30
         },
         {
        	 "name": "level_2",
        	 "titanium":200,
        	 "copper":100,
        	 "iron":200,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":10800
         },
         {
        	 "name": "level_3",
        	 "titanium":300,
        	 "copper":500,
        	 "iron":1000,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":30000
         },{
        	 "name": "level_4",
        	 "titanium":400,
        	 "copper":500,
        	 "iron":1800,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":90000
         },{
        	 "name": "level_5",
        	 "titanium":500,
        	 "copper":10000,
        	 "iron":10000,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":150000
         },{
        	 "name": "level_6",
        	 "titanium":6000,
        	 "copper":20000,
        	 "iron":2000,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":300000
         },{
        	 "name": "level_7",
        	 "titanium":8000,
        	 "copper":30000,
        	 "iron":30000,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":450000
         },{
        	 "name": "level_8",
        	 "titanium":9000,
        	 "copper":40000,
        	 "iron":40000,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":600000
         },{
        	 "name": "level_9",
        	 "titanium":10000,
        	 "copper":50000,
        	 "iron":50000,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":900000
         },{
        	 "name": "level_10",
        	 "titanium":11000,
        	 "copper":60000,
        	 "iron":60000,
        	 "aluminium":0,
        	 "silicon":0,
        	 "uranium":0,
        	 "nitrogen":0,
        	 "hydrogen":0,	
        	 "time":1500000
         }
         ]

}];
