/*
	Author: Moldisocks
	Last Modified: 2019.01.26 10.44
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
if (!ep_switch) then {
	ep_switch = true;
If (soundVolume < 0.3) then {
0.4 fadeSound 1;
"epMute" cutText ["","PLAIN"];
}
else {
0.4 fadeSound 0.1;

[] call ep_showSymbol;
};
sleep 1;
ep_switch = false;
};