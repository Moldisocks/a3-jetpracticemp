/*
	Author: Moldisocks
	Last Modified:  Sat Jun 30 22:08:34 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class earplugsSymbol {
	idd = 4548;
	movingEnable = false;
	onLoad = "uiNamespace setVariable ['earplugsSymbol', _this select 0];";
    onUnload = "uiNamespace setVariable ['earplugsSymbol', displayNull]";
    duration = 99999999;
    class controls {

		class epSymbol: RscPicture
		{
			idc = 2201;
			text = "resources\pictures\mute.paa";
			x = 0.881562 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.077 * safezoneH;
		};
    };
};