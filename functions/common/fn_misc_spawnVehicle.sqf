
if (side player == east) then {
_position = getMarkerPos "csatHatch";
_dir = markerDir "csatHatch";

_spCheck = nearestObjects[_position,["landVehicle","Air","Ship"],5] select 0;
if(!isNil "_spCheck") then {
_vehCrew = crew _spCheck;
if (isNil "_vehCrew") then {
	deleteVehicle _spCheck;
}  else {
 hintSilent "Tell that faggot, to get off the spawn pad";
};
};

_veh = "C_Hatchback_01_sport_F" createVehicle _position;
_veh setDir _dir;
player moveInDriver _veh;
};

If (side player == west) then {
_position = getMarkerPos "natoHatch";
_dir = markerDir "natoHatch";

_spCheck = nearestObjects[_position,["car"],5] select 0;


if(!isNil "_spCheck") then {
_vehCrew = crew _spCheck;
hint str _vehCrew;
if (isNil "_vehCrew") then {
	deleteVehicle _spCheck;
}  else {
 hintSilent "Tell that faggot to get off the spawn pad";
};
};
_veh = "C_Hatchback_01_sport_F" createVehicle _position;
_veh setDir _dir;
player moveInDriver _veh;
};