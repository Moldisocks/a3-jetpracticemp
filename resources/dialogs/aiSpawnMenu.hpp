/*
	Author: Moldisocks
	Last Modified: 2019.02.08 20.23
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
class spawnAIMenu {
	idd = 56242;
 	class controls {
		class mainBackground: IGUIBack
		{
			idc = 2200;

			x = 0.0512689 * safezoneW + safezoneX;
			y = 0.104 * safezoneH + safezoneY;
			w = 0.887147 * safezoneW;
			h = 0.693 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class spawnVehButton: RscButton
		{
			idc = 1601;
			action = "[] spawn mld_core_fnc_eai_spawn";

			text = "Spawn Vehicle(s)"; //--- ToDo: Localize;
			x = 0.762995 * safezoneW + safezoneX;
			y = 0.801519 * safezoneH + safezoneY;
			w = 0.175421 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class lbText: RscStructuredText
		{
			idc = 1101;

			text = "<t size ='0.9' align = 'center'> Select Vehicle </t>"; //--- ToDo: Localize;
			x = 0.778523 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.149577 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.039,0.42,0.078,1};
		};
		class helpButton: RscButton
		{
			idc = 1601;
			action = "[""Spawn AI Menu""] spawn mld_core_fnc_hmenu_menuInit;";

			text = "Need Help?"; //--- ToDo: Localize;
			x = 0.0515994 * safezoneW + safezoneX;
			y = 0.801667 * safezoneH + safezoneY;
			w = 0.134104 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class myPosButton: RscButton
		{
			idc = 1601;
			action = "[] call mld_fnc_goToMe";

			text = "Go to my position"; //--- ToDo: Localize;
			x = 0.270786 * safezoneW + safezoneX;
			y = 0.80184 * safezoneH + safezoneY;
			w = 0.128863 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class undoButton: RscButton
		{
			idc = 1601;
			action = "[] call mld_fnc_undo";

			text = "Undo"; //--- ToDo: Localize;
			x = 0.399525 * safezoneW + safezoneX;
			y = 0.80228 * safezoneH + safezoneY;
			w = 0.128919 * safezoneW;
			h = 0.0219998 * safezoneH;
		};
		class redoButton: RscButton
		{
			idc = 1602;
			action = "[] call mld_fnc_redo";

			text = "Redo"; //--- ToDo: Localize;
			x = 0.528368 * safezoneW + safezoneX;
			y = 0.80184 * safezoneH + safezoneY;
			w = 0.128918 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class posSelectionMap: RscMapControl
		{
			idc = 1201;
			type = 101;
			style = 48;

			x = 0.0667424 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.685991 * safezoneW;
			h = 0.649 * safezoneH;
			colorBackground[] = {0,0,0,1};
		};
		class VehiclesLb: RscListBox
		{
			idc = 1500;

			x = 0.778523 * safezoneW + safezoneX;
			y = 0.148 * safezoneH + safezoneY;
			w = 0.149577 * safezoneW;
			h = 0.451 * safezoneH;
		};

		class clearCrewCb: RscCheckBox
		{
			idc = 2800;

			x = 0.816794 * safezoneW + safezoneX;
			y = 0.64564 * safezoneH + safezoneY;
			w = 0.00921831 * safezoneW;
			h = 0.0164443 * safezoneH;
		};
		class topBar: RscStructuredText
		{
			idc = 1102;
			text = "<t size='0.8' align='left'> Enemy vehicle and AI spawner v1.0 </t><t size='0.8' align='right'>By Moldisocks</t>"; //--- ToDo: Localize;
			x = 0.0512689 * safezoneW + safezoneX;
			y = 0.082 * safezoneH + safezoneY;
			w = 0.887147 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.039,0.42,0.078,1};
		};
		class optionsBar: RscStructuredText
		{
			idc = 1101;
			text = "<t size='0.9' align='center'> Options </t>"; //--- ToDo: Localize;
			x = 0.778523 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.149577 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.039,0.42,0.078,1};
		};
		class removeCrewText: RscStructuredText
		{
			idc = 1103;
			text = "<t size='0.8' align='center'> Remote vehicle crew?</t>"; //--- ToDo: Localize;
			x = 0.835259 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0670518 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class middleBar: IGUIBack
		{
			idc = 2201;
			x = 0.763049 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.00412626 * safezoneW;
			h = 0.649 * safezoneH;
			colorBackground[] = {0.03,0.282,0.058,1};
		};
		class bottomBar: RscStructuredText
		{
			idc = 1104;
			x = 0.0512689 * safezoneW + safezoneX;
			y = 0.796074 * safezoneH + safezoneY;
			w = 0.887147 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = {0.039,0.42,0.078,1};
		};
 	};
};