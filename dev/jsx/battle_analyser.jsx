

    var Header1 = React.createClass({
		 sortClass: function(column) {
			    var ascOrDesc = (this.props.order == "asc") ? "headerSortAsc" : "headerSortDesc";
			    var result = "headerSort";
			    if (column == "status" && ( this.props.column == "destroyed" || this.props.column == "retreated" || this.props.column == "kills" ) ) {
			    	result = ascOrDesc;
			    } else {
			    	(this.props.column == column) ? result = ascOrDesc : "";
			    }
			    return result;
			  },
        render: function() {
            return (
           	 <tr>
                    <th rowSpan="2" className={this.sortClass("name")}>{react_name}</th>
                    <th rowSpan="2" className={this.sortClass("status")}>{react_d}/{react_r}/{react_k}</th>
                    <th colSpan="5" className="table-left-border">{react_done} ({react_avg}) [{react_max}]</th>
                    <th colSpan="5" className="table-left-border">{react_received} ({react_avg}) [{react_max}]</th>
                </tr>
            );
        }
    });

    var Header2 = React.createClass({
    	sortClass: function(column) {
		    var ascOrDesc = (this.props.order == "asc") ? "headerSortAsc" : "headerSortDesc";
		    var result = "headerSort";
		    if (column == "hit" && ( this.props.column == "hitsDone" || this.props.column == "totalHitsDone" || this.props.column == "aim" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "hullDone" && ( this.props.column == "hullDmgDone" || this.props.column == "avgHullDmgDone" || this.props.column == "maxHullDmgDone" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "shieldDone" && ( this.props.column == "shieldDmgDone" || this.props.column == "avgShieldDmgDone" || this.props.column == "maxShieldDmgDone" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "totalDone" && ( this.props.column == "totalDmgDone" || this.props.column == "avgTotalDmgDone" || this.props.column == "maxTotalDmgDone" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "ionDone" && ( this.props.column == "ionDmgDone" || this.props.column == "avgIonDmgDone" || this.props.column == "maxIonDmgDone" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "dodge" && ( this.props.column == "hitsTaken" || this.props.column == "totalHitsTaken" || this.props.column == "dodge" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "hullTaken" && ( this.props.column == "hullDmgTaken" || this.props.column == "avgHullDmgTaken" || this.props.column == "maxHullDmgTaken" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "shielTaken" && ( this.props.column == "shielDmgTaken" || this.props.column == "avgShielDmgTaken" || this.props.column == "maxShielDmgTaken" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "totalTaken" && ( this.props.column == "totalDmgTaken" || this.props.column == "avgTotalDmgTaken" || this.props.column == "maxTotalDmgTaken" ) ) {
		    	result = ascOrDesc;
		    }else if (column == "ionTaken" && ( this.props.column == "ionDmgTaken" || this.props.column == "avgIonDmgTaken" || this.props.column == "maxIonDmgTaken" ) ) {
		    	result = ascOrDesc;
		    } else {
		    	(this.props.column == column) ? result = ascOrDesc : "";
		    }
		    return result;
		  },
         render: function() {
             return (
                 <tr>
                     <th className={"table-left-border " + this.sortClass("hit")}>{react_hit}</th>
                     <th className={this.sortClass("hullDone")}>{react_hull}</th>
                     <th className={this.sortClass("shieldDone")}>{react_shield}</th>
                     <th className={this.sortClass("totalDone")}>{react_total}</th>
                     <th className={this.sortClass("ionDone")}>{react_ion}</th>
                     <th className={"table-left-border " + this.sortClass("dodge")}>{react_hit}</th>
                     <th className={this.sortClass("hullTaken")}>{react_hull}</th>
                     <th className={this.sortClass("shieldTaken")}>{react_shield}</th>
                     <th className={this.sortClass("totalTaken")}>{react_total}</th>
                     <th className={this.sortClass("ionTaken")}>{react_ion}</th>
                 </tr>
             );
         }
     });


    var ExtraHeader1 = React.createClass({
        render: function() {
            return (
           	 <tr>
                    <th rowSpan="2">{react_name}</th>
                    <th rowSpan="2">{react_d}/{react_r}/{react_k}</th>
                    <th colSpan="5" className="table-left-border">{react_done} ({react_avg}) [{react_max}]</th>
                    <th colSpan="5" className="table-left-border">{react_received} ({react_avg}) [{react_max}]</th>
                </tr>
            );
        }
    });

    var ExtraHeader2 = React.createClass({
         render: function() {
             return (
                 <tr>
                     <th className="table-left-border">{react_hit}</th>
                     <th>{react_hull}</th>
                     <th>{react_shield}</th>
                     <th>{react_total}</th>
                     <th>{react_ion}</th>
                     <th className="table-left-border">{react_hit}</th>
                     <th>{react_hull}</th>
                     <th>{react_shield}</th>
                     <th>{react_total}</th>
                     <th>{react_ion}</th>
                 </tr>
             );
         }
     });

     var ProductRow = React.createClass({

    	 sortColumn: function(column) {
    		 //console.log("click");
		   // return function(event) {
		      var newSortOrder;

		      if (this.props.column != column) {
		          newSortOrder = "asc";
		      } else {
		    	  newSortOrder = (this.props.order == "asc") ? "desc" : "asc";
		      }
		      //console.log("column: " + column);
		      //console.log("newSortOrder: " + newSortOrder);

		      this.props.handleSortColumn(
		    		  column,
		    		  newSortOrder
		             );


		 },
		 sortClass: function(column) {
			    return (this.props.column == column) ? "cell-sorted" : "";
			  },
         render: function() {
             return (
            		 <tr>
                     <td><p className={"cell-top " + this.sortClass("name")} onClick={this.sortColumn.bind(this,"name")}>{this.props.product.name}</p></td>
                     <td><p className="cell-top">
	                     <span className={this.sortClass("destroyed")} onClick={this.sortColumn.bind(this,"destroyed")}>{this.props.product.destroyed}</span>
	                     &nbsp;
	                     <span className={this.sortClass("retreated")} onClick={this.sortColumn.bind(this,"retreated")}>{this.props.product.retreated}</span>
	                     &nbsp;
	                     <span className={this.sortClass("kills")} onClick={this.sortColumn.bind(this,"kills")}>{this.props.product.kills}</span>
                     </p></td>
                     <td>
                     	<p className="cell-top">
	                     	<span className={this.sortClass("hitsDone")} onClick={this.sortColumn.bind(this,"hitsDone")}>{this.props.product.totalHitsDone == 0 ? '' : numberWithCommas(this.props.product.hitsDone)+'/'}</span>
	                     	<span className={this.sortClass("totalHitsDone")} onClick={this.sortColumn.bind(this,"totalHitsDone")}>{numberWithCommas(this.props.product.totalHitsDone)}</span>
                     	</p>
                     	<p className="cell-bottom">
                     		<span className={this.sortClass("aim")} onClick={this.sortColumn.bind(this,"aim")}>{this.props.product.totalHitsDone == 0 ? '' : '('+numberWithCommas(Math.round(1000*this.props.product.hitsDone/this.props.product.totalHitsDone)/10)+'%)'}</span>
                     	</p>
                     </td>
                     <td>
                         <p className="cell-top">
                         	<span className={this.sortClass("hullDmgDone")} onClick={this.sortColumn.bind(this,"hullDmgDone")}>{numberWithCommas(this.props.product.hullDmgDone)}</span>
                         	&nbsp;
                         	<span className={this.sortClass("avgHullDmgDone")} onClick={this.sortColumn.bind(this,"avgHullDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.hullDmgDone == 0 ? '' : '('+Math.round(10*this.props.product.hullDmgDone/this.props.product.totalHitsDone)/10+')'}</span>
                         </p>
                         <p className="cell-bottom">
                         	<span className={this.sortClass("maxHullDmgDone")} onClick={this.sortColumn.bind(this,"maxHullDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.hullDmgDone == 0 ? '' : '['+numberWithCommas(this.props.product.maxHullDmgDone)+']'}</span>
                         </p>
                     </td>
                     <td>
                         <p className="cell-top">
                         	<span className={this.sortClass("shieldDmgDone")} onClick={this.sortColumn.bind(this,"shieldDmgDone")}>{numberWithCommas(this.props.product.shieldDmgDone)}</span>
                         	&nbsp;
                         	<span className={this.sortClass("avgShieldDmgDone")} onClick={this.sortColumn.bind(this,"avgShieldDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.shieldDmgDone == 0 ? '' : '('+Math.round(10*this.props.product.shieldDmgDone/this.props.product.totalHitsDone)/10+')'}</span>
                         </p>
                         <p className="cell-bottom">
                         	<span className={this.sortClass("maxShieldDmgDone")} onClick={this.sortColumn.bind(this,"maxShieldDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.shieldDmgDone == 0 ? '' : '['+numberWithCommas(this.props.product.maxShieldDmgDone)+']'}</span>
                         </p>
                     </td>
                     <td>
	                     <p className="cell-top">
	                      	<span className={this.sortClass("totalDmgDone")} onClick={this.sortColumn.bind(this,"totalDmgDone")}>{numberWithCommas(this.props.product.hullDmgDone+this.props.product.shieldDmgDone)}</span>
	                      	&nbsp;
	                      	<span className={this.sortClass("avgTotalDmgDone")} onClick={this.sortColumn.bind(this,"avgTotalDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.maxTotalDmgDone == 0 ? '' : '('+Math.round(10*(this.props.product.hullDmgDone+this.props.product.shieldDmgDone)/this.props.product.totalHitsDone)/10+')'}</span>
	                      </p>
                         <p className="cell-bottom">
                         	<span className={this.sortClass("maxTotalDmgDone")} onClick={this.sortColumn.bind(this,"maxTotalDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.maxTotalDmgDone == 0 ? '' : '['+numberWithCommas(this.props.product.maxTotalDmgDone)+']'}</span>
                         </p>
                     </td>
	                 <td>
                         <p className="cell-top">
                         	<span className={this.sortClass("ionDmgDone")} onClick={this.sortColumn.bind(this,"ionDmgDone")}>{numberWithCommas(this.props.product.ionDmgDone)}</span>
                         	&nbsp;
                         	<span className={this.sortClass("avgIonDmgDone")} onClick={this.sortColumn.bind(this,"avgIonDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.ionDmgDone == 0 ? '' : '('+Math.round(10*this.props.product.ionDmgDone/this.props.product.totalHitsDone)/10+')'}</span>
                         </p>
                         <p className="cell-bottom">
                         	<span className={this.sortClass("maxIonDmgDone")} onClick={this.sortColumn.bind(this,"maxIonDmgDone")}>{this.props.product.totalHitsDone == 0 || this.props.product.ionDmgDone == 0 ? '' : '['+numberWithCommas(this.props.product.maxIonDmgDone)+']'}</span>
                         </p>
                     </td>

	                 <td>
                      	<p className="cell-top">
                      		<span className={this.sortClass("hitsTaken")} onClick={this.sortColumn.bind(this,"hitsTaken")}>{this.props.product.totalHitsTaken == 0 ? '' : numberWithCommas(this.props.product.hitsTaken)+'/'}</span>
                      		<span className={this.sortClass("totalHitsTaken")} onClick={this.sortColumn.bind(this,"totalHitsTaken")}>{numberWithCommas(this.props.product.totalHitsTaken)}</span>
                      	</p>
                      	<p className="cell-bottom">
                      		<span className={this.sortClass("dodge")} onClick={this.sortColumn.bind(this,"dodge")}>{this.props.product.totalHitsTaken == 0 ? '' : '('+numberWithCommas(Math.round(1000*this.props.product.hitsTaken/this.props.product.totalHitsTaken)/10)+'%)'}</span>
                      	</p>
                      </td>
	                      <td>
	                         <p className="cell-top">
	                         	<span className={this.sortClass("hullDmgTaken")} onClick={this.sortColumn.bind(this,"hullDmgTaken")}>{numberWithCommas(this.props.product.hullDmgTaken)}</span>
	                         	&nbsp;
	                         	<span className={this.sortClass("avgHullDmgTaken")} onClick={this.sortColumn.bind(this,"avgHullDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.hullDmgTaken == 0 ? '' : '('+Math.round(10*this.props.product.hullDmgTaken/this.props.product.totalHitsTaken)/10+')'}</span>
	                         </p>
	                         <p className="cell-bottom">
	                         	<span className={this.sortClass("maxHullDmgTaken")} onClick={this.sortColumn.bind(this,"maxHullDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.hullDmgTaken == 0 ? '' : '['+numberWithCommas(this.props.product.maxHullDmgTaken)+']'}</span>
	                         </p>
                      </td>
                      <td>
                         <p className="cell-top">
                         <span className={this.sortClass("shieldDmgTaken")} onClick={this.sortColumn.bind(this,"shieldDmgTaken")}>{numberWithCommas(this.props.product.shieldDmgTaken)}</span>
                         &nbsp;
                         <span className={this.sortClass("avgShieldDmgTaken")} onClick={this.sortColumn.bind(this,"avgShieldDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.shieldDmgTaken == 0 ? '' : '('+Math.round(10*this.props.product.shieldDmgTaken/this.props.product.totalHitsTaken)/10+')'}</span>
                         </p>
                         <p className="cell-bottom">
                         <span className={this.sortClass("maxShieldDmgTaken")} onClick={this.sortColumn.bind(this,"maxShieldDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.shieldDmgTaken == 0 ? '' : '['+numberWithCommas(this.props.product.maxShieldDmgTaken)+']'}</span>
                         </p>
                     </td>
                     <td>
	                     <p className="cell-top">
	                     <span className={this.sortClass("totalDmgTaken")} onClick={this.sortColumn.bind(this,"totalDmgTaken")}>{numberWithCommas(this.props.product.hullDmgTaken+this.props.product.shieldDmgTaken)}</span>
	                     &nbsp;
	                     <span className={this.sortClass("avgTotalDmgTaken")} onClick={this.sortColumn.bind(this,"avgTotalDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.maxTotalDmgTaken == 0 ? '' : '('+Math.round(10*(this.props.product.hullDmgTaken+this.props.product.shieldDmgTaken)/this.props.product.totalHitsTaken)/10+')'}</span>
	                      </p>
                         <p className="cell-bottom">
                         <span className={this.sortClass("maxTotalDmgTaken")} onClick={this.sortColumn.bind(this,"maxTotalDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.maxTotalDmgTaken == 0 ? '' : '['+numberWithCommas(this.props.product.maxTotalDmgTaken)+']'}</span>
                         </p>
                     </td>
	                 <td>
                         <p className="cell-top">
                         <span className={this.sortClass("ionDmgTaken")} onClick={this.sortColumn.bind(this,"ionDmgTaken")}>{numberWithCommas(this.props.product.ionDmgTaken)}</span>
                         &nbsp;
                         <span className={this.sortClass("avgIonDmgTaken")} onClick={this.sortColumn.bind(this,"avgIonDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.ionDmgTaken == 0 ? '' : '('+Math.round(10*this.props.product.ionDmgTaken/this.props.product.totalHitsTaken)/10+')'}</span>
                         </p>
                         <p className="cell-bottom">
                         <span className={this.sortClass("maxIonDmgTaken")} onClick={this.sortColumn.bind(this,"maxIonDmgTaken")}>{this.props.product.totalHitsTaken == 0 || this.props.product.ionDmgTaken == 0 ? '' : '['+numberWithCommas(this.props.product.maxIonDmgTaken)+']'}</span>
                         </p>
                     </td>

                 </tr>
             );
         }
     });

     var ProductTable = React.createClass({
    	 getInitialState: function() {
 		    return {
 		      column: "name",
 		      order: "asc"
 		    };
     	 },

     	setStateSortColumn: function(column, order) {
            this.setState({
            	column: column,
            	order: order
            });
        },
        sortRows: function(products) {

        	products.sort(function (a, b) {

        		var item1, item2;

        		switch (this.state.column) {
        			case "name":
        				item1 = a.name;
        				item2 = b.name;
        				break;
        			case "destroyed":
        				item1 = b.destroyed;
        				item2 = a.destroyed;
        				break;
        			case "retreated":
        				item1 = b.retreated;
        				item2 = a.retreated;
        				break;
        			case "kills":
        				item1 = b.kills;
        				item2 = a.kills;
        				break;
        			case "hitsDone":
        				item1 = b.hitsDone;
        				item2 = a.hitsDone;
        				break;
        			case "totalHitsDone":
        				item1 = b.totalHitsDone;
        				item2 = a.totalHitsDone;
        				break;
        			case "aim":
        				if (b.totalHitsDone == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.hitsDone/b.totalHitsDone;
        				}
        				if (a.totalHitsDone == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.hitsDone/a.totalHitsDone;
        				}
        				break;
        			case "hullDmgDone":
        				item1 = b.hullDmgDone;
        				item2 = a.hullDmgDone;
        				break;
        			case "avgHullDmgDone":
        				if (b.totalHitsDone == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.hullDmgDone/b.totalHitsDone;
        				}
        				if (a.totalHitsDone == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.hullDmgDone/a.totalHitsDone;
        				}
        				break;
        			case "maxHullDmgDone":
        				item1 = b.maxHullDmgDone;
        				item2 = a.maxHullDmgDone;
        				break;
        			case "shieldDmgDone":
        				item1 = b.shieldDmgDone;
        				item2 = a.shieldDmgDone;
        				break;
        			case "avgShieldDmgDone":
        				if (b.totalHitsDone == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.shieldDmgDone/b.totalHitsDone;
        				}
        				if (a.totalHitsDone == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.shieldDmgDone/a.totalHitsDone;
        				}
        				break;
        			case "maxShieldDmgDone":
        				item1 = b.maxShieldDmgDone;
        				item2 = a.maxShieldDmgDone;
        				break;
        			case "totalDmgDone":
        				item1 = b.hullDmgDone+b.shieldDmgDone;
        				item2 = a.hullDmgDone+a.shieldDmgDone;
        				break;
        			case "avgTotalDmgDone":
        				if (b.totalHitsDone == 0) {
        					item1 = 0;
        				} else {
            				item1 = (b.hullDmgDone+b.shieldDmgDone)/b.totalHitsDone;
        				}
        				if (a.totalHitsDone == 0) {
        					item2 = 0;
        				} else {
            				item2 = (a.hullDmgDone+a.shieldDmgDone)/a.totalHitsDone;
        				}
        				break;
        			case "maxTotalDmgDone":
        				item1 = b.maxTotalDmgDone;
        				item2 = a.maxTotalDmgDone;
        				break;
        			case "ionDmgDone":
        				item1 = b.ionDmgDone;
        				item2 = a.ionDmgDone;
        				break;
        			case "avgIonDmgDone":
        				if (b.totalHitsDone == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.ionDmgDone/b.totalHitsDone;
        				}
        				if (a.totalHitsDone == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.ionDmgDone/a.totalHitsDone;
        				}
        				break;
        			case "maxIonDmgDone":
        				item1 = b.maxIonDmgDone;
        				item2 = a.maxIonDmgDone;
        				break;
        			case "hitsTaken":
        				item1 = b.hitsTaken;
        				item2 = a.hitsTaken;
        				break;
        			case "totalHitsTaken":
        				item1 = b.totalHitsTaken;
        				item2 = a.totalHitsTaken;
        				break;
        			case "dodge":
        				if (b.totalHitsTaken == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.hitsTaken/b.totalHitsTaken;
        				}
        				if (a.totalHitsTaken == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.hitsTaken/a.totalHitsTaken;
        				}
        				break;
        			case "hullDmgTaken":
        				item1 = b.hullDmgTaken;
        				item2 = a.hullDmgTaken;
        				break;
        			case "avgHullDmgTaken":
        				if (b.totalHitsTaken == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.hullDmgTaken/b.totalHitsTaken;
        				}
        				if (a.totalHitsTaken == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.hullDmgTaken/a.totalHitsTaken;
        				}
        				break;
        			case "maxHullDmgTaken":
        				item1 = b.maxHullDmgTaken;
        				item2 = a.maxHullDmgTaken;
        				break;
        			case "shieldDmgTaken":
        				item1 = b.shieldDmgTaken;
        				item2 = a.shieldDmgTaken;
        				break;
        			case "avgShieldDmgTaken":
        				if (b.totalHitsTaken == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.shieldDmgTaken/b.totalHitsTaken;
        				}
        				if (a.totalHitsTaken == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.shieldDmgTaken/a.totalHitsTaken;
        				}
        				break;
        			case "maxShieldDmgTaken":
        				item1 = b.maxShieldDmgTaken;
        				item2 = a.maxShieldDmgTaken;
        				break;
        			case "totalDmgTaken":
        				item1 = b.hullDmgTaken+b.shieldDmgTaken;
        				item2 = a.hullDmgTaken+a.shieldDmgTaken;
        				break;
        			case "avgTotalDmgTaken":
        				if (b.totalHitsTaken == 0) {
        					item1 = 0;
        				} else {
            				item1 = (b.hullDmgTaken+b.shieldDmgTaken)/b.totalHitsTaken;
        				}
        				if (a.totalHitsTaken == 0) {
        					item2 = 0;
        				} else {
            				item2 = (a.hullDmgTaken+a.shieldDmgTaken)/a.totalHitsTaken;
        				}
        				break;
        			case "maxTotalDmgTaken":
        				item1 = b.maxTotalDmgTaken;
        				item2 = a.maxTotalDmgTaken;
        				break;
        			case "ionDmgTaken":
        				item1 = b.ionDmgTaken;
        				item2 = a.ionDmgTaken;
        				break;
        			case "avgIonDmgTaken":
        				if (b.totalHitsTaken == 0) {
        					item1 = 0;
        				} else {
            				item1 = b.ionDmgTaken/b.totalHitsTaken;
        				}
        				if (a.totalHitsTaken == 0) {
        					item2 = 0;
        				} else {
            				item2 = a.ionDmgTaken/a.totalHitsTaken;
        				}
        				break;
        			case "maxIonDmgTaken":
        				item1 = b.maxIonDmgTaken;
        				item2 = a.maxIonDmgTaken;
        				break;
        		}

        		if (item1 > item2) {
        				return this.state.order == "asc" ? 1 : -1;
        			}
        		if (item1 < item2) {
        			return this.state.order == "asc" ? -1 : 1;
        		}
        		// a must be equal to b
        		return 0;
        	}.bind(this));;
        	return products;
        },
        ignoreNumbers: function(products) {

        	var newProducts = [];

        	products.forEach(function(product, i){
        		var name = product.name.replace(/[0-9]/g, '');
        		product.name = name;

        		var position = listContainShip(name,newProducts)
        		if ( position == -1) {
        			newProducts.push(product);
        			//console.log("name: " +name);
        		} else {
        			//console.log("name: " +name);
        			//console.log("newProducts: " + newProducts);

        			newProducts[position].hitsDone += parseInt(product.hitsDone,10);
        			newProducts[position].totalHitsDone += parseInt(product.totalHitsDone,10);
        			newProducts[position].hitsTaken += parseInt(product.hitsTaken,10);
        			newProducts[position].totalHitsTaken += parseInt(product.totalHitsTaken,10);

        			newProducts[position].hullDmgDone += parseInt(product.hullDmgDone,10);
        			if (newProducts[position].maxHullDmgDone < parseInt(product.maxHullDmgDone,10)) {
	        			newProducts[position].maxHullDmgDone = parseInt(product.maxHullDmgDone,10);
	        		}
        			newProducts[position].shieldDmgDone += parseInt(product.shieldDmgDone,10);
        			if (newProducts[position].maxShieldDmgDone < parseInt(product.maxShieldDmgDone,10)) {
        				newProducts[position].maxShieldDmgDone = parseInt(product.maxShieldDmgDone,10);
        			}
        			if (newProducts[position].maxTotalDmgDone < parseInt(product.maxTotalDmgDone,10)) {
            			newProducts[position].maxTotalDmgDone = parseInt(product.maxTotalDmgDone,10);
        			}
        			newProducts[position].ionDmgDone += parseInt(product.ionDmgDone,10);
        			if (newProducts[position].maxIonDmgDone < parseInt(product.maxIonDmgDone,10)) {
            			newProducts[position].maxIonDmgDone = parseInt(product.maxIonDmgDone,10);
        			}
        			newProducts[position].hullDmgTaken += parseInt(product.hullDmgTaken,10);
        			if (newProducts[position].maxHullDmgTaken < parseInt(product.maxHullDmgTaken,10)) {
        				newProducts[position].maxHullDmgTaken = parseInt(product.maxHullDmgTaken,10);
        			}
        			newProducts[position].shieldDmgTaken += parseInt(product.shieldDmgTaken,10);
	        		if (newProducts[position].maxShieldDmgTaken < parseInt(product.maxShieldDmgTaken,10)) {
	        			newProducts[position].maxShieldDmgTaken = parseInt(product.maxShieldDmgTaken,10);
	        		}
	        		if (newProducts[position].maxTotalDmgTaken < parseInt(product.maxTotalDmgTaken,10)) {
	        			newProducts[position].maxTotalDmgTaken = parseInt(product.maxTotalDmgTaken,10);
	        		}
        			newProducts[position].ionDmgTaken += parseInt(product.ionDmgTaken,10);
        			if (newProducts[position].maxIonDmgTaken < parseInt(product.maxIonDmgTaken,10)) {
        				newProducts[position].maxIonDmgTaken = parseInt(product.maxIonDmgTaken,10);
        			}
        			newProducts[position].destroyed += parseInt(product.destroyed,10);
        			newProducts[position].retreated += parseInt(product.retreated,10);
        			newProducts[position].kills += parseInt(product.kills,10);
        		}
        	});

        	return newProducts;
        },
        render: function() {

        	//console.log("column: "+this.props.column);
        	//	console.log("order: "+this.props.order);



        	var productsSorted = clone(this.props.products);
        	/*
        	this.props.products.forEach(function(product, i) {
        		productsSorted[i] = product;
        	});*/

        	//true if checked
        	//this.props.inStockOnly
        	//merge here


        	if (this.props.inStockOnly) {
        		productsSorted = this.ignoreNumbers(productsSorted);
        	}


        	productsSorted = this.sortRows(productsSorted);



        	var rows = [];
        	var count = 0;


        	productsSorted.forEach(function(product, i) {
        		var re = new RegExp(this.props.filterText);
        		if ( !re.test(product.name) ) {
        			return;
        		}
        		rows.push(<ProductRow key={3*i} product={product}    //<ProductRow product={product}
        		handleSortColumn={this.setStateSortColumn}
        		column={this.state.column}
        		order={this.state.order}
        		/>);
        		if (count == 9 ) {
        			rows.push(<ExtraHeader1 key={3*i+1}/>);
        			rows.push(<ExtraHeader2 key={3*i+2}/>);
        		}
        		count = (count + 1) % 10;
        	}.bind(this));
        	return (
        			<table className="table battle-analyzer">
        			<thead>
        			<Header1
	            		column={this.state.column}
	            		order={this.state.order}
        			/>
        			<Header2
	            		column={this.state.column}
	            		order={this.state.order}
        			/>
        			</thead>
        			<tbody>{rows}</tbody>
        			</table>
        	);
        }
     });

     var SearchBar = React.createClass({
         handleChange: function() {
             this.props.onUserInput(
                 this.refs.filterTextInput.getDOMNode().value,
                 this.refs.inStockOnlyInput.getDOMNode().checked
             );
         },
         render: function() {
             return (
                 <form>
                     <input
                         type="checkbox"
                         checked={this.props.inStockOnly}
                         ref="inStockOnlyInput"
                         onChange={this.handleChange}
                     />
                     {' '}{react_ignore_number}{' '}
                     &nbsp;&nbsp;&nbsp;
                     <input
                         type="text"
                         placeholder={react_search}
                         value={this.props.filterText}
                         ref="filterTextInput"
                         onChange={this.handleChange}
                         className={"input-battle-analyzer"}
                     />
                     <span className={'info-icon'}></span>



                 </form>
             );
         }
     });

     var FilterableProductTable = React.createClass({
         getInitialState: function() {
             return {
                 filterText: '',
                 inStockOnly: false
             };
         },

         handleUserInput: function(filterText, inStockOnly) {
        	 if (this.state.inStockOnly != inStockOnly) {
        		 filterText = "";
        	 }

             this.setState({
                 filterText: filterText,
                 inStockOnly: inStockOnly
             });
         },

         render: function() {
             return (
                 <div>
                     <SearchBar
                         filterText={this.state.filterText}
                         inStockOnly={this.state.inStockOnly}
                         onUserInput={this.handleUserInput}
                     />
                     <ProductTable
                         products={this.props.products}
                         filterText={this.state.filterText}
                         inStockOnly={this.state.inStockOnly}
                     />
                 </div>
             );
         }
     });
