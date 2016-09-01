





var ResponsiveTable = React.createClass({displayName: "ResponsiveTable",
	getInitialState: function() {
	
	 	var showDetails = [];
	 	this.props.lines.forEach( function(line, key) {
	   		//console.log(key);
			showDetails[key] = false;
		});
			
			
		var nbColumn = window.innerWidth > wrapWidth ? 
	      		Object.keys(this.props.columns).length : 
	      		Object.keys(this.props.columns).length - this.props.wrap;
	      		//console.log(nbColumn);
         return {
    		nbColumnMax: Object.keys(this.props.columns).length,
            width: window.innerWidth, 
	    	height: window.innerHeight, 
	        nbColumn: nbColumn,
	        showDetails:showDetails
         };
     },
	 getTime: function(time) {
	 
	 	time =  time * (1 + this.props.settings.society * 0.05 ) * ( 1 - this.props.settings.construction * 0.005) ;
	 	if (this.props.constructionTime) {
	 		time = time/1.5152;
	 	}
	 	time = Math.ceil (time);
		return time.toString().toDHMS();
	 },
	 getResCost: function(cost) {
	 	cost = Math.ceil ( cost * (1 - this.props.settings.society * 0.05 ) * ( 1 - this.props.settings.economy * 0.005) );
		return cost;
	 },
	 getCost: function(cost) {
	 	cost = Math.ceil ( cost * (1 - this.props.settings.society * 0.05 ) * ( 1 - this.props.settings.economy * 0.005) );
		return numberWithCommas(cost);
	 },
	 getTotCost: function() {
	 	  var sum = 0;
	    for (var i = 0; i < arguments.length; i++) {
	        sum += parseInt(this.getResCost(arguments[i])); //console.log( this.getResCost(arguments[i]));
	    }
	    //console.log("sum= "+sum);
			return numberWithCommas(sum);
	 },
	 getUpkeep: function(upkeep) {
	 	upkeep =  Math.ceil ( upkeep * (1 + this.props.settings.war * 0.1 ) );
		return numberWithCommas(upkeep);
	 },
     render: function() {
	  	//console.log(this.state.width + " - " + this.state.nbColumn);
	
	  	var rowHeader = [];
	  	var rowBody = [];
	  	var row = [];
	
		for (var i = 0; i < this.state.nbColumn; i++) {
			var column=Object.keys(this.props.columns)[i];
			//console.log(column);
				if (column == 'titanium' || column == 'copper' || column == 'iron' || column == 'aluminium' || 
								 column == 'silicon' || column == 'uranium' || column == 'nitrogen' || column == 'hydrogen') {
					rowHeader.push(React.createElement("td", {key: column}, React.createElement("div", {className: "icon-"+column})));
				} 
				else {
					rowHeader.push(React.createElement("td", {className: "title-res", key: column}, this.props.columns[column]));
				}
    	}
	    rowHeader = React.createElement("tr", null, rowHeader);
	
		this.props.lines.forEach( function(line, key) {
		//console.log(line);
	  		var wrapedColumn = "";
	  		var wrapedResColumn = [];
	
			for (var i = 0; i < this.state.nbColumn; i++) {
				var column=Object.keys(this.props.columns)[i];
				//console.log(column);
				if (column == 'image') {
					
					row.push(React.createElement("td", {key: key+"-"+column}, React.createElement("div", {className: "icon-"+line.name})));
				}
				else if (column == 'name') {
					row.push(React.createElement("td", {key: key+"-"+column}, this.props.name[line.name]));
				}
				else if (column == 'time') {
					row.push(React.createElement("td", {key: key+"-"+column}, this.getTime(line[column])));
				}
				else if (column == 'titanium' || column == 'copper' || column == 'iron' || column == 'aluminium' || 
								 column == 'silicon' || column == 'uranium' || column == 'nitrogen' || column == 'hydrogen') {
					row.push(React.createElement("td", {key: key+"-"+column}, numberWithCommas(this.getResCost(line[column]))));
				}
				else if (column == 'cost') {
					row.push(React.createElement("td", {key: key+"-"+column}, this.getCost(line[column])));
				}
				else if (column == 'upkeep') {
					row.push(React.createElement("td", {key: key+"-"+column}, this.getUpkeep(line[column])));
				}
				else if (column == 'agility') {
					row.push(React.createElement("td", {key: key+"-"+column}, line[column]));
				}
				else if (column == 'totCost') {
					row.push(React.createElement("td", {key: key+"-"+column}, this.getTotCost(line.titanium,line.copper,line.iron,
						line.aluminium,line.silicon,line.uranium,line.nitrogen,line.hydrogen)));
				}
				else if (column == 'impulse') {
					if (this.props.comp) {
						row.push(React.createElement("td", {key: key+"-"+column}, numberWithCommas(line[column])));
					}
					else if (line.name == 'adam') {
						row.push(React.createElement("td", {key: key+"-"+column}, "x"+line[column], " (+4.000)"));
					}
					else {
						row.push(React.createElement("td", {key: key+"-"+column}, "x"+line[column]));
					}					
				}
				else if (column == 'warp') {
					if (this.props.comp) {
						row.push(React.createElement("td", {key: key+"-"+column}, numberWithCommas(line[column])));
					}
					else if (line.name == 'adam') {
						row.push(React.createElement("td", {key: key+"-"+column}, "x"+line[column], " (+2.000)"));
					}
					else {
						row.push(React.createElement("td", {key: key+"-"+column}, "x"+line[column]));
					}					
				}
    		else if (column == 'damage') {
    			row.push(React.createElement("td", {key: key+"-"+column}, "-"+line[column]+"%"));
    		}
    		else if (column == 'size' || column == 'armor' || column == 'shield') {
    			if (line[column].length == 2) {
    				row.push(React.createElement("td", {key: key+"-"+column}, numberWithCommas(line[column][0]), "/", numberWithCommas(line[column][1])));
    			}
    			else {
    			  row.push(React.createElement("td", {key: key+"-"+column}, numberWithCommas(line[column])));
    			}
    		}
    		else {
    			row.push(React.createElement("td", {key: key+"-"+column}, numberWithCommas(line[column])));
    		}
	    }
    	rowBody.push(React.createElement("tr", {id: line.name, onClick: this.handleClick.bind(this,key), key: key}, row));
    	row = [];
	
			if(this.state.nbColumn < this.state.nbColumnMax) {
			    for (var i = this.state.nbColumn; i < this.state.nbColumnMax; i++) {
					
						var column=Object.keys(this.props.columns)[i];
								
						if (column == 'time') {
			      			wrapedColumn += this.props.columns[column] + " " + this.getTime(line[column]) + ", ";
						} 
						else if (column == 'cost') {
							wrapedColumn += this.props.columns[column] + " " + this.getCost(line[column]) + ", ";
						} 
						else if (column == 'upkeep') {
							wrapedColumn += this.props.columns[column] + " " + this.getUpkeep(line[column]) + ", ";
						}
	      		else { //its res
	      			wrapedResColumn.push( React.createElement("div", {key: column, className: "res-mini "+column}, numberWithCommas(this.getResCost(line[column]))) );
	      		}
			      		
					}
					
					wrapedColumn = wrapedColumn.slice(0, -2);
	
					if (this.state.showDetails[key]) {
						if (!!wrapedColumn) {
							rowBody.push(
				    		React.createElement("tr", {key: key+"-wrap"}, 
				    			React.createElement("td", {colSpan: this.state.nbColumn}, " ", wrapedColumn)
				    		));
				    }
				    else {
							rowBody.push(
				    		React.createElement("tr", {key: key+"-wrap"}, 
				    			React.createElement("td", {colSpan: this.state.nbColumn}, " ", wrapedResColumn)
				    		));
				    }
			    }
			}
	
		    
				//console.log(rowBody);
		}.bind(this));
	
	    return (
	      React.createElement("table", {className: "table table-hover table-condensed"}, 
	        React.createElement("thead", null, 
		        rowHeader
	        ), 
	        React.createElement("tbody", null, 
		        rowBody
	        )
	      )
	    );
     },
	 handleClick: function(key) {
	 	var showDetails = this.state.showDetails;
	 	showDetails[key] = showDetails[key] ? false : true;
	    this.setState({showDetails: showDetails});
	 },
     updateDimensions: function() {
     	var showDetails = [];
     	this.props.lines.forEach( function(line, key) {
	   		//console.log(key);
			showDetails[key] = false;
		});
			
	    this.setState({width: window.innerWidth,
	    	nbColumn: window.innerWidth > wrapWidth ? this.state.nbColumnMax: this.state.nbColumnMax - this.props.wrap,
	      	showDetails: showDetails
	      	
	      	
		});
	  },
	  componentWillMount: function() {
	    this.updateDimensions();
	    
		
	    
	    
	  },
	  componentDidMount: function() {
	    window.addEventListener("resize", this.updateDimensions.bind(this));
	    
	  },
	  componentWillUnmount: function() {
	    window.removeEventListener("resize", this.updateDimensions.bind(this));
	  }
 });
