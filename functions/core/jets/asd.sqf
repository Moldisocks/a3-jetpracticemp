/*
	Author: Moldisocks
	Last Modified: 2019.02.07 22.34
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
_error_follow_through = false;
if (isNull (findDisplay 895)) exitWith {["Display couldn't be found",__FILE__,1] call mld_dbug_fnc_log_add;};

_marker_air_min = "";
_marker_air_max = "";
_marker_ground_spawn = "";
_spawn_altitude = 1000;
_spawn_rotation = 0;
_spawn_detection_radius = 15; //Radius is metres from ground spawn maker to check for vehicles before spawning.
_jet = objNull;
_spawn_on_ground = cbChecked ((findDisplay 895) displayCtrl 2801);

/*|========================================================CONFIG START==========================================
  |	Setting descriptions:
  |		_marker_air_min = Name of marker, that is to be placed at the bottom left of an imaginary rectangular spawn area.
  |		_marker_air_max = Name of marker, that is to be placed at the top right of an imaginary rectangular spawn area.
  | 		_marker_ground_spawn = Name of marker, that specifies the position that jets will be spawned on when the "spawn on ground" checkbox is selected.
  | 		_spawn_altitude = The altitude jets will be spawned at in the air. Number is in metres from sea level.
  | 		_spawn_direction = The direction jets will be spawned in, when spawning in the air. Number specifies degrees, ranges from 0 to 360, where North=0,East=90,South=180 and West=270.
  |
  |	The below configuration settings should be configured on a per team basis, such that each team will spawn at different markers and in different directions and altitudes.
  |============================================================================================================*/
switch (playerSide) do
{
	case east: //Opfor
	{
		if (_spawn_on_ground) then {
			_marker_ground_spawn = "csat_ground_spawn";
		} else {
			_marker_air_min = "csat_air_min";
			_marker_air_max = "csat_air_max";
			//_spawn_altitude = 1000;
			_spawn_rotation = 180;
		};
	};

	case west://Nato
	{
		if (_spawn_on_ground) then {
			_marker_ground_spawn = "nato_ground_spawn";
		} else {
			_marker_air_min = "nato_air_min";
			_marker_air_max = "nato_air_max";
			//_spawn_altitude = 1000;
			//_spawn_rotation = 0;
		};
	};

	case resistance: //Independent
	{
		if (_spawn_on_ground) then {
			_marker_ground_spawn = "nato_ground_spawn";
		} else {
			_marker_air_min = "nato_air_min";
			_marker_air_max = "nato_air_max";
			//_spawn_altitude = 1000;
			_spawn_rotation = 90;
		};
	};

	case civilian: //Civilian
	{
		if (_spawn_on_ground) then {
			_marker_ground_spawn = "civ_ground_spawn";
		} else {
			_marker_air_min = "civ_air_min";
			_marker_air_max = "civ_air_max";
			//_spawn_altitude = 1000;
			_spawn_rotation = 270;
		};
	};
	default
	{
		if (true) exitWith {["playerSide failed to return a standard side",__FILE__,1] call mld_dbug_fnc_log_add; _error_follow_through=true;};
	};
};

if (_error_follow_through) exitWith {};

_can_spawn_in_air = {
	local _ground_only_jets = []; //Specify which jets (by classname string) are only allowed to be spawned on the ground. Leave empty to allow all.
	local _result = false;
	if (_ground_only_jets find (_this select 0) != -1) then {
		_result = true;
	}
	_result;
};
/*========================================================CONFIG END============================================*/

_jet_classname = jets_classnames select (lbCurSel 1500);
closeDialog 895;
if (_spawn_on_ground) then {
	if (getMarkerColor _marker_ground_spawn == "") exitWith {[format ["The %1 ground maker hasn't been placed or named correctly within eden", playerSide],__FILE__,3] call mld_dbug_fnc_log_add;_error_follow_through=true;};

	local _pos = getMarkerPos _marker_ground_spawn;
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
				["<br /><br />There could be vehicles blocking the spawn pad, would you like to spawn anyway?",true] call mld_fnc_misc_msgbox;
				waitUntil {misc_buttonPressed};
				if (!misc_buttonPressed) exitWith {["Vehicles could be blocking spawnpad, user choose not to spawn",__FILE__,1] call mld_dbug_fnc_log_add; _error_follow_through=true;};
			};
		};
	};
	if (_error_follow_through) exitWith {};

	_jet = _jet_classname createVehicle [_pos select 0,_pos select 1,0];
	_jet setDir (markerDir _marker_ground_spawn);

} else {
	if ((getMarkerColor _marker_air_min == "") or (getMarkerColor _marker_air_max == "")) exitWith {[format ["Couldn't find either the min or max air spawn markers for %1",playerSide],__FILE__,3] call mld_dbug_fnc_log_add; _error_follow_through = true;};

	_minXcrd = (getMarkerPos _marker_air_min) select 0;
	_maxXcrd = (getMarkerPos _marker_air_max) select 0;
	_minYcrd = _markerPosMin select 1;
	_maxYcrd = _markerPosMax select 1;
	_midXcrd = (_minXcrd +_maxXcrd)/2;
	_midYcrd =(_minYcrd +_maxYcrd)/2;
	_Xcrd = random [_minXcrd,_midXcrd ,_maxXcrd];
	_Ycrd = random [_minYcrd,_midYcrd ,_maxYcrd];
	_randomDir = random [_spawn_rotation - 20,_spawn_rotation,_spawn_rotation + 20];

	if (!(_jet_classname call _can_spawn_in_air)) exitWith {["Cannot spawn this jet in the air, it is ground bound",__FILE__,3,true] call mld_dbug_fnc_log_add; _error_follow_through = true;};
	_jet = createVehicle [_jet_classname,[_Xcrd,_Ycrd,_spawn_altitude],[],0,"FLY"];
	_jet setDir _randomDir;
};
if (_error_follow_through) exitWith {};

player moveInDriver _jet;
_randomDir = getDir _jet;
_jet setVelocity [sin _randomDir * 222.222 ,cos _randomDir * 222.222,0]; //Experimental. Used to supplement the speed of the jet when spawning, so that it doesn't fall out of the sky.

[_jet] call mld_core_fnc_jets_arm;