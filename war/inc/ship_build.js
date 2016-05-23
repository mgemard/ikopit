function loadDetails()
{
	details = new Array();

	for(var componentKey in componentsIncluded)
	{
		amount = componentsIncluded[componentKey];
		for(datakey in components[tabCategory][componentKey])
		{
			data = components[tabCategory][componentKey];

			if(typeof($('#shipyard_'+datakey+'')) != 'undefined' && $('#shipyard_'+datakey+'') != null && datakey != 'time_construction' && data[datakey] != '0' && data[datakey] != '0.00')
			{
				if(typeof(details[datakey]) == 'undefined')
				{
					details[datakey] = 0;
				}

				if(datakey == 'fuel_parsec')
				{
					var preparedValue = (parseFloat(data[datakey]) );
				}
				else
				{
					var preparedValue = (parseInt(data[datakey]) );
				}

				if(datakey == 'speed_impulse' || datakey == 'speed_warp')
				{
					if (dataChassis['engine_multiplicate'] == 'YES')
						preparedValue = preparedValue * parseFloat(dataChassis[datakey]);
				}

				if(datakey != 'cloak')
				{
					details[datakey] += parseFloat(preparedValue*amount);
				}
			}
		}
	}

	for(var detailkey in details)
	{

		if ((detailkey == 'speed_impulse' || detailkey == 'speed_warp') && dataChassis['engine_multiplicate'] == 'NO')
		{
			details[detailkey] = parseFloat(details[detailkey]) + parseFloat(dataChassis[detailkey]);
		}

		if (detailkey == 'fuel_parsec' && dataChassis["engine_multiplicate"]== "NO")
		{
			details[detailkey] = parseFloat(details[detailkey]) + parseFloat(dataChassis[detailkey]);
		}
		if(detailkey == 'fuel_parsec')
		{
			details[detailkey] = cutDecimal(details[detailkey],1);
		}
		else if(detailkey == 'health')
		{
			details[detailkey] = number_format(details[detailkey]+shipHealth);
		}
		else if(detailkey == 'fuel')
		{
			details[detailkey] = number_format(details[detailkey]+shipFuel) ;
		}
		else
		{
			details[detailkey] = number_format(details[detailkey]);
		}

		if($('#shipyard_'+detailkey) != null && detailkey.indexOf('component') < 0 &&  typeof($('#shipyard_'+detailkey)) != 'undefined' )
		{
			if (detailkey != 'cloak')
			{
				$('#shipyard_'+detailkey).html(details[detailkey]);

			}
		}
	}
}

function handle_keyboard(e,element)
{
	var element_id = $(element).attr('id');
	var amount = $(element).val();
	var component_id = element_id.substring(element_id.lastIndexOf('_')+1);
	var keyCodes = [8, 38, 40,48,49,50,51,52,53,54,55,56,57, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105];

	if(componentsIncluded[component_id] >= 0)
	{
		var space = parseInt($('#cellsMax').html())-parseInt($('#cellsinUse').html())+(parseInt(components[tabCategory][component_id]['cells'])*componentsIncluded[component_id]);
	}
	else
	{
		var space = parseInt($('#cellsMax').html())-parseInt($('#cellsinUse').html());
	}

	if(space == 0)
	{
		if(e.keyCode == 40 || e.keyCode == 8  )
		{
			var handle = true;
		}
		else
		{
			var handle = false;
		}
	}
	else if(space > 0 && space <=  shipSize)
	{
		var handle = true;
	}
	else if(parseInt($(element).html()) >= 0 )
	{
		if(e.keyCode != 8 && e.keyCode != 40)
		{
			var handle = true;
		}
		else
		{
			var handle = false;
		}
	}

	if($.inArray(e.keyCode, keyCodes) >= 0  && handle == true )
	{
		if(parseInt($('#f_input_'+component_id).val()) >= 0 )
		{

			if(e.keyCode == 38)
			{
				$('#f_input_'+component_id).val(parseInt($('#f_input_'+component_id).val())+1);
				update_component(component_id);
			}
			else if(e.keyCode == 40 && parseInt($('#f_input_'+component_id).val()) > 0)
			{
				$('#f_input_'+component_id).val(parseInt($('#f_input_'+component_id).val())-1)
				update_component(component_id);
			}
			else
			{
				update_component(component_id);
			}
		}
		else if(componentsIncluded[component_id] > 0)
		{
			update_component(component_id);
		}
	}
	else
	{
		if(componentsIncluded[component_id] >= 0)
		{
			$('#f_input_'+component_id).val(componentsIncluded[component_id]);
		}
		else
		{
			$('#f_input_'+component_id).val(0);
		}
	}
}

