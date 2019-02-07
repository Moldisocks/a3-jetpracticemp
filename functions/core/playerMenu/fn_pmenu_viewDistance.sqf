/*
	Author: Moldisocks
	Last Modified:  Sun Sep 02 13:14:13 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params ["_toggle"];
if (!pmenu_vDistanceButton) then {
	pmenu_vDistanceButton = true;
	if ((_toggle == "left") and (pmenu_vDistance >= 1000))then {
		pmenu_vDistance = pmenu_vDistance -	500;
	};

	if ((_toggle == "right") and (pmenu_vDistance <= 10000)) then {
		pmenu_vDistance = pmenu_vDistance +	500;
	};
setViewDistance pmenu_vDistance;
((findDisplay 23323) displayCtrl 1001) ctrlSetText (str pmenu_vDistance);
sleep 0.2;
pmenu_vDistanceButton = false;
};