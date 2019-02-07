
createDialog"spawnAIMenu";
vehMarkerNum = 1;
placementMarkerArray = [];
placedVehArray = [];
undoVehArray = [];
undoMarkerArray = [];

//Add more vehicle classnames if you want more vehicles in the list.
vehList = ["I_soldier_F","I_Soldier_AA_F","I_Soldier_AT_F","I_Soldier_AR_F","I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_Quadbike_01_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F"];





waitUntil {!isNull (findDisplay 56242)};

mld_fnc_unloadAIMenu = { //function to run on unload to delete all markers
	placeEH = nil;
	{if (!isNil "_x") then {
		deleteMarkerLocal _x;
		_x = nil
		};} forEach placementMarkerArray;
	};

{
	_vehDisplayName = getText (configFile >> "cfgVehicles" >> _x >>"DisplayName");
	((findDisplay 56242) displayCtrl 1500) lbAdd _vehDisplayName;
} forEach vehList;

lbSetCurSel [1500,0];
mld_fnc_placeMarker = { //function to run when user doubleclicks on map ctrl
	if ((count undoMarkerArray) > 0) then {
		undoMarkerArray = [];
	};
	if ((count undoVehArray) > 0) then {
		undoVehArray = [];
	};
	if (Count placementMarkerArray > 14) then {
		hintSilent "You can't place more than 15 vehicles at a time";
		} else {

	_AImarker = createMarkerLocal [(format ["placementMarker%1",vehMarkerNum]),(_this select 0)];
	placementMarkerArray pushBack _AImarker;
	_AImarker setMarkerShapeLocal "ICON";
	_AImarker setMarkerTypeLocal "hd_dot";
	_AImarker setMarkerColorLocal "ColorIndependent";
	_AImarker setMarkerTextLocal (format ["Vehicle %1",vehMarkerNum]);
	_lbSel = lbCurSel 1500;
	_lbSelName = vehList select _lbSel;
	placedVehArray pushBack _lbSelName;
		vehMarkerNum = vehMarkerNum + 1;
	sleep 2;
	hint "";
	};
};

mld_fnc_deleteAIMarkers = {// fucntion to run when deleting all markers
	{
		deleteMarkerLocal _x;
	} forEach placementMarkerArray;
	placementMarkerArray = [];
	placedVehArray = [];
	vehMarkerNum = 1;
};

((findDisplay 56242) displayCtrl 1201) ctrlMapAnimAdd [0, 0.2, (getPos player)];// initialise map ctrl
ctrlMapAnimCommit ((findDisplay 56242) displayCtrl 1201);



placeEH = ((findDisplay 56242) displayCtrl 1201) ctrlAddEventHandler ["MouseButtonDblClick",{ // Double click EH
	_xCord = _this select 2;
	_yCord = _this select 3;
	_pos = ((findDisplay 56242) displayCtrl 1201) ctrlMapScreenToWorld [_xCord,_yCord];
	//hint format ["You have placed a marker at %1",_pos];

	[_pos] spawn mld_fnc_placeMarker;
}];

unloadEH = (findDisplay 56242) displayAddEventHandler ["Unload",{ // EH triggers on menu unload
	[] call mld_fnc_unloadAIMenu;
}];

mld_fnc_undo = { //function to run when user wants to undo placement of marker
_arrayCt1 = count placementMarkerArray;
	if (_arrayCt1 > 0) then {
	_lastMarker = placementMarkerArray deleteAt (_arrayCt1 - 1);
	_lastVeh = placedVehArray deleteAt ((count placedVehArray) - 1);
	undoVehArray pushBack _lastVeh;
	undoMarkerArray pushBack [_lastMarker,(getMarkerPos _lastMarker)];
	deleteMarkerLocal _lastMarker;
	vehMarkerNum = vehMarkerNum -1;
	};
};

mld_fnc_redo = { //function to be run when user wants to redo the placements they have undone.
	_arrayCt = count undoMarkerArray;
	if (_arrayCt > 0) then {
		_markerName = (undoMarkerArray select (_arrayCt - 1)) select 0;
		_markerPos = (undoMarkerArray select (_arrayCt - 1)) select 1;
		_veh = undoVehArray deleteAt ((count undoVehArray) - 1);
		undoMarkerArray deleteAt (_arrayCt -1);
		_AImarker = createMarkerLocal [format ["placementMarker%1",vehMarkerNum],_markerPos];
		placedVehArray pushBack _veh;
 		placementMarkerArray pushBack _AImarker;
		_AImarker setMarkerShapeLocal "ICON";
		_AImarker setMarkerTypeLocal "hd_dot";
		_AImarker setMarkerColorLocal "ColorIndependent";
		_AImarker setMarkerTextLocal (format ["Vehicle %1",vehMarkerNum]);
		vehMarkerNum = vehMarkerNum + 1;
	};
};

mld_fnc_goToMe = {
	((findDisplay 56242) displayCtrl 1201) ctrlMapAnimAdd [0, 0.01,(getPos player)];// Update map ctrl
	ctrlMapAnimCommit ((findDisplay 56242) displayCtrl 1201);
};