function ikoHint(value)
{
	ikoToolTip = toolTipTmpl.replace('<#ikolium#>',value);
	if(mobile()){
		$(".shipyard_details_amount_content .button_caption_icon_text").text(ikoToolTip);
	}
}

function update_component(component_id)
{
	new_amount = parseInt($('#f_input_'+component_id+'').val());

	if(typeof(componentsIncluded[component_id]) == 'undefined')
	{
		componentsIncluded[component_id] = 0;
	}
	oldAmount = componentsIncluded[component_id];
	size = parseInt($('#cellsinUse').html())-parseInt(components[tabCategory][component_id]['cells']*oldAmount);
	if(typeof(components[tabCategory][component_id]) !== 'undefined')
	{
		size = size + parseInt(components[tabCategory][component_id]['cells']*new_amount);
	}

	if(check_component_race_bunker(component_id, size) == false)
	{
		$('#f_input_'+component_id+'').val(componentsIncluded[component_id]);
		return false;
	}

	if(parseInt($('#f_input_'+component_id+'').val()) < 0 || $('#f_input_'+component_id+'').val() == '')
	{
		$('#f_input_'+component_id+'').val(0);
		updateResourceByComponent('del', component_id);
		componentsIncluded[component_id] = 0;
		loadDetails();
	}
	else if(size <= shipSize)
	{
		if (typeof(amount) == 'number')
		{
			amount = stripChars(amount);
			amount = parseInt(amount);
		}
		else
		{
			amount = 0;
		}

//		loadDetails();
		updateResourceByComponent('del', component_id);
		componentsIncluded[component_id] = new_amount;
		updateResourceByComponent('add', component_id);
		loadDetails();
	}
	else if(size > shipSize)
	{
		cells_used = parseInt($('#cellsinUse').html())-(components[tabCategory][component_id]['cells']*componentsIncluded[component_id]);
		component_max = Math.floor((shipSize-cells_used)/components[tabCategory][component_id]['cells']);
		$('#f_input_'+component_id).val(component_max);

		loadDetails();
		updateResourceByComponent('del', component_id);

		componentsIncluded[component_id] = component_max;
		loadDetails();
		updateResourceByComponent('add', component_id);
	}

	errorHandler();
	check_resources();
	update_cells();
	handle_numeric_button(tabCategory);
}

function handle_save_button(mode)
{
	if(mode == 'deactivate')
	{
		$('.shipyard_save').removeClass('font_lightblue_bold cursor_glow').addClass('font_grey_bold cursor_default').mouseover(function(){
			$(this).css('backgroundImage', "");
		});
	}
	else
	{
		$('.shipyard_save').removeClass('font_grey_bold cursor_default').addClass('font_lightblue_bold cursor_glow').mouseover(function(){
			$(this).css('backgroundImage', "url('"+dir_static_images+"building/shipyard/save_h.jpg')");
		});
	}
}

function switchComponentCategory(category)
{
	tabCategory = category;

	// Getting tab element
	var tabList = $('#componentList').children('.tablist');

	// Removing tab highlight
	tabList.children('.tab').removeClass('hover');

	// Getting component list element
	var elComponents = $('#components');

	// Hiding tab content
	elComponents.children().addClass('hide');

	// Adding tab highlight
	tabList.children('.tab.' + category).addClass('hover');

	// Displaying tab content
	elComponents.children('#componentCategory_' + category).removeClass('hide');

	// Settings from attribute to current category, to reopen same tab at action reload
	$('#component_category').val(category);
	handle_numeric_button(category);
}

