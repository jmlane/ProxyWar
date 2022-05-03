/*

Spawns local combat elements.

Example: BB11 - First squad, first platoon, bravo company, blufor.

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
*/

_BRPB11 = BRPB getPos [15, (getDir BRPB) + 090];
_BRPB12 = BRPB getPos [21, (getDir BRPB) + 135];
_BRPB13 = BRPB getPos [34, (getDir BRPB) + 154];
_BRPB21 = getPos BRPB;
_BRPB22 = BRPB getPos [15, (getDir BRPB) + 180];
_BRPB23 = BRPB getPos [30, (getDir BRPB) + 180];
_BRPB31A = BRPB getPos [15, (getDir BRPB) + 270];
_BRPB31B = BRPB getPos [21, (getDir BRPB) + 225];
_BRPB32A = BRPB getPos [30, (getDir BRPB) + 270];
_BRPB32B = BRPB getPos [34, (getDir BRPB) + 244];
_BRPB41 = BRPB getPos [34, (getDir BRPB) + 207];
_BRPB42 = BRPB getPos [42, (getDir BRPB) + 225];

BB11V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPB11;
[
	BB11V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BB11V setDir (direction BRPB);
Sleep 0.2;

BB12V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPB12;
[
	BB12V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BB12V setDir (direction BRPB);
Sleep 0.2;

BB13V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPB13;
[
	BB13V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BB13V setDir (direction BRPB);
Sleep 0.2;

BB21V = "I_APC_tracked_03_cannon_F" createVehicle _BRPB21;
[
	BB21V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BB21V setDir (direction BRPB);
Sleep 0.2;

BB22V = "I_APC_tracked_03_cannon_F" createVehicle _BRPB22;
[
	BB22V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BB22V setDir (direction BRPB);
Sleep 0.2;

BB23V = "I_APC_tracked_03_cannon_F" createVehicle _BRPB23;
[
	BB23V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BB23V setDir (direction BRPB);
Sleep 0.2;

BB31VA = "I_MBT_03_cannon_F" createVehicle _BRPB31A;
[
	BB31VA,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BB31VA setDir (direction BRPB);
Sleep 0.2;

BB31VB = "I_MBT_03_cannon_F" createVehicle _BRPB31B;
[
	BB31VB,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BB31VB setDir (direction BRPB);
Sleep 0.2;

BB32VA = "I_MBT_03_cannon_F" createVehicle _BRPB32A;
[
	BB32VA,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BB32VA setDir (direction BRPB);
Sleep 0.2;

BB32VB = "I_MBT_03_cannon_F" createVehicle _BRPB32B;
[
	BB32VB,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BB32VB setDir (direction BRPB);
Sleep 0.2;

BB41V = "I_Truck_02_transport_F" createVehicle _BRPB41;
[
	BB41V,
	["EAF",1]
] call BIS_fnc_initVehicle;
BB41V setDir (direction BRPB);
Sleep 0.2;

BB42V = "I_Truck_02_transport_F" createVehicle _BRPB42;
[
	BB42V,
	["EAF",1]
] call BIS_fnc_initVehicle;
BB42V setDir (direction BRPB);
Sleep 0.2;

BB42MA = "I_G_Mortar_01_F" createVehicle _BRPB42;
Sleep 0.2;

BB42MA attachto [BB42V, [0,-0.5,0]];
Sleep 0.2;

BB42MB = "I_G_Mortar_01_F" createVehicle _BRPB42;
Sleep 0.2;

BB42MB attachto [BB42V, [0,-2.5,0]];
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [BB11V, BB12V, BB13V, BB21V, BB22V, BB23V, BB31VA, BB31VB, BB32VA, BB32VB, BB41V, BB42V];
Sleep 0.2;

BB11 = [_BRPB11, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB11 setGroupIDGlobal ["B 1 1"];
BB11 addVehicle BB11V;
Sleep 0.2;

BB12 = [_BRPB12, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB12 setGroupIDGlobal ["B 1 2"];
BB12 addVehicle BB12V;
Sleep 0.2;

BB13 = [_BRPB13, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB13 setGroupIDGlobal ["B 1 3"];
BB13 addVehicle BB13V;
Sleep 0.2;

BB21 = [_BRPB21, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_medic_F","B_G_Soldier_AR_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB21 setGroupIDGlobal ["B 2 1"];
BB21 addVehicle BB21V;
Sleep 0.2;

BB22 = [_BRPB22, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_medic_F","B_G_Soldier_AR_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Sergeant",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB22 setGroupIDGlobal ["B 2 2"];
BB22 addVehicle BB22V;
Sleep 0.2;

BB23 = [_BRPB23, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_medic_F","B_G_Soldier_AR_F",
		"B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB23 setGroupIDGlobal ["B 2 3"];
BB23 addVehicle BB23V;
Sleep 0.2;

BB31 = [_BRPB31A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_TL_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB31 setGroupIDGlobal ["B 3 1"];
BB31 addVehicle BB31VA;
BB31 addVehicle BB31VB;
Sleep 0.2;

BB32 = [_BRPB32A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_TL_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB32 setGroupIDGlobal ["B 3 2"];
BB32 addVehicle BB32VA;
BB32 addVehicle BB32VB;
Sleep 0.2;

BB41 = [_BRPB41, WEST, [
		"B_G_officer_F","B_G_engineer_F",
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F","B_G_Soldier_LAT_F","B_G_Soldier_LAT_F",
		"B_G_Soldier_LAT2_F","B_G_Soldier_LAT2_F","B_G_Soldier_lite_F","B_G_Soldier_lite_F"
	],[],[
		"Lieutenant","Private",
		"Sergeant","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB41 setGroupIDGlobal ["B 4 1"];
BB41 addVehicle BB41V;
Sleep 0.2;

BB42 = [_BRPB42, WEST, [
		"B_G_officer_F","B_G_engineer_F",
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_LAT_F","B_G_Soldier_LAT2_F",
		"B_G_Soldier_TL_F","B_G_Soldier_LAT_F","B_G_Soldier_LAT2_F",
		"B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BB42 setGroupIDGlobal ["B 4 2"];
BB42 addVehicle BB42V;
BB42 addVehicle BB42MA;
BB42 addVehicle BB42MB;
Sleep 0.2;

Units BB42 select 10 moveInAny BB42MA;
Units BB42 select 11 moveInAny BB42MB;
Sleep 0.2;

{
	{
		_equip = _x spawn ASG_FNC_BLIGear;
		waituntil {scriptDone _equip};
		_x addEventHandler ["Killed", {
				BluTickets = BluTickets -1;
				PublicVariable 'BluTickets';
				If (BluTickets < 1) then {
					'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
				};
			}
		];
	} foreach units _x;
} foreach [BB11, BB12, BB13, BB21, BB22, BB23, BB31, BB32, BB41, BB42];

{
	{
		_x addEventHandler ["Killed", {
			BB11Grave pushback (_this select 0);
			PublicVariable "BB11Grave";
		}];
	} foreach units _x;
} foreach [BB11];

{
	{
		_x addEventHandler ["Killed", {
			BB12Grave pushback (_this select 0);
			PublicVariable "BB12Grave";
		}];
	} foreach units _x;
} foreach [BB12];

{
	{
		_x addEventHandler ["Killed", {
			BB13Grave pushback (_this select 0);
			PublicVariable "BB13Grave";
		}];
	} foreach units _x;
} foreach [BB13];

{
	{
		_x addEventHandler ["Killed", {
			BB21Grave pushback (_this select 0);
			PublicVariable "BB21Grave";
		}];
	} foreach units _x;
} foreach [BB21];

{
	{
		_x addEventHandler ["Killed", {
			BB22Grave pushback (_this select 0);
			PublicVariable "BB22Grave";
		}];
	} foreach units _x;
} foreach [BB22];

{
	{
		_x addEventHandler ["Killed", {
			BB23Grave pushback (_this select 0);
			PublicVariable "BB23Grave";
		}];
	} foreach units _x;
} foreach [BB23];

{
	{
		_x addEventHandler ["Killed", {
			BB31Grave pushback (_this select 0);
			PublicVariable "BB31Grave";
		}];
	} foreach units _x;
} foreach [BB31];

{
	{
		_x addEventHandler ["Killed", {
			BB32Grave pushback (_this select 0);
			PublicVariable "BB32Grave";
		}];
	} foreach units _x;
} foreach [BB32];

{
	{
		_x addEventHandler ["Killed", {
			BB31Grave pushback (_this select 0);
			PublicVariable "BB31Grave";
		}];
	} foreach units _x;
} foreach [BB41];

{
	{
		_x addEventHandler ["Killed", {
			BB32Grave pushback (_this select 0);
			PublicVariable "BB32Grave";
		}];
	} foreach units _x;
} foreach [BB42];

_WPBB11 = BB11 addWaypoint [BB11V, 0];
_WPBB11 setWaypointType "GetIn";

_WPBB12 = BB12 addWaypoint [BB12V, 0];
_WPBB12 setWaypointType "GetIn";

_WPBB13 = BB13 addWaypoint [BB13V, 0];
_WPBB13 setWaypointType "GetIn";

_WPBB21 = BB21 addWaypoint [BB21V, 0];
_WPBB21 setWaypointType "GetIn";

_WPBB22 = BB22 addWaypoint [BB22V, 0];
_WPBB22 setWaypointType "GetIn";

_WPBB23 = BB23 addWaypoint [BB23V, 0];
_WPBB23 setWaypointType "GetIn";

_WPBB31 = BB31 addWaypoint [BB31VA, 0];
_WPBB31 setWaypointType "GetIn";
_WPBB31 setWaypointFormation  "File";

_WPBB32 = BB32 addWaypoint [BB32VA, 0];
_WPBB32 setWaypointType "GetIn";
_WPBB31 setWaypointFormation  "File";

_WPBB41 = BB41 addWaypoint [BB41V, 0];
_WPBB41 setWaypointType "GetIn";

_WPBB42 = BB42 addWaypoint [BB42V, 0];
_WPBB42 setWaypointType "GetIn";