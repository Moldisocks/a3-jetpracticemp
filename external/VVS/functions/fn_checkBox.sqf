/*
	File: fn_checkBox.sqf

	Description:

*/
disableSerialization;
params ["_which"];




if (_which == "cargo") then {
	if(VVS_Checkbox) then {VVS_Checkbox = false;} else {VVS_Checkbox = true;};
if(VVS_Checkbox) then
{
	hint "You have marked that the vehicles Cargo (Weapons,Magazines,Items) will be cleared on spawn.";
	((findDisplay 38100) displayCtrl 38103) ctrlSetText "Yes";
	((findDisplay 38100) displayCtrl 38103) ctrlSetTextColor [0,1,0,1];
}
	else
{
	((findDisplay 38100) displayCtrl 38103) ctrlSetText "No";
	((findDisplay 38100) displayCtrl 38103) ctrlSetTextColor [1,0,0,1];
};
};
If (_which == "spawn") then {

if(VVS_spCheckbox) then {VVS_spCheckbox = false;} else {VVS_spCheckbox = true;};
	if(VVS_spCheckbox) then
{
	hint "You will now spawn into the vehicle you have selected";
	((findDisplay 38100) displayCtrl 4515) ctrlSetText "Yes";
	((findDisplay 38100) displayCtrl 4515) ctrlSetTextColor [0,1,0,1];
}
	else
{
	((findDisplay 38100) displayCtrl 4515) ctrlSetText "No";
	((findDisplay 38100) displayCtrl 4515) ctrlSetTextColor [1,0,0,1];
};
};