function update_build_costs(type,old_amount)
{
	var countShips = $('#f_build_count').val();
	var resource_sum = 0;
	var oldShipAmount = 0;

	// --- Anzahl der alten Schiffe herausfinden
	if(type == 'del')
	{
		// mehrere Schiffe löschen
		if(typeof(old_amount) != 'undefined' && old_amount >= 0)
		{
			oldShipAmount = old_amount;
		}
		// ein Schiff löschen
		else
		{
			oldShipAmount = parseInt(countShips)+1;
		}
	}
	// ein Schiff hinzufügen
	else
	{
		oldShipAmount = parseInt(countShips)-1;
	}

	for (var count_resource = 0; count_resource < resource.length; count_resource++)
	{
		// Neuer Rohstoffwert = Anzahl der aktuellen Schiffe * Derzeitige Ressourcen / Anzahl der alten Schiffe
		var amount = countShips*(parseInt($('#layer_resource_' + count_resource).html().replace(/\./g,''))/oldShipAmount);

		if (amount > 0)
		{
			$('#layer_resource_' + count_resource).html(number_format(amount, 0, "", "."));
			resource_sum += parseInt($('#layer_resource_' + count_resource).html().replace(/\./g,''));
		}
	}
	check_resources();
	$('#layer_resource_8').html(number_format(resource_sum, 0, "", "."));
}

function ship_component_callback(data)
{
	var array = data.name.split("_");
	component_id = array.pop();

	if(typeof(componentsIncluded[component_id]) == 'undefined')
	{
		componentsIncluded[component_id] = 0;
	}
	oldAmount = componentsIncluded[component_id];
	amount = data.current;

	size = parseInt($('#cellsinUse').html())+((typeof(components[tabCategory][component_id]) === 'undefined') ? 0 : parseInt(components[tabCategory][component_id]['cells']))*(amount-oldAmount);

	if(check_component_race_bunker(component_id, size) == false)
	{
		return false;
	}
	update_component(component_id);
}

function updateResourceByComponent(type)
{
	var shipAmount = $('#f_build_count').val();

	if(!shipAmount || shipAmount <= 0)
	{
		shipAmount = 1;
	}

	var array_resource = new Array('resource_titanium','resource_copper','resource_iron','resource_aluminium','resource_silicon','resource_uranium','resource_nitrogen','resource_hydrogen');

	for(var i = 0; i <= 7; i++)
	{
		$('#layer_resource_'+i).html(resource_ship[i] * shipAmount);
	}

	for(category in components)
	{
		for(component_id in components[category])
		{
			if(componentsIncluded[component_id] > 0)
			{
				amount = componentsIncluded[component_id];
				if(typeof(bunker_components[component_id]) != 'undefined' && bunker_usage == 'YES')
				{
					if(bunker_components[component_id] > 0)
					{
						amount -= bunker_components[component_id];
					}
				}
				if(amount <= 0)
				{
					amount = 0;
				}
				else
				{
					amount = amount * shipAmount;
				}
				for(var i = 0; i <= 7; i++)
				{
					$('#layer_resource_'+i).html((parseInt($('#layer_resource_'+i).html()) + components[category][component_id][array_resource[i]] * amount));
				}

				if(tabCategory == category)
				{
					handle_cloak(type,component_id);
				}
			}
		}
	}

	if(typeof(loadDesign) == 'undefined')
	{
		calc_build_time();
	}

	var resource_sum = 0;
	// resource_ship.length = anzahl resourcen + 1
	for (var count_resource = 0; count_resource < resource_ship.length-1; count_resource++)
	{
		if($('#layer_resource_' + count_resource).length > 0)
		{
			// aktualisiert Rohstofffelder (nimmt aktuellen Wert des DOM-Elements, entfernt die Punkte, Parse zu Int, Multiplikation mit BonusResourceFactor
			var new_res_amount = parseInt($('#layer_resource_' + count_resource).html().replace(/\./g,'')) * BonusResourceFactor;
			$('#layer_resource_' + count_resource).html(number_format(new_res_amount));

			if(parseInt($('#layer_resource_'+count_resource).html()) >= 0)
			{
				resource_sum += new_res_amount;
			}
		}
	}
	// Summe setzen
	$('#layer_resource_8').html(number_format(resource_sum));
}

