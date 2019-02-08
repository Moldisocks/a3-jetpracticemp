/*
	Author: Moldisocks
	Last Modified: 2019.02.07 22.34
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


createDialog "JetSpawnerMenu";

waitUntil {!isNull (findDisplay 895);};


{((findDisplay 895) displayCtrl 1500) lbAdd (getText (configFile >> "CfgVehicles" >> _x >> "DisplayName"));} forEach jets_classnames;
