/*
	Author: Moldisocks
	Last Modified: 2019.02.08 21.24
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

_returnString = "";
switch (_this select 0) do
{
	case 0:
	{
		_returnString = "[disabled]";
	};
	case 1:
	{
		_returnString = "[DEBUG]";
	};
	case 3:
	{
		_returnString = "WARNING!";
	};
	case 4:
	{
		_returnString = "*#ERROR#*";
	};
	case 5:
	{
		_returnString = "!#CRITICAL_ERROR#!";
	};
	default
	{
		_returnString = "[unknown]";
	};
};

_returnString;