function resetInputs()
{
	$('.input').val('0');
	$('#f_build_count_show').val('1');
	$('#f_name').val('');
	component_tooltip();
}

function submitForm(mode)
{
	var abort = false;
	if(mode == 'shorten')
	{
		$('#buy_it_now').val(1);
		components_JSON = JSON.stringify(componentsIncluded);
		$('#f_component_id').val(components_JSON);
		oldloader.submit_form(document.ship_build);
	}
	else
	{
		if(mode == 'save')
		{
			$('#f_action').val('save');
			if($('#f_name').val().length == 0)
			{
				errorHandler('name');

				abort = true;
			}
		}
		if(abort == false && (errorHandler() == true || (mode == 'save' && errorHandler() == mode) ) )
		{
			components_JSON = JSON.stringify(componentsIncluded);
			$('#f_component_id').val(components_JSON);
			oldloader.submit_form(document.ship_build);
		}
	}
}

function loadDesignComponents()
{
	for(datakey in designComponent)
	{
		$('#f_input_'+designComponent[datakey]['component_id']).val(designComponent[datakey]['amount']);
		componentsIncluded[designComponent[datakey]['component_id']] = designComponent[datakey]['amount'];
		loadDesignDetails(designComponent[datakey],designComponent[datakey]['details']);
	}
}

function loadDesignDetails(component,details)
{
	var compo_done = new Array();
	var design_component_error = new Array();

	component_tooltip();

	for(datakey in details)
	{
		if ( typeof details[datakey] == "string" )
		{
			var component_id = component['component_id'];

			componentDetails = new Array();
			if(typeof(typeof(components['weapon']) != 'undefined' && components['weapon'][component_id]) != 'undefined' )
			{
				componentDetails = components['weapon'][component_id];
				tabCategory = 'weapon';
			}
			else if(typeof(components['armor']) != 'undefined' && typeof(components['armor'][component_id]) != 'undefined' )
			{
				componentDetails = components['armor'][component_id];
				tabCategory = 'armor';
			}
			else if(typeof(typeof(components['engine']) != 'undefined' &&components['engine'][component_id]) != 'undefined' )
			{
				componentDetails = components['engine'][component_id];
				tabCategory = 'engine';
			}
			else if(typeof(typeof(components['equipment']) != 'undefined' &&components['equipment'][component_id]) != 'undefined' )
			{
				componentDetails = components['equipment'][component_id];
				tabCategory = 'equipment';
			}
			var value = $('#shipyard_'+details[datakey]).html();

			if(value == null)
			{
				var value = 0;
			}
			else
			{
				value = value.replace(/\./g,'');
			}

			var compoDetail = component.amount*parseFloat(details['values'][details[datakey]]);

			if(details[datakey] == 'speed_impulse' || details[datakey] == 'speed_warp')
			{
				compoDetail = compoDetail * parseFloat(dataChassis[details[datakey]]);
			}

			if(componentDetails['cloak'] >0 )
			{
				cloakData[component_id] = component.amount;
				var temp_cloak = calc_cloak(cloakData);

				$('#shipyard_cloak').html(temp_cloak);
			}
			else
			{
				if(details[datakey] == 'fuel_parsec')
				{
					$('#shipyard_'+details[datakey]).html(number_format(parseInt(value)+(compoDetail ),1 ));
				}
				else
				{
					$('#shipyard_'+details[datakey]).html(number_format(parseInt(value)+(compoDetail ) ));
				}
			}

			if(bunker_usage == 'YES' && typeof(bunker_components[component_id]) != 'undefined' )
			{
				if(bunker_components[component_id] < component.amount && components[tabCategory][component_id]['from'] != 'tech')
				{
					design_component_error[design_component_error.length-1] = new Array(component_id, component.amount, bunker_components[component_id]);
					componentsIncluded[component_id] = bunker_components[component_id];
					$('#f_input_'+component_id).val(bunker_components[component_id]);
					check_component_race_bunker(component_id);
				}
			}

			if(compo_done[component_id] != true)
			{
				updateResourceByComponent('add', component_id);
				compo_done[component_id] = true;
			}
		}
	}

	calc_build_time();
	$('#f_name').val(shipName);

	tabCategory = 'engine';
	check_resources();
	update_cells();

	if(design_component_error.length > 0)
	{
		var missing_component_json = JSON.stringify(design_component_error);
		layerwindow_open(null,null,'/scripts/building/shipyard/missing_component.php?missing_component='+missing_component_json);
	}
}

