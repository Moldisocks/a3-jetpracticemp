/*
	Author: Moldisocks
	Last Modified: 2019.02.08 19.45
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
if (!ep_switch) then {
	ep_switch = true;
	if (soundVolume < 0.3) then {
		0.4 fadeSound 1;
		"epMute" cutText ["","PLAIN"];
	} else {
		0.4 fadeSound 0.1;
		[true,"epMute","earplugsSymbol"] call mld_core_fnc_hedit_createDisplay;
	};
	sleep 1;
	ep_switch = false;
};