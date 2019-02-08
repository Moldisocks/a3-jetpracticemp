/*
	Author: Moldisocks
	Last Modified: 2019.02.08 19.23
	Email: moldisocks78@gmail.com

	Notes:

	Description: This function will spawn vehicles on all makers placed.

	To Do:

*/
_i = -1;
_veh = 0;
_failed = false;
{
	_i = _i + 1;
	_markerPos = getMarkerPos _x;
	_className = eai_placed_vehs select _i;
	_veh = _className createVehicle _markerPos;
	if (cbChecked ((findDisplay 56242) displayCtrl 2800)) then {
		_vehCrew = crew _veh;
		{
			_veh deleteVehicleCrew _x;
		} forEach _vehCrew;
	} else {
		createVehicleCrew _veh;
	};
	if ((_markerPos inArea "No_AI_Vehicle_NATO") or (_markerPos inArea "No_AI_Vehicle_CSAT")) then {
		deleteVehicle _veh;
		_failed = true;
	};
} forEach eai_marker_array;

[] call mld_fnc_deleteAIMarkers;

if (_failed) then {
	["Vehicles cannot be spawned into this area",__FILE__,4,true] call mld_dbug_fnc_log_add;
};