function update_cells()
{
	cells_used = 0;
	for(datakey in componentsIncluded)
	{
		if(datakey != 'time')
		{
			if(typeof(components['weapon']) != 'undefined' && typeof(components['weapon'][datakey]) != 'undefined' )
			{
				category = 'weapon';
			}
			else if(typeof(components['armor']) != 'undefined' && typeof(components['armor'][datakey]) != 'undefined' )
			{
				category = 'armor';
			}
			else if(typeof(components['engine']) != 'undefined' && typeof(components['engine'][datakey]) != 'undefined' )
			{
				category = 'engine';
			}
			else if(typeof(components['equipment']) != 'undefined' && typeof(components['equipment'][datakey]) != 'undefined' )
			{
				category = 'equipment';
			}

			cells_used +=(components[category][datakey]['cells']*componentsIncluded[datakey]);
		}
	}
	$('#cellsinUse').html(cells_used);
}

function errorHandler(showError)
{
	var speedImpulse = parseInt($('#shipyard_speed_impulse').html());
	var speedWarp = parseInt($('#shipyard_speed_warp').html());
	var shipName = $.trim($('#f_name').val());
	var errors = new Array();

	if(speedImpulse <= 0)
	{
		$('#submit_build').addClass('hide');
		$('#error_view').removeClass('hide');
		$('#error_view').html(errorNoEngine);

		errors[1] = true;
	}
	else
	{
		delete(errors[1]);
	}

	if(showError == 'name' || shipName.length <= 0)
	{
		$('#submit_build').addClass('hide');
		$('#error_view').removeClass('hide');
		$('#error_view').html(errorNoName);

		errors[2] = true;
	}
	else
	{
		delete(errors[2]);
	}

	if(max_build <= 0)
	{
		$('#submit_build').addClass('hide');
		$('#error_view').removeClass('hide');
		$('#error_view').html(fullCapacity);

		errors[3] = true;
	}

	if(insufficient == 'true')
	{
		$('#submit_build').addClass('hide');
		$('#error_view').removeClass('hide');
		$('#error_view').html(noRessource);

		errors[4] = true;
	}
	else
	{
		delete(errors[4]);
	}

	if(brt_enable <= 0)
	{
		$('#submit_build').addClass('hide');
		$('#error_view').removeClass('hide');
		$('#error_view').html(not_enough_brt);

		errors[6] = true;
	}

	if(errors.length == 0)
	{
		$('#submit_build').removeClass('hide');
		$('#error_view').addClass('hide');
		$('#error_view').html('');

		delete(errors);
		handle_save_button('activate');
		return true;
	}


	if((typeof(errors[1]) == 'undefined' && typeof(errors[2]) == 'undefined'))
	{
		handle_save_button('activate');
		return 'save';
	}
	handle_save_button('deactivate');
}

