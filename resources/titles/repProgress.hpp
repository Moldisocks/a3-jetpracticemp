class repProgress {
	idd = 45625;
	movingEnable = false;
	duration = 1500000;
	onLoad = "uiNamespace setVariable ['repProgress', _this select 0];";
    onUnload = "uiNamespace setVariable ['repProgress', displayNull]";
	class controls {

class repProgressBar: RscProgress
{
	idc = 4582;
	x = 0.411562 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.195937 * safezoneW;
	h = 0.014 * safezoneH;
};
class repText: RscStructuredText
{
	idc = 1100;
	text = "<t color = '#77af3b' size = '1.4' align = 'center'> Servicing Jet</t>"; //--- ToDo: Localize;
	x = 0.430187 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.055 * safezoneH;
	colorBackground[] = {0,0,0,0};
};

	};
};