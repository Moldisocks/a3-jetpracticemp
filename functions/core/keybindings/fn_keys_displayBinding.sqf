/*
	Author: Moldisocks
	Last Modified:  2019.02.08 18.53
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params['_ctrl','_dikCode','_BtnShift','_BtnCtrl','_BtnAlt','_changing','_changed'];

if (isNil '_changing') then {
	_changing = false;
};
if (isNil '_changed') then {
	_changed = false;
};
if (isNil '_dikCode') then {
	_dikCode = (keys_bindings select (lbCurSel 1500));
};
_index = -1;
if (_changing) then {
	{
		_index = _index + 1;
		if (_x select 0 == _dikCode) exitWith {};
	} forEach keys_DIKcodeArray;
} else {
	{
		_index = _index + 1;
		if (_x select 0 == (keys_bindings select (lbCurSel 1500))) exitWith {};
	} forEach keys_DIKcodeArray;
};
_currentBind = (keys_DIKcodeArray select _index) select 1;
if ((_currentBind != 'Unknown Key') && _changed) then {
	keys_bindings set[(lbCurSel 1500),_dikCode];
	_index = -1;
	if (_changing) then {
		{
			_index = _index + 1;
			if (_x select 0 == _dikCode) exitWith {};
		} forEach keys_DIKcodeArray;
	} else {
		{
			_index = _index + 1;
			if (_x select 0 == (keys_bindings select (lbCurSel 1500))) exitWith {};
		} forEach keys_DIKcodeArray;
	};
};
_currentBind = (keys_DIKcodeArray select _index) select 1;
if (_changing) then {
((findDisplay 9885) displayCtrl 1101) ctrlSetStructuredText parseText (format ['<t>Press ENTER to confirm: %1</t>',_currentBind]);
} else {
((findDisplay 9885) displayCtrl 1101) ctrlSetStructuredText parseText (format ['<t>Currently Bound to: %1</t>',_currentBind]);
};