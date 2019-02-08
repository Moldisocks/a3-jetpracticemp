/*
	Author: Moldisocks
	Last Modified:  2019.02.08 19.02
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


 if (!mec_jumping) then {
 mec_jumping = true;
if (isNil "jump_zVel") then {
	jump_zVel = 4;
};
_animName =  animationState player;
_animNameCheck = _animName select [4,4];
if (_animNameCheck == "Perc") then {
	_pSpdKH = speed player;
	if (!isNil "_pSpdKH") then {
		_pDir = getDir player;
		_pSpdMs = (_pSpdKH*1000)/3600;

		player setVelocity [sin _pDir * _pSpdMs,cos _pDir * _pSpdMs,jump_zVel];
		player animate ["AovrPercMrunSrasWrflDf",1];
	};
};
	sleep 1.4;
	mec_jumping = false;
};
