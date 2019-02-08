/*
	Author: Moldisocks
	Last Modified:  2019.02.08 19.01
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

createDialog "welcomeScreen";

waitUntil {!isNull (findDisplay 4645)};

((findDisplay 4645) displayCtrl 1102) ctrlSetStructuredText parseText "<t size='0.9' font='PuristaBold'>What is JetPracticeMP?</t><br/><t size='0.8'></t></t>";//Text one
((findDisplay 4645) displayCtrl 1103) ctrlSetStructuredText parseText "<t size='0.8'> </t>";//Text two