function handle_numeric_button(area)
{
	if(typeof(components) == 'undefined' )
	{
		return false;
	}

	var space = parseInt($('#cellsMax').html())-parseInt($('#cellsinUse').html());
	if(typeof(area) != 'undefined')
	{
		for(datakey in components[area])
		{
			if(space == 0 || (typeof(bunker_components[datakey]) != 'undefined' && bunker_components[datakey]['max_reached'] == true))
			{
				$('#nsbp_f_input_'+datakey).css('background-image','url("'+dir_static_images+'/building/shipyard/counter_small_active_plus_d_grey.gif")');
			}
			else
			{
				$('#nsbp_f_input_'+datakey).css('background-image','url("'+dir_static_images+'/building/shipyard/counter_small_active_plus_d.gif")');
			}

			if(components[area][datakey]['cells'] > space || (typeof(bunker_components[datakey]) != 'undefined' && bunker_components[datakey]['max_reached'] == true) )
			{
				$('#nsbp_f_input_'+datakey).css('background-image','url("'+dir_static_images+'/building/shipyard/counter_small_active_plus_d_grey.gif")');
			}
			else
			{
				$('#nsbp_f_input_'+datakey).css('background-image','url("'+dir_static_images+'/building/shipyard/counter_small_active_plus_d.gif")');
			}

			if(componentsIncluded[datakey] <= 0 || !componentsIncluded[datakey])
			{
				$('#nsbm_f_input_'+datakey).css('background-image','url("'+dir_static_images+'/building/shipyard/counter_small_active_minus_d_grey.gif")');
			}
			else
			{
				$('#nsbm_f_input_'+datakey).css('background-image','url("'+dir_static_images+'/building/shipyard/counter_small_active_minus_d.gif")');
			}
		}
	}
}

function check_resources()
{
	insufficient = 'false';
	for(datakey in resource)
	{
		var resource_amount = parseInt(resource[datakey]);
		var resource_needed = $('#layer_resource_'+datakey).html().replace(/\./g,'');

		if(resource_amount < resource_needed)
		{
			$('#layer_resource_'+datakey).addClass('font_red_bold').removeClass('font_white');
			insufficient = 'true';
		}
		else
		{
			$('#layer_resource_'+datakey).removeClass('font_red_bold');
		}
	}
	errorHandler();
}

function handle_cloak(mode,component_id)
{
	if(components[tabCategory][component_id]['cloak'] > 0 && mode == 'add')
	{
		if(cloakData[component_id] > 0)
		{
			cloakData[component_id] += componentsIncluded[component_id];
		}
		else
		{
			cloakData[component_id] = componentsIncluded[component_id];
		}
		var temp_cloak = calc_cloak(cloakData);

		$('#shipyard_cloak').html(temp_cloak);
	}
	else if(components[tabCategory][component_id]['cloak'] > 0 && mode == 'del')
	{
		if(cloakData[component_id] > 0)
		{
			cloakData[component_id] -= componentsIncluded[component_id];
		}
		else
		{
			cloakData[component_id] = componentsIncluded[component_id];
		}
		$('#shipyard_cloak').html( calc_cloak(cloakData) );
	}
}

function check_component_race_bunker(component_id, cellsinUse)
{
	if(typeof(cellsinUse) == 'undefined')
	{
		cellsinUse = parseInt($('#cellsinUse').html());
	}
	if(bunker_usage == 'YES' && typeof(bunker_components[component_id]) != 'undefined')
	{
		var space = parseInt($('#cellsMax').html()) - cellsinUse;
		max_of_component = 0;
		max_of_component += bunker_components[component_id];

		if(components[tabCategory][component_id]['from'] == 'bunker')
		{
			bunker_component_usage[component_id] = parseInt($('#f_input_'+component_id).val());
			set_ship_limit_by_bunker();

			if(max_of_component <= bunker_component_usage[component_id] || parseInt(components[tabCategory][component_id]['cells']) > space )
			{
				bunker_components[component_id]['max_reached'] = true;
			}
			else if(max_of_component > bunker_component_usage[component_id] && parseInt(components[tabCategory][component_id]['cells']) <= space )
			{
				bunker_components[component_id]['max_reached'] = false;
			}

			if(bunker_component_usage[component_id] > max_of_component)
			{
				bunker_components[component_id]['max_reached'] = true;
				return false;
			}
		}
	}
	return true;
}

