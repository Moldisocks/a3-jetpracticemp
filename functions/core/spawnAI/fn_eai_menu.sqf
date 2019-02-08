/*
	Author: Moldisocks
	Last Modified: 2019.02.08 19.20
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do: (1) - Fix all legacy code. Put all inline functions into functions as files.

*/

createDialog"spawnAIMenu";
eai_marker_num = 1;
eai_marker_array = [];
eai_placed_vehs = [];
eai_undo_vehs = [];
eai_undo_markers = [];

//Add more vehicle classnames if you want more vehicles in the list.
eai_vehicles = ["I_soldier_F","I_Soldier_AA_F","I_Soldier_AT_F","I_Soldier_AR_F","I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_Quadbike_01_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F"];





waitUntil {!isNull (findDisplay 56242)};

//(1) to fix
//====================================DECLAR INLINE FUNCTIONS=============================//

if (isNil "mld_fnc_unloadAIMenu") {
	mld_fnc_unloadAIMenu = { //function to run on unload to delete all markers
		placeEH = nil;
		{if (!isNil "_x") then {
			deleteMarkerLocal _x;
			_x = nil
			};} forEach eai_marker_array;
	};
};

if (isNil "mld_fnc_undo") {
	mld_fnc_undo = { //function to run when user wants to undo placement of marker
		_arrayCt1 = count eai_marker_array;
		if (_arrayCt1 > 0) then {
		_lastMarker = eai_marker_array deleteAt (_arrayCt1 - 1);
		_lastVeh = eai_placed_vehs deleteAt ((count eai_placed_vehs) - 1);
		eai_undo_vehs pushBack _lastVeh;
		eai_undo_markers pushBack [_lastMarker,(getMarkerPos _lastMarker)];
		deleteMarkerLocal _lastMarker;
		eai_marker_num = eai_marker_num -1;
		};
	};
};

if (isNil "mld_fnc_redo") {
	mld_fnc_redo = { //function to be run when user wants to redo the placements they have undone.
		_arrayCt = count eai_undo_markers;
		if (_arrayCt > 0) then {
			_markerName = (eai_undo_markers select (_arrayCt - 1)) select 0;
			_markerPos = (eai_undo_markers select (_arrayCt - 1)) select 1;
			_veh = eai_undo_vehs deleteAt ((count eai_undo_vehs) - 1);
			eai_undo_markers deleteAt (_arrayCt -1);
			_AImarker = createMarkerLocal [format ["placementMarker%1",eai_marker_num],_markerPos];
			eai_placed_vehs pushBack _veh;
	 		eai_marker_array pushBack _AImarker;
			_AImarker setMarkerShapeLocal "ICON";
			_AImarker setMarkerTypeLocal "hd_dot";
			_AImarker setMarkerColorLocal "ColorIndependent";
			_AImarker setMarkerTextLocal (format ["Vehicle %1",eai_marker_num]);
			eai_marker_num = eai_marker_num + 1;
		};
	};
};

if (isNil "mld_fnc_goToMe") {
	mld_fnc_goToMe = {
		((findDisplay 56242) displayCtrl 1201) ctrlMapAnimAdd [0, 0.01,(getPos player)];// Update map ctrl
		ctrlMapAnimCommit ((findDisplay 56242) displayCtrl 1201);
	};
};

if (isNil "mld_fnc_placeMarker") {
	mld_fnc_placeMarker = { //function to run when user doubleclicks on map ctrl
		if ((count eai_undo_markers) > 0) then {
			eai_undo_markers = [];
		};
		if ((count eai_undo_vehs) > 0) then {
			eai_undo_vehs = [];
		};
		if (Count eai_marker_array > 14) then {
			hintSilent "You can't place more than 15 vehicles at a time";
			} else {

		_AImarker = createMarkerLocal [(format ["placementMarker%1",eai_marker_num]),(_this select 0)];
		eai_marker_array pushBack _AImarker;
		_AImarker setMarkerShapeLocal "ICON";
		_AImarker setMarkerTypeLocal "hd_dot";
		_AImarker setMarkerColorLocal "ColorIndependent";
		_AImarker setMarkerTextLocal (format ["Vehicle %1",eai_marker_num]);
		_lbSel = lbCurSel 1500;
		_lbSelName = eai_vehicles select _lbSel;
		eai_placed_vehs pushBack _lbSelName;
			eai_marker_num = eai_marker_num + 1;
		sleep 2;
		hint "";
		};
	};
};

if (isNil "mld_fnc_deleteAIMarkers") {
	mld_fnc_deleteAIMarkers = {// fucntion to run when deleting all markers
		{
			deleteMarkerLocal _x;
		} forEach eai_marker_array;
		eai_marker_array = [];
		eai_placed_vehs = [];
		eai_marker_num = 1;
	};
];
//====================================DECLAR INLINE FUNCTIONS=============================//





{
	_vehDisplayName = getText (configFile >> "cfgVehicles" >> _x >>"DisplayName");
	((findDisplay 56242) displayCtrl 1500) lbAdd _vehDisplayName;
} forEach eai_vehicles;

lbSetCurSel [1500,0];

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
