/*
	Author: Moldisocks
	Last Modified:  Sun Jun 17 16:25:45 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

createDialog "welcomeScreen";

waitUntil {!isNull (findDisplay 4645)};
[] Call mld_fnc_sp_listPoints;
[true] call mld_fnc_sp_updateCamera;


((findDisplay 4645) displayCtrl 1102) ctrlSetStructuredText parseText "<t size='0.9' font='PuristaBold'>What is AF3?</t><br/><t size='0.8'>ARMA-Field 3 is a gamemode that aims to bring over all of the great gameplay and features from Battlefield 3 in a familar Arma 3 setting. It offers a more fast-paced and easy to get a hang of type gameplay that provides a great way for gamers from other games to get into Arma 3. </t><br/><br/><t size='0.8'>You are playing the Conquest-Small gamemode, a fast-paced sector control gamemode where two teams fight to take control over the various capture points using infantry and light vehicles.</t><br/><br/><t size='0.8'>Currently this is the only gamemode available to play, but other gamemodes like a Rush adaption and Conquest-Large are also in development right now, with more gamemodes like Pirates, Deathmatch and Air Superiority in concept phase. As I am the only person scripting these gamemodes at the moment, updates will be relatively infrequent, but i will try my best to fix all of the critical bugs that are found.</t>";//Text one
((findDisplay 4645) displayCtrl 1103) ctrlSetStructuredText parseText "<t size='0.8'> If you've played AF3 before and know how to play already, just press the 'Play' Button, but if this is your first time playing, you should have a quick look through the help guides in the helpmenu by clicking the 'Guide' button.</t> <br/><br/><t size='0.8'> The helpmenu has details about the various controls, actions, features and menus within AF3, it would be useful for you to just have a quick look through these guides to gain a basic understanding of the gamemode.</t><br/><br/><t sixe '1.8' align='center'> Have Fun!</t>";//Text two