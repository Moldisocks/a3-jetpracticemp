class spawnAIMenu {
	idd = 56242;
 	class controls {

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;

			x = 0.05 * safezoneW + safezoneX;
			y = 0.1 * safezoneH + safezoneY;
			w = 0.9 * safezoneW;
			h = 0.84 * safezoneH;
			colorBackground[] = {0.075,0.086,0.075,0.7};
		};
		class IGUIBack_2201: IGUIBack
		{
			idc = 2201;

			x = 0.05 * safezoneW + safezoneX;
			y = 0.1 * safezoneH + safezoneY;
			w = 0.9 * safezoneW;
			h = 0.02 * safezoneH;
			colorBackground[] = {0.039,0.42,0.078,0.8};
		};
		class spawnVehButton: RscButton
		{
			idc = 1601;
			text = "Spawn Vehicle(s)"; //--- ToDo: Localize;
			x = 0.799062 * safezoneW + safezoneX;
			y = 0.874 * safezoneH + safezoneY;
			w = 0.0875 * safezoneW;
			h = 0.04 * safezoneH;
			action = [] spawn mld_fnc_spawnAIVehicles;
		};
		class lbText: RscStructuredText
		{
			idc = 1101;
			text = "<t size ='1.3' align = 'center'> Select Vehicle </t>"; //--- ToDo: Localize;
			x = 0.773281 * safezoneW + safezoneX;
			y = 0.159 * safezoneH + safezoneY;
			w = 0.149531 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class helpButton: RscButton
		{
			idc = 1601;
			text = "Need Help?"; //--- ToDo: Localize;
			x = 0.0514062 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.022 * safezoneH;
			action = ["Spawn AI Menu"] spawn mld_fnc_helpScreenInit;
		};
		class mainTitle: RscStructuredText
		{
			idc = 1100;
			text = "<t size ='1.3' align = 'center'> Enemy Vehicle Spawner </t>"; //--- ToDo: Localize;
			x = 0.200937 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.556875 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class myPosButton: RscButton
		{
			idc = 1601;
			action = [] call mld_fnc_goToMe;

			text = "Go to my position"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.874 * safezoneH + safezoneY;
			w = 0.0875 * safezoneW;
			h = 0.04 * safezoneH;
		};
		class posSelectionMap: RscMapControl
		{
			idc = 1201;
			type = 101;
			style = 48;
			x = 0.075 * safezoneW + safezoneX;
			y = 0.2 * safezoneH + safezoneY;
			w = 0.6625 * safezoneW;
			h = 0.66 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.775 * safezoneW + safezoneX;
			y = 0.2 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.48 * safezoneH;
		};

		class undoButton: RscButton
		{
			idc = 1601;
			text = "Undo"; //--- ToDo: Localize;
			x = 0.1875 * safezoneW + safezoneX;
			y = 0.88 * safezoneH + safezoneY;
			w = 0.0875 * safezoneW;
			h = 0.04 * safezoneH;
			action = [] call mld_fnc_undo;
		};
		class redoButton: RscButton
		{
			idc = 1602;
			text = "Redo"; //--- ToDo: Localize;
			x = 0.075 * safezoneW + safezoneX;
			y = 0.88 * safezoneH + safezoneY;
			w = 0.0875 * safezoneW;
			h = 0.04 * safezoneH;
			action = [] call mld_fnc_redo;
		};
		class RscCheckbox_2800: RscCheckbox
		{
			idc = 2800;
			x = 0.577883 * safezoneW + safezoneX;
			y = 0.88148 * safezoneH + safezoneY;
			w = 0.0113034 * safezoneW;
			h = 0.0210739 * safezoneH;
		};
		class clearCrewText: RscText
		{
			idc = 1002;
			text = "Remove crew?"; //--- ToDo: Localize;
			x = 0.597999 * safezoneW + safezoneX;
			y = 0.874 * safezoneH + safezoneY;
			w = 0.0876831 * safezoneW;
			h = 0.033 * safezoneH;
		};
 	};
};