/*
	Author: Moldisocks
	Last Modified: 2019.02.08 18.35
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
params["_marker","_classname"];


_error_follow_through = false;
_spawn_detection_radius = 15;


private _pos = getMarkerPos _marker;
_nearbyObjects = nearestObjects [_pos,["Plane","Car","Tank"],_spawn_detection_radius];
if (count _nearbyObjects > 0) then {
	_vehCrew = [];
	{
		if (count (crew _x) > 0) then {
			_vehCrew pushBack _x;
			[format ["%1 x Vehicle(s) already on the spawn pad", count _vehCrew],__FILE__,3,true] call mld_dbug_fnc_log_add;
		};
	} forEach _nearbyObjects;

	if (count _vehCrew <= 0) then {
		{
			deleteVehicle _x;
		} forEach _nearbyObjects;
	}  else {
		{
			if (_vehCrew find _x >= 0) then {
				[format ["There is already a %1 on the spawnpad",(getText (configFile >> "CfgVehicles" >> typeOf(_x) >> "DisplayName"))],__FILE__,2,true] call mld_dbug_fnc_log_add;
			} else {
				deleteVehicle _x;
			};
		} forEach _nearbyObjects;
		_nearbyObjects = nearestObjects [_pos,["Plane","Car","Tank"],_spawn_detection_radius];
		if (count _nearbyObjects > 0) then {
			["<br /><br />There could be vehicles blocking the spawn pad, would you like to spawn anyway?",true] call mld_core_fnc_misc_msgbox;
			waitUntil {misc_buttonPressed};
			if (!misc_msgboxresult) exitWith {["Vehicles could be blocking spawnpad, user choose not to spawn",__FILE__,1] call mld_dbug_fnc_log_add; _error_follow_through=true;};
		};
	};
};
if (_error_follow_through) exitWith {};

_veh = _classname createVehicle _pos;
player moveInDriver _veh;