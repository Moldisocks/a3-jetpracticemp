/*
	Author: Moldisocks
	Last Modified:  2019.03.01 20.44
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params [["_toggle","neither"]];


if (!pmenu_vDistanceButton) then {
	pmenu_vDistanceButton = true;
	if (isNil "pmenu_vDistance") then {
		pmenu_vDistance = profileNamespace getVariable "jp_pmenu_vDistance";
		if (isNil "pmenu_vDistance") then {
			pmenu_vDistance = 2500;
			profileNamespace setVariable ["jp_pmenu_vDistance",pmenu_vDistance];
		};
	};
	if ((_toggle == "left") and (pmenu_vDistance >= 1000))then {
		pmenu_vDistance = pmenu_vDistance -	500;
	};

	if ((_toggle == "right") and (pmenu_vDistance < 10000)) then {
		pmenu_vDistance = pmenu_vDistance +	500;
	};
	setViewDistance pmenu_vDistance;
	profileNamespace setVariable ["jp_pmenu_vDistance",pmenu_vDistance];
	((findDisplay 23323) displayCtrl 1101) ctrlSetStructuredText parseText format ["<t size='0.9' align='center'> %1 </t>",pmenu_vDistance];
	sleep 0.2;
	pmenu_vDistanceButton = false;
};