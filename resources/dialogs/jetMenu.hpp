/*
	Author: Moldisocks
	Last Modified: 2019.02.08 20.22
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
class JetSpawnerMenu {
	idd = 895;
	movingEnable = false;
	class controls {

		class mainBackground: IGUIBack
		{
			idc = 2200;

			x = 0.386528 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.226944 * safezoneW;
			h = 0.33 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class jetListbox: RscListBox
		{
			idc = 1500;

			x = 0.396843 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.206313 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class spawnButton: RscButton
		{
			idc = 1600;
			action = [] spawn mld_core_fnc_jets_spawn;

			text = "Spawn "; //--- ToDo: Localize;
			x = 0.458737 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0876831 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class checkboxGround: RscCheckBox
		{
			idc = 2801;

			x = 0.402001 * safezoneW + safezoneX;
			y = 0.525704 * safezoneH + safezoneY;
			w = 0.00875188 * safezoneW;
			h = 0.0145925 * safezoneH;
		};
		class defaultLoadoutCb: RscCheckBox
		{
			idc = 2802;

			x = 0.530643 * safezoneW + safezoneX;
			y = 0.524593 * safezoneH + safezoneY;
			w = 0.00875188 * safezoneW;
			h = 0.0145925 * safezoneH;
		};
		class topBar: RscStructuredText
		{
			idc = 1100;
			text = "<t size='0.8' align='left'> Jet spawner v1.1 </t><t size='0.8' align='right'>By Moldisocks</t>"; //--- ToDo: Localize;
			x = 0.386528 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.226944 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class listboxTitle: RscStructuredText
		{
			idc = 1101;
			text = "<t size='0.98' align='center'> Select a jet to spawn in</t>"; //--- ToDo: Localize;
			x = 0.396843 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.206313 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class groundSpText: RscStructuredText
		{
			idc = 1102;
			text = "<t size='0.8' align='center'> Spawn on ground instead. </t>"; //--- ToDo: Localize;
			x = 0.412317 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0773674 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class optionsBar: RscStructuredText
		{
			idc = 1103;
			text = "<t size='0.8' align='center'> Options </t>"; //--- ToDo: Localize;
			x = 0.386528 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.226944 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class bottomBar: IGUIBack
		{
			idc = 2201;
			x = 0.386528 * safezoneW + safezoneX;
			y = 0.566 * safezoneH + safezoneY;
			w = 0.226944 * safezoneW;
			h = 0.011 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class loadoutBtn: RscButton
		{
			idc = 1601;
			text = "Loadout"; //--- ToDo: Localize;
			x = 0.54642 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0670518 * safezoneW;
			h = 0.033 * safezoneH;
			action = hint "Loadouts are not availabled yet. You can configure loadouts in the config file: fn_jets_init.sqf";
		};
		class helpBtn: RscButton
		{
			idc = 1602;
			text = "Need help?"; //--- ToDo: Localize;
			x = 0.386528 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0722096 * safezoneW;
			h = 0.033 * safezoneH;
			action = ["JetMenu"] spawn mld_core_fnc_hmenu_menuInit;
		};
		class noloadoutText: RscStructuredText
		{
			idc = 1104;
			text = "<t size='0.8' align='left'> Default loadout</t>"; //--- ToDo: Localize;
			x = 0.541263 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0515783 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
	};
};