function increase_ship_amount()
{
	if (count_change) {
		// Überprüfen, ob ein weiteres Schiff gebaut werden darf
		var check = checkFreeResourcesShipIncrease($("#f_build_count").val());
		if(check === false)
		{
			return false;
		}
		if (document.getElementById('f_build_count').value < max_build && document.getElementById('f_build_count').value < race_bunker_ship) {
			document.getElementById('f_build_count').value++;
			document.getElementById('f_build_count_show').value = document.getElementById('f_build_count').value;
			document.getElementById('f_build_count_show').style.color='#006600';
			update_build_costs();
			setTimeout("increase_ship_amount('f_build_count');", 150);
		} else {
			document.getElementById('f_build_count_show').style.color='#ff0000';
		}
	}
	if(mobile()){
		ikolium = Math.ceil(componentsIncluded['time']/3.6);
		ikoHint(ikolium * $('#f_build_count').val());
	}
}

function checkFreeResourcesShipIncrease(shipAmount)
{
	var status;
	for(datakey in resource)
	{
		var resourceAmount = resource[datakey];
		var resourceNeeded =  parseInt($('#layer_resource_'+datakey).text().replace(/\./g,''));

		// Ressourcen für ein weiteres Schiff ausrechnen
		var resourceNeededSingle = resourceNeeded / shipAmount;
		if((resourceNeededSingle + resourceNeeded) > resourceAmount)
		{
			$('#layer_resource_'+datakey).animate({"color":"#ff5400"},500).animate({"color":"#ffffff"},500,function(){$(this).css("color","");});
			status = false;
		}
	}
	if(status === false)
	{
		return false;
	}
	return true;
}

count_change = false;
function decrease_ship_amount(value)
{
	if ($('#f_build_count').val() > 1 && count_change) {
		if(typeof(value) != 'undefined' && value > 0)
		{
			$('#f_build_count').val(value);
		}
		else
		{
			document.getElementById('f_build_count').value--;
		}

		$('#f_build_count_show').val($('#f_build_count').val());
		if ($('#f_build_count').val() > 0) {
			$('#f_build_count_show').css('color', '#006600');
		} else {
			$('#f_build_count_show').css('color', '#999999');
		}
		update_build_costs('del');
		setTimeout("decrease_ship_amount();", 150);
	}
	if(mobile()){
		ikolium = Math.ceil(componentsIncluded['time']/3.6);
		ikoHint(ikolium * $('#f_build_count').val());
	}
}

function set_ship_limit_by_bunker()
{
	var current_ship_amount = $('#f_build_count_show').val(),
		race_bunker_ship = max_build,
		limit_this_component = -1;

	for(var bunker_component_id in bunker_component_usage)
	{
		limit_this_component = Math.floor( parseInt(bunker_components[bunker_component_id]) / parseInt(bunker_component_usage[bunker_component_id]) );

		if(limit_this_component == -1 || race_bunker_ship > limit_this_component )
		{
			race_bunker_ship = limit_this_component;
		}
	}

	if(current_ship_amount > race_bunker_ship)
	{
		if(race_bunker_ship <= 0)
		{
			race_bunker_ship = 1;
		}
		$('#f_build_count_show').val(race_bunker_ship);
		$('#f_build_count').val(race_bunker_ship);
		update_build_costs('del',current_ship_amount);
	}
}

