_i = -1;
_veh = 0;
_failed = false;
{
	_i = _i + 1;
	_markerPos = getMarkerPos _x;
	_className = placedVehArray select _i;
	_veh = _className createVehicle _markerPos;
	if (cbChecked ((findDisplay 56242) displayCtrl 2800)) then {
		_vehCrew = crew _veh;
		{
			_veh deleteVehicleCrew _x;
		} forEach array;
	};
	if ((_markerPos inArea "No_AI_Vehicle_NATO") or (_markerPos inArea "No_AI_Vehicle_CSAT")) then {
deleteVehicle _veh;
	_failed = true;
	};
} forEach placementMarkerArray;

[] call mld_fnc_deleteAIMarkers;
createVehicleCrew _veh;
if (_failed) then {
	systemChat "ERROR:  Enemy Vehicles cannot be spawned in this area";
};