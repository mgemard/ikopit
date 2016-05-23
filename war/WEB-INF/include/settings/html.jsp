
<div class="slider">
<button id="show-hide-slider" class="glyphicon glyphicon-cog btn-default btn"></button>
<div class="slider-content">

	<table class="table-condensed table-politics">
		<tr>
			<td colspan=2><h4><fmt:message key="political_alignment" bundle="${settings}"/></h4></td>
			<td class="output-politics-commander" >
				<output id="rangevalue_society">0</output>
			</td>
		</tr>
		<tr>
			<td class="text-politics-commander" >
				<fmt:message key="open_society" bundle="${settings}"/>
			</td>
			<td class="button-politics-commander" >
				<button id="step-down-society" type="button" class="btn-default">-</button>
			</td>
			<td>
				<input type="range" min="-5" max="5" id="rangeinput_society" value="0" onchange="rangevalue_society.value=value" />
			</td>
			<td class="button-politics-commander" >
				<button id="step-up-society" type="button" class=" btn-default">+</button>
			</td>
			<td class="text-politics-commander" >
				<fmt:message key="closed_society" bundle="${settings}"/>
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td class="output-politics-commander" >
				<output id="rangevalue_war">0</output>
			</td>
		</tr>
		<tr>
			<td class="text-politics-commander" >
				<fmt:message key="war_proponent" bundle="${settings}"/>
			</td>
			<td class="button-politics-commander" >
				<button id="step-down-war" type="button" class=" btn-default" >-</button>
			</td>
			<td>
				<input type="range" min="-5" max="5" id="rangeinput_war" value="0" onchange="rangevalue_war.value=value" />
			</td>
			<td class="button-politics-commander" >
				<button id="step-up-war" type="button" class=" btn-default">+</button>
			</td>
			<td class="text-politics-commander" >
				<fmt:message key="pacifists" bundle="${settings}"/>
			</td>
		</tr>
	</table>

	<table class="table-condensed table-commander" style="width:100%">
		<tr>
			<td colspan=2><h4><fmt:message key="commander" bundle="${settings}"/></h4></td>
			<td class="output-politics-commander" >
				<output id="rangevalue_construction">0</output>
			</td>
		</tr>
		<tr>
			<td class="text-politics-commander">
				<fmt:message key="construction" bundle="${settings}"/>
			</td>
			<td class="button-politics-commander">
				<button id="step-down-construction" type="button" class=" btn-default" >-</button>
			</td>
			<td>
				<input type="range" id="rangeinput_construction" value="0" onchange="rangevalue_construction.value=value" />
			</td>
			<td class="button-politics-commander">
				<button id="step-up-construction" type="button" class=" btn-default" >+</button>
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td class="output-politics-commander" >
				<output id="rangevalue_economy">0</output>
			</td>
		</tr>
		<tr>
			<td class="text-politics-commander">
				<fmt:message key="economy" bundle="${settings}"/>
			</td>
			<td class="button-politics-commander">
				<button id="step-down-economy" type="button" class=" btn-default" >-</button>
			</td>
			<td>
				<input type="range" id="rangeinput_economy" value="0" onchange="rangevalue_economy.value=value" />
			</td>
			<td class="button-politics-commander">
				<button id="step-up-economy" type="button" class=" btn-default" >+</button>
			</td>
		</tr>
	</table>
	
		
</div>  <%--end sliders section --%> 
</div> <%--end sliders section with show/hide button --%> 

 