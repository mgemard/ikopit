function calc_cloak(cloakModules)
{
	var dist = 5,
		cloak = 0,
		cloak_max = 4.95,
		percent_rate = "99%";

	for(datakey in cloakModules)
	{
		if( cloakModules[datakey] != 0 && cloakModules[datakey] != '' && parseFloat(components['equipment'][datakey]['cloak']) > 0 && parseInt(cloakModules[datakey]) > 0 )
		{
			cloak += Math.round(100* dist * dataChassis['cloak_multiplier'] / shipSize * parseFloat(components['equipment'][datakey]['cloak']) )/100 * parseInt(cloakModules[datakey]);
		}
	}
	var pc = Math.floor( Math.min(cloak_max,cloak) );
	var ae = Math.floor( ( 100 * Math.min(cloak_max,cloak) ) % 100 );

	// --- Ausgabe
	return ( pc == 0 && ae == 0 ? 0 : percent_rate + " "+ pc + CAPTION_DISTANCE_PC + " " + ae + CAPTION_DISTANCE_AE );
};