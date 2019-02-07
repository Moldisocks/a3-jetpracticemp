/*
	Author: Moldisocks
	Last Modified:  Sun Sep 30 22:23:18 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

switch (_this select 0) do
{
	case 0:
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<t size='1.1'>How to play:</t><br/><t size='0.9'>Conquest-Small's objective put simply, is to work together as a team to capture the various capture points and hold them for as long as possible. For every 4 seconds that your team holds the majority of the flags, the enemy's tickets will drain and the first team to have 0 tickets left, looses. Tickets can also be deducted from the enemy's team by killing enemy players and vehicles, more tickets will be taken if enemy vehicles are destroyed as opposed to killing players.</t><br/><br/><t size='1.1'>Keybindings: </t><br/><t size='0.9'>There are custom actions bound to the following default keys, however you can edit these keybindings by clicking the 'Edit keybindings' button on the spawn menu or in the player menu.</t><br/><br/><t size='0.9'>Earplugs                 DEFAULT: F1</t><br/><t size='0.9'>Minimap zoom             DEFAULT: F2</t><br/><t size='0.9'>Begin gadget placement   DEFAULT: 3</t><br/><t size='0.9'>Accept gadget placement  DEFAULT: Y</t><br/><t size='0.9'>Cancel gadget placement  DEFAULT: DEL</t><br/><t size='0.9'>Blowup explosives        DEFAULT: L-Windows</t><br/><t size='0.9'>Jump	                    DEFAULT: Space</t><br/><t size='0.9'>Open Playermenu          DEFAULT: Grave(`)</t><br/><t size='0.9'>Accept HUD Placement          DEFAULT: F3</t>";
		((findDisplay 7546) displayCtrl 1100) ctrlSetStructuredText parseText (format ["<t size='1.2' align='center'> %1 </t>",hMenu_helpElements select (_this select 0)]);
	};
	default
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<br/><t size='0.8'>Nothing has been writen for this help item yet. Coming soon...</t>";
	};
};