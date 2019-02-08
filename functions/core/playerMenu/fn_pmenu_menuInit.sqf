/*
	Author: Moldisocks
	Last Modified:  2019.02.08 19.01
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

createDialog "playerMenu";
menus_open = true;

[] spawn mld_core_fnc_pmenu_viewDistance;

(findDisplay 23323) displayAddEventHandler ["Unload",{
	menus_open = false;
}];

