

while {true} do {

	//for jets
	_pAlt = (getPos player) select 2;
	_pSpd = speed (vehicle player);
	if ((vehicle player != player) && (vehicle player isKindOf "Plane")) then {

		if (_pSpd < 0.4) then {
			if (_pAlt <4) then {
				if (isNil "id01") then {
					id01 = player addAction ["<img size= '1' color ='#f9f22a' image='resources\pictures\repairPic.paa'/><t color='#f9f22a'>   Service Jet</t>",{[] spawn mld_fnc_rep;}];
				};
		};
		} else {
			if (!isNil "id01") then {
				player removeAction id01;
				id01 = nil;
			};
		};
	} else {
		if (!isNil "id01") then {
				player removeAction id01;
				id01 = nil;
			};
	};
	// for nato ground
	if ((side player == west) and (vehicle player != player)) then {
		_pPos = getPos player;
		if (_pPos inArea "natorep") then {
				if (isNil "id04") then {
					id04 = player addAction ["<img size= '1' color ='#f9f22a' image='resources\pictures\repairPic.paa'/><t color='#f9f22a'>   Service Vehicle</t>",{[] spawn mld_fnc_rep;}];
				};
			} else {
				if (!isNil "id04") then {
				player removeAction id04;
				id04 = nil;
			};
			};
	};
	//for csat ground
	if ((side player == east)  and (vehicle player != player)) then {
		_pPos = getPos player;
		if (_pPos inArea "csatrep") then {
				if (isNil "id04") then {
					id04 = player addAction ["<img size= '1' color ='#f9f22a' image='resources\pictures\repairPic.paa'/><t color='#f9f22a'>   Service Vehicle</t>",{[] spawn mld_fnc_rep;}];
				};
			} else {
				if (!isNil "id04") then {
				player removeAction id04;
				id04 = nil;
			};
			};
	};
	if (vehicle player != player) then {
		if (isNil "id05") then {
			id05 = player addAction ["<t size='1' color ='#077200'> AI Spawn Menu </t>",{[] spawn mld_fnc_AImenuInit;}];
		};
	} else {
		if(!isNil "id05") then {
			player removeAction id05;
			id05 = nil;
		};
	};
	sleep 0.5;
};