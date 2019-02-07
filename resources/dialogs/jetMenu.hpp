
class JetSpawnerMenu {
	idd = 895;
	movingEnable = false;
	class controls {
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by MoldiSocks, v1.063, #Xovaco)
	////////////////////////////////////////////////////////

	class mainBackground: IGUIBack
	{
		idc = 2200;
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.236 * safezoneH + safezoneY;
		w = 0.226875 * safezoneW;
		h = 0.517 * safezoneH;
		colorBackground[] = {0.075,0.086,0.075,0.8};
	};
	class topbarBackground: IGUIBack
	{
		idc = 2201;
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.236 * safezoneH + safezoneY;
		w = 0.226875 * safezoneW;
		h = 0.022 * safezoneH;
		colorBackground[] = {0.039,0.42,0.078,0.8};
	};
	class jetListbox: RscListbox
	{
		idc = 1500;
		x = 0.427812 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.149531 * safezoneW;
		h = 0.264 * safezoneH;
		//colorBackground[] = {0,0.337,0,0.4};
	};
	class titleText: RscText
	{
		idc = 1000;
		text = "Select a Jet and Click Spawn"; //--- ToDo: Localize;
		x = 0.432969 * safezoneW + safezoneX;
		y = 0.269 * safezoneH + safezoneY;
		w = 0.144375 * safezoneW;
		h = 0.033 * safezoneH;
		sizeEx = 1.05 * GUI_GRID_H;
	};
	class spawnButton: RscButton
	{
		idc = 1600;
		text = "Spawn "; //--- ToDo: Localize;
		x = 0.45875 * safezoneW + safezoneX;
		y = 0.665 * safezoneH + safezoneY;
		w = 0.0928125 * safezoneW;
		h = 0.055 * safezoneH;
		 action = [] spawn mld_fnc_jetSpawnInit;
	};
	class checkboxGround: RscCheckbox
	{
		idc = 2801;
		x = 0.448438 * safezoneW + safezoneX;
		y = 0.621 * safezoneH + safezoneY;
		w = 0.0103125 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class checkboxText: RscText
	{
		idc = 1002;
		text = "Spawn on Ground Instead"; //--- ToDo: Localize;
		x = 0.469062 * safezoneW + safezoneX;
		y = 0.621 * safezoneH + safezoneY;
		w = 0.0928125 * safezoneW;
		h = 0.022 * safezoneH;
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////

	};
};
