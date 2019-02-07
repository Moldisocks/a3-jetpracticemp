/*
	Author: Moldisocks
	Last Modified:  2019.01.26 12.19
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

[] spawn mld_fnc_sp_menuInit;
sp_switch = false;
sp_respawnDelay = 10; //Respawn delay within menu
gdgt_placing = false;
gdgt_gadgetEH = false;
gdgt_gadgetAmmo = 1;
gdgt_gadgetAmmoFull = 1;

[] call mld_fnc_prog_hudInit;

if (!isNull (findDisplay 4548)) then { //Gets ride of earplugs symbol on respawn
	"epMute" cutText ["","PLAIN"];
};


while {sp_respawnDelay > 0} do {
	if (sp_switch) then {
		((findDisplay 12034) displayCtrl 4234) ctrlSetText format ["Auto-deploy in %1",sp_respawnDelay];
	} else {
		((findDisplay 12034) displayCtrl 4234) ctrlSetText format ["Waiting %1",sp_respawnDelay];
	};
	sp_respawnDelay = sp_respawnDelay - 1;
	uisleep 1;
};

if (sp_switch and (!isNull (findDisplay 12034))) then {
	menus_changing = true;
	call mld_fnc_sp_spawnPlayer;
} else {
((findDisplay 12034) displayCtrl 4234) ctrlSetText "Deploy";
};
