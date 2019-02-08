/*
	Author: Moldisocks
	Last Modified:  2019.02.08 19.00
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

switch (_this select 0) do
{
	case "Quickstart Guide":
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "
		<t size='0.9' font='PuristaBold'>How to play:</t><t size='0.8'> WarZoneMP is a good way to practice jets, pawnees, tanks or any other skill you need in other gamemodes like KOTH, Invade and Annex and Life.</t><br/><t size='0.8'>Use all of the help sections when you need help using any of this gamemode's features, but the basic aim is to kill your friends, that's it.</t>
		<br/><br/>
		<t size='0.8'>There are custom actions bound to the following default keys, however you can edit these keybindings by clicking the 'Edit keybindings' button in the player menu.</t><br/>
		<t size='0.9' font='PuristaBold'>Default keybindings: </t>
		<br/><t size='0.9'>Earplugs 				DEFAULT: F1</t>
		<br/><t size='0.9'>Jump						DEFAULT: Space</t>
		<br/><t size='0.9'>Open Playermenu 			DEFAULT: Grave(`)</t>";
		((findDisplay 7546) displayCtrl 1100) ctrlSetStructuredText parseText (format ["<t size='1.2' align='center'> %1 </t>",(_this select 0)]);
	};
	case "Edit keybindings help":
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<t size='0.9' font='PuristaBold'>How to use:</t><t size='0.8'> Select the function you want to bind or unbind a key to, then where it says 'Currently bound to', either Shift-Click to unbind, or doubleclick to rebind to a different key. Press ENTER to confirm or press ESC to cancel*.</t><br/><br/><t size='0.9' font='PuristaBold'>Bug Notes:</t> <t size='0.8'>*If you press ESC during re-binding, it may cause an error, don't worry it hasn't broken anything serious, all you need to do is completely exit out of the editing keys menu using ESC and go back in, to then rebind to the desired key.</t>";
		((findDisplay 7546) displayCtrl 1100) ctrlSetStructuredText parseText (format ["<t size='1.2' align='center'> %1 </t>",(_this select 0)]);
	};
	case "Spawn AI Menu":
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<t size='0.9' font='PuristaBold'>How to use:</t><t size='0.8'> This menu allows you to place enemy AI vehicles and units anywhere on the map, except inside the safezones. To place a vehicle, simply double click to place a marker which signifies where the AI will be spawned. You can place upto 15 AI units or vehicles at a time.</t>";
		((findDisplay 7546) displayCtrl 1100) ctrlSetStructuredText parseText (format ["<t size='1.2' align='center'> %1 </t>",(_this select 0)]);
	};
	case "Kit customisation help":
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<br/><t size='0.8'>Testing loadout menu help</t>";
		((findDisplay 7546) displayCtrl 1100) ctrlSetStructuredText parseText (format ["<t size='1.2' align='center'> %1 </t>",(_this select 0)]);
	};
	case "Weapon customisation help":
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<br/><t size='0.8'>Testing attachment menu help</t>";
		((findDisplay 7546) displayCtrl 1100) ctrlSetStructuredText parseText (format ["<t size='1.2' align='center'> %1 </t>",(_this select 0)]);
	};
	default
	{
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<br/><t size='0.8'>Sorry no help has been writen for this feature.</t>";
	};
};