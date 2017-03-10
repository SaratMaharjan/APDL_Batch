
/**
// anfang Steuerlasfall Druck Berechnung
(function(){
// units cm
	var length = 1040;
	var diameter = 1015;
	var radius = diameter / 2;
	var cylDia = 944;
	var cylRad = cylDia / 2;

	var force = 120000;
	var fMom = 0.65 * force;
	var fEff = 0.25 * force;

	console.log( "Math.PI : " + Math.PI );

	var pMom = fMom / ( Math.PI * cylDia );
	
	var moment = 1 / 2 * pMom * cylRad * cylRad * Math.PI;
    console.log( "Moment : " + moment );
  
//    var earthMoment = 1 / 2 * fMom * cylRad * cylRad * Math.PI;
//    console.log( "Earth Moment : " + earthMoment );
    
	var pres = 3 / 2 * Math.PI * pMom * (cylRad * cylRad) / (length * length) * 1 / diameter;
	var presEffective = 1.5 * pres;

	console.log( "Pressure : " + pres );
	console.log( "1.5x Pressure : " + presEffective );

	var presOriginal = 0.081;
	var presAdd = presOriginal + presEffective;
	var presSub = presOriginal - presEffective;
	
	if ( presSub < 0 ) {
	    presAdd -= presSub;
	    presSub -= presSub;
	}

	console.log( "New Pressure: " + presAdd + " and " + presSub );
}());
// ende Steuerlastfall
**/


// anfang calculate diameter from Area
(function(){
	var area, radii;
	
	area = 7.0686;
	radii = Math.sqrt(4*area/Math.PI);
	console.log(radii);
	
	area = 5.1859;
	radii = Math.sqrt(4*area/Math.PI);
	console.log(radii);
}());
// ende


/*// calculate Resultant
(function(){
	var fx, fy, res;
	
	fx = 872846;
	fy = 1319174;
	res = Math.sqrt(Math.pow(fx, 2) + Math.pow(fy, 2));
	console.log(res);
}());
*/