function component_tooltip(component_id)
{
	var tooltip_string = new Array();
	if(typeof(component_id) != 'undefined' && component_id > 0)
	{
		if(typeof(bunker_components[component_id]) != 'undefined')
		{
			tooltip_string[component_id] = bunker_string+': '+bunker_components[component_id]+'<br>';
		}
		else
		{
			tooltip_string[component_id] = bunker_string+': 0<br>';
		}
		if(components[tabCategory][component_id]['from'] == 'tech')
		{
			tooltip_string[component_id] += '<a class="font_green_bold">'+build_possible+'</a>';
		}
		else
		{
			tooltip_string[component_id] += '<a class="font_red_bold">'+build_impossible+'</a>';
		}

		$('#f_input_'+component_id).parents('td').append($('<div>').attr('class','tooltip').addClass('hide').html(tooltip_string[component_id]));
		$('#f_input_'+component_id).parents('td').find('.img_link').mouseenter(function(){
			tooltip.show($(this).parents('td').find('.tooltip').html(),this);
		});
	}
	else
	{
		if(typeof(component_id) != 'undefined')
		{
			for(category in components)
			{
				for(component_id in components[category])
				{
					if(typeof(bunker_components[component_id]) != 'undefined')
					{
						tooltip_string[component_id] = bunker_string+': '+bunker_components[component_id]+'<br>';
					}
					else
					{
						tooltip_string[component_id] = bunker_string+': 0<br>';
					}
					if(components[category][component_id]['from'] == 'tech')
					{
						tooltip_string[component_id] += '<a class="font_green_bold">'+build_possible+'</a>';
					}
					else
					{
						tooltip_string[component_id] += '<a class="font_red_bold">'+build_impossible+'</a>';
					}

					$('#f_input_'+component_id).parents('td').append($('<div>').attr('class','tooltip').addClass('hide').html(tooltip_string[component_id]));
	//				$('<div>').attr('class','tooltip').addClass('hide').html(tooltip_string[component_id]).appendTo($('#f_input_'+component_id).parents('td'));
					$('#f_input_'+component_id).parents('td').find('.img_link').mouseenter(function(){
						tooltip.show($(this).parents('td').find('.tooltip').html(),this);
					});

				}
			}
		}
	}
}

function calc_build_time()
{
	componentsIncluded['time'] = chassis_time;
	for(category in components)
	{
		for(component_id in components[category])
		{
			build_amount = 0;

			if(componentsIncluded[component_id] >= build_amount)
			{
				if(bunker_usage == 'YES' && typeof(bunker_components[component_id]) != 'undefined')
				{
					new_component_amount = 0;
					new_component_amount = componentsIncluded[component_id]-build_amount;

					if(new_component_amount > bunker_components[component_id])
					{
						to_build = (componentsIncluded[component_id]-build_amount)- bunker_components[component_id];
						time_bunker = (components[category][component_id]['time_construction'])*bunker_components[component_id];
						time_build = components[category][component_id]['time_construction']*to_build;
						componentsIncluded['time'] += time_bunker+time_build;
					}
					else if(new_component_amount <= bunker_components[component_id])
					{
						componentsIncluded['time'] += (components[category][component_id]['time_construction']/2)*new_component_amount;
					}
				}
				else
				{
					amount = componentsIncluded[component_id]-build_amount;
					componentsIncluded['time'] += components[category][component_id]['time_construction']*amount;
				}
			}
			else if(componentsIncluded[component_id] > build_amount)
			{
				amount = componentsIncluded[component_id]-build_amount;
				componentsIncluded['time'] += components[category][component_id]['time_construction']*amount;
			}
			else if(componentsIncluded[component_id] < build_amount)
			{
				amount = build_amount-componentsIncluded[component_id];
				componentsIncluded['time'] += components[category][component_id]['time_construction']*amount;
			}
		}
	}
	componentsIncluded['time'] = Math.ceil(componentsIncluded['time']);
	$('#time_construction').html(f_time(componentsIncluded['time']));
	ikolium = Math.ceil(componentsIncluded['time']/3.6);

	if(mobile()){
		ikoHint(ikolium * $('#f_build_count').val());
	}
	else{
		ikoHint(ikolium);
	}
}