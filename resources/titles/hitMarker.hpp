/*
	Author: Moldisocks
	Last Modified:  Sat Jun 30 22:07:02 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
class hitMarker {
	idd = 14233;
	movingEnabled = false;
	duration = 0.1;
	onLoad = "uiNamespace setVariable ['hitMarker', _this select 0];";
    onUnload = "uiNamespace setVariable ['hitMarker', displayNull]";
	class controls {
		class mainPic: RscPicture
		{
			idc = 1200;
			text = "resources\pictures\Hitmarker.paa";
			x = 0.492917 * safezoneW + safezoneX;
			y = 0.490149 * safezoneH + safezoneY;
			w = 0.0133855 * safezoneW;
			h = 0.0238519 * safezoneH;
		};
	};
};