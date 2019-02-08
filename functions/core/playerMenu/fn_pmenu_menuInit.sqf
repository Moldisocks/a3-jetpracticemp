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

((findDisplay 23323) displayCtrl 1101) ctrlSetStructuredText parseText "Squads Comming Soon...";

(findDisplay 23323) displayAddEventHandler ["Unload",{
	menus_open = false;
}];

