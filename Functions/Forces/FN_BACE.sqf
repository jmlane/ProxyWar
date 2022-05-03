/*
Spawns local combat elements.

Example: BA11 - First squad, first platoon, Alpha company, blufor.

B/R - Blufor/Redfor/Opfor.
A/B/C/D - Company designation (A, B, C, line companies, D Headquarters Company).
1, 2, 3, 4 - Platoon designation (1, 2, 3, line platoons, 4, weapons/fire support platoon).
1, 2, 3 - Section or squad designation.

AA/TAA - Assembly Area/Tactical Assembly Area
RP - Rally Point/Release Point
ORP - Objective Rally Point
Vic - Vehicle (Victor)

Typical Load Order - Driver, Commander, Gunner, Passengers.
Driver must be group leader (at least before Arma 2.0, test required).

Spawns air combat elements.
*/

_BACE11RP = getPos BACE11RP;

BACE11V = "B_Heli_Transport_01_F" createVehicle _BACE11RP;
BACE11V setDir (direction BACE11RP);
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [BACE11V];
Sleep 0.2;

BACE11 = [_BACE11RP, WEST, [
		"B_Helipilot_F","B_Helipilot_F"
	],[],[
		"Captain","Lieutenant"
],[],[],[],0] call BIS_fnc_spawnGroup;
BACE11 setGroupIDGlobal ["ACE11"];
BACE11 addVehicle BACE11V;
Sleep 0.2;

{
	{
		_equip = _x spawn ASG_FNC_BLIGear;
		waituntil {scriptDone _equip};
	} foreach units _x;
} foreach [BACE11];

_WPBACE11 = BACE11 addWaypoint [BACE11V, 0];
_WPBACE11 setWaypointType "GetIn";