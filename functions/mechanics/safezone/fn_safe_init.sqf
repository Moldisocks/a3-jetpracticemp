/*
	Author: Moldisocks
	Last Modified: 2019.02.08 19.03
	Email: moldisocks78@gmail.com

	Notes:

	Description: This function, provides a safezone area for the player. The safezone area is dependent upon which team the player is on. The areas are markers with area markers and the safezone volume is shapped like a sphere.

	To Do:

*/

 slpCt = false;
 i = 0;
if (isNil "EHid03") then {
player addEventHandler ["Respawn",{slpCt = false; i = 0;}];
};
 _marker = "";
_height = 0;
_onAct = {};
_onDeact = {};
 waitUntil {player == player};
if (side player == east) then {
_marker = "safezone_csat";
_height = 50;

} else {
_marker = "safezone_nato";
_height = 50;
};

_onAct = {
	player customChat [cusRadio,"You have entered the safezone and will be invulnerable in 10 seconds"];
	sleep 1;
	while {i > 0} do {
		i = i -1;
		sleep 1;
		if (!slpCt) exitWith {i = 10;};

		//hintSilent format ["You will be Safe in %1 Seconds",i];
	};
	i = 10;
	if (!slpCt) exitWith {};

		player customChat [cusRadio,"You are now invulnerable"];
		hintSilent "";
		safezoneSymbolLayer = "safezoneSymbol" cutRsc ["safezoneSymbol","PLAIN"];
	(vehicle player) allowDamage false;
	player allowDamage false;
};
_onDeact = {
	if (slpCt) exitWith {};
		player customChat [cusRadio,"You have left the safezone"];
		"safezoneSymbol" cutText ["","PLAIN"];
		player allowDamage true;
		(vehicle player) allowDamage true;
};







if ((isNil "_marker") or (isNil "_height") or (isNil "_onAct")  or (isNil "_onDeact")) then {
"ERROR!!" hintC "triggerLocalSphr requires more arguements";
} else {
	while {true} do {
		sleep 0.5;
		_stuffCsat = nearestObjects [(getMarkerPos "safezone_csat"),["all"],300];
		{
		if (((_x != player) or (_x != (vehicle player))) && (side player == east)) then {
		_x allowDamage false;
		};
		} forEach _stuffCsat;
		_stuffNato = nearestObjects [(getMarkerPos "safezone_nato"),["all"],300];
		{
		if (((_x != player) or (_x != (vehicle player))) && (side player == west)) then {
		_x allowDamage false;
		};
		} forEach _stuffNato;
		_pheight = (getPos player) select 2;
		// Loops constantly, with an  interval set by the below sleep statement, it will check the conditions set by the below if then statments.
		if ((player inArea _marker) && (_pheight <_height)) then { // Sets the distance of the sphere of the triggerActivated
		if (!slpCt) then {
                 slpCt = true;
					// on Activation statment
					[] spawn _onAct;
			};

		} else {
		if (slpCt) then {
			slpCt = false;

				// On De-activation statements
				[] spawn _onDeact;
			};
		};
	};
};