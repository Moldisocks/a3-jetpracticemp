/*
	Author: Moldisocks
	Last Modified:  Sat Sep 08 21:57:45 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params["_msg","_question"];

misc_buttonPressed = false;
misc_msgboxresult = false;
misc_proper_close = false;
if (isNil "_question") then {
	_question = false;
};

if (_question) then {
	createDialog "messagebox";
	waitUntil {!isNull (findDisplay 12534)};

	((findDisplay 12534) displayCtrl 1600) ctrlShow true;
	((findDisplay 12534) displayCtrl 1600) ctrlEnable true;
	((findDisplay 12534) displayCtrl 1601) ctrlShow true;
	((findDisplay 12534) displayCtrl 1600) ctrlEnable true;

	ctrlSetFocus ((findDisplay 12534) displayCtrl 1600);
	ctrlSetFocus ((findDisplay 12534) displayCtrl 1601);
	((findDisplay 12534) displayCtrl 1100) ctrlSetStructuredText parseText format ["<t>%1</t>", _msg];
	((findDisplay 12534) displayCtrl 1100) ctrlEnable false;
	((findDisplay 12534) displayCtrl 2200) ctrlEnable false;
	((findDisplay 12534) displayCtrl 1600) ctrlAddEventHandler ["MouseButtonClick",{
		misc_buttonPressed = true;
		misc_proper_close = true;
		misc_msgboxresult = true;
		closeDialog 12534;
	}];
	((findDisplay 12534) displayCtrl 1601) ctrlAddEventHandler ["MouseButtonClick",{
		misc_buttonPressed = true;
		misc_proper_close = true;
		misc_msgboxresult = false;
		closeDialog 12534;
	}];
} else {
	createDialog "messagebox";
	waitUntil {!isNull (findDisplay 12534)};
	((findDisplay 12534) displayCtrl 1100) ctrlSetStructuredText parseText format ["<t>%1</t>", _msg];
	((findDisplay 12534) displayCtrl 1600) ctrlShow false;
	((findDisplay 12534) displayCtrl 1600) ctrlEnable false;
	((findDisplay 12534) displayCtrl 1601) ctrlShow false;
	((findDisplay 12534) displayCtrl 1600) ctrlEnable false;
	((findDisplay 12534) displayCtrl 1100) ctrlEnable false;
	((findDisplay 12534) displayCtrl 2200) ctrlEnable false;
};

(findDisplay 12534) displayAddEventHandler ["Unload",{
	if (!misc_proper_close) then {
		misc_buttonPressed = true;
		misc_msgboxresult = false;
	};
}];