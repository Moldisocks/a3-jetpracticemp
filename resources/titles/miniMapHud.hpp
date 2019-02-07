/*
	Author: Moldisocks
	Last Modified:  Sat Jun 30 22:09:00 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class miniMapHud {
	idd = 7856;
	movingEnable = false;
	onLoad = "uiNamespace setVariable ['miniMapHud', _this select 0];";
    onUnload = "uiNamespace setVariable ['miniMapHud', displayNull]";
    duration = 99999999;
    class controls {

		class theMiniMap : RscMapControl
		{

			idc = 38555;
			type = 101;
			style = 48;
			moveOnEdges = 0;
			x = 0.0101562 * safezoneW + safezoneX;
			y = 0.797 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.187 * safezoneH;
			onDraw = "_this call mld_fnc_mm_updateMap";
		};
		class flagSymbols: RscStructuredText
		{
			idc = 1100;
			text = "<t color = '#868B93'>      A  </t><t color = '#868B93'>  B  </t><t color = '#868B93'>  C  </t><t color = '#868B93'>  D  </t><t color = '#868B93'>  E  </t><t color = '#868B93'>  F  </t><t color = '#868B93'>  G  </t>"; //--- ToDo: Localize;
			x = 0.0101562 * safezoneW + safezoneX;
			y = 0.775 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.808,0.49,0.047,1};
		};
		class friendlyScore: RscStructuredText
		{
			idc = 1101;
			text = "<t >NATO: 452</t>"; //--- ToDo: Localize;
			x = 0.0101562 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.0567187 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.231,0.443,0.776,1};
		};
		class enemyScore: RscStructuredText
		{
			idc = 1102;
			text = "<t >CSAT: 751</t>"; //--- ToDo: Localize;
			x = 0.066875 * safezoneW + safezoneX;
			y = 0.753 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.667,0.106,0.106,1};
		};
    };
};