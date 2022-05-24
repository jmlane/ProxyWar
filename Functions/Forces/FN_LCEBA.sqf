/*
Spawns local combat elements.

Example: BA11 - First squad, first platoon, alpha company, blufor.

B/R - Blufor/Redfor (Opfor).
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

//Create blufor rally points for each blufor group.
_BRPA11 = BRPA getPos [15, (getDir BRPA) + 090];
_BRPA12 = BRPA getPos [21, (getDir BRPA) + 135];
_BRPA13 = BRPA getPos [34, (getDir BRPA) + 154];
_BRPA21 = getPos BRPA;
_BRPA22 = BRPA getPos [15, (getDir BRPA) + 180];
_BRPA23 = BRPA getPos [30, (getDir BRPA) + 180];
_BRPA31A = BRPA getPos [15, (getDir BRPA) + 270];
_BRPA31B = BRPA getPos [21, (getDir BRPA) + 225];
_BRPA32A = BRPA getPos [30, (getDir BRPA) + 270];
_BRPA32B = BRPA getPos [34, (getDir BRPA) + 244];
_BRPA41 = BRPA getPos [34, (getDir BRPA) + 207];
_BRPA42 = BRPA getPos [42, (getDir BRPA) + 225];

//Create blufor group vehicles.
//First Platoon
BA11V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPA11;
[
	BA11V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BA11V setDir (direction BRPA);
Sleep 0.2;

BA12V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPA12;
[
	BA12V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BA12V setDir (direction BRPA);
Sleep 0.2;

BA13V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPA13;
[
	BA13V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BA13V setDir (direction BRPA);
Sleep 0.2;

//Second Platoon
BA21V = "I_APC_tracked_03_cannon_F" createVehicle _BRPA21;
[
	BA21V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BA21V setDir (direction BRPA);
Sleep 0.2;

BA22V = "I_APC_tracked_03_cannon_F" createVehicle _BRPA22;
[
	BA22V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BA22V setDir (direction BRPA);
Sleep 0.2;

BA23V = "I_APC_tracked_03_cannon_F" createVehicle _BRPA23;
[
	BA23V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BA23V setDir (direction BRPA);
Sleep 0.2;

//Third Platoon
BA31VA = "I_MBT_03_cannon_F" createVehicle _BRPA31A;
[
	BA31VA,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BA31VA setDir (direction BRPA);
Sleep 0.2;

BA31VB = "I_MBT_03_cannon_F" createVehicle _BRPA31B;
[
	BA31VB,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BA31VB setDir (direction BRPA);
Sleep 0.2;

BA32VA = "I_MBT_03_cannon_F" createVehicle _BRPA32A;
[
	BA32VA,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BA32VA setDir (direction BRPA);
Sleep 0.2;

BA32VB = "I_MBT_03_cannon_F" createVehicle _BRPA32B;
[
	BA32VB,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BA32VB setDir (direction BRPA);
Sleep 0.2;

//Weapons Section
BA41V = "I_Truck_02_transport_F" createVehicle _BRPA41;
[
	BA41V,
	["EAF",1]
] call BIS_fnc_initVehicle;
BA41V setDir (direction BRPA);
Sleep 0.2;

BA42V = "I_Truck_02_transport_F" createVehicle _BRPA42;
[
	BA42V,
	["EAF",1]
] call BIS_fnc_initVehicle;
BA42V setDir (direction BRPA);
Sleep 0.2;

BA42MA = "I_G_Mortar_01_F" createVehicle _BRPA42;
Sleep 0.2;

BA42MA attachto [BA42V, [0,-0.5,0]];
Sleep 0.2;

BA42MB = "I_G_Mortar_01_F" createVehicle _BRPA42;
Sleep 0.2;

BA42MB attachto [BA42V, [0,-2.5,0]];
Sleep 0.2;

//Clear vehicle default inventories.
{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [BA11V, BA12V, BA13V, BA21V, BA22V, BA23V, BA31VA, BA31VB, BA32VA, BA32VB, BA41V, BA42V];
Sleep 0.2;

//Create the groups and units.
//First Platoon
BA11 = [_BRPA11, WEST, [
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
BA11 setGroupIDGlobal ["A 1 1"];
BA11 addVehicle BA11V;
Sleep 0.2;

BA12 = [_BRPA12, WEST, [
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
BA12 setGroupIDGlobal ["A 1 2"];
BA12 addVehicle BA12V;
Sleep 0.2;

BA13 = [_BRPA13, WEST, [
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
BA13 setGroupIDGlobal ["A 1 3"];
BA13 addVehicle BA13V;
Sleep 0.2;

//Second Platoon
BA21 = [_BRPA21, WEST, [
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
BA21 setGroupIDGlobal ["A 2 1"];
BA21 addVehicle BA21V;
Sleep 0.2;

BA22 = [_BRPA22, WEST, [
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
BA22 setGroupIDGlobal ["A 2 2"];
BA22 addVehicle BA22V;
Sleep 0.2;

BA23 = [_BRPA23, WEST, [
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
BA23 setGroupIDGlobal ["A 2 3"];
BA23 addVehicle BA23V;
Sleep 0.2;

//Third Platoon
BA31 = [_BRPA31A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_TL_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
BA31 setGroupIDGlobal ["A 3 1"];
BA31 addVehicle BA31VA;
BA31 addVehicle BA31VB;
Sleep 0.2;

BA32 = [_BRPA32A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_TL_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
BA32 setGroupIDGlobal ["A 3 2"];
BA32 addVehicle BA32VA;
BA32 addVehicle BA32VB;
Sleep 0.2;

//Weapons Section
BA41 = [_BRPA41, WEST, [
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
BA41 setGroupIDGlobal ["A 4 1"];
BA41 addVehicle BA41V;
Sleep 0.2;

BA42 = [_BRPA42, WEST, [
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
BA42 setGroupIDGlobal ["A 4 2"];
BA42 addVehicle BA42V;
BA42 addVehicle BA42MA;
BA42 addVehicle BA42MB;
Sleep 0.2;

//Mount Mortars
Units BA42 select 10 moveInAny BA42MA;
Units BA42 select 11 moveInAny BA42MB;
Sleep 0.2;

//Equip and set event handlers for units.
{
	{
		_equip = _x spawn ASG_FNC_BLIGear;
		waituntil {scriptDone _equip};
		_x addEventHandler ["Killed", {
				BluTickets = BluTickets -1;
				PublicVariable 'BluTickets';
			}
		];
	} foreach units _x;
} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];

//Set unit event handlers to queue appropriate units for group reinforcement.
{
	{
		_x addEventHandler ["Killed", {
			BA11Grave pushback (_this select 0);
			PublicVariable "BA11Grave";
		}];
	} foreach units _x;
} foreach [BA11];

{
	{
		_x addEventHandler ["Killed", {
			BA12Grave pushback (_this select 0);
			PublicVariable "BA12Grave";
		}];
	} foreach units _x;
} foreach [BA12];

{
	{
		_x addEventHandler ["Killed", {
			BA13Grave pushback (_this select 0);
			PublicVariable "BA13Grave";
		}];
	} foreach units _x;
} foreach [BA13];

{
	{
		_x addEventHandler ["Killed", {
			BA21Grave pushback (_this select 0);
			PublicVariable "BA21Grave";
		}];
	} foreach units _x;
} foreach [BA21];

{
	{
		_x addEventHandler ["Killed", {
			BA22Grave pushback (_this select 0);
			PublicVariable "BA22Grave";
		}];
	} foreach units _x;
} foreach [BA22];

{
	{
		_x addEventHandler ["Killed", {
			BA23Grave pushback (_this select 0);
			PublicVariable "BA23Grave";
		}];
	} foreach units _x;
} foreach [BA23];

{
	{
		_x addEventHandler ["Killed", {
			BA31Grave pushback (_this select 0);
			PublicVariable "BA31Grave";
		}];
	} foreach units _x;
} foreach [BA31];

{
	{
		_x addEventHandler ["Killed", {
			BA32Grave pushback (_this select 0);
			PublicVariable "BA32Grave";
		}];
	} foreach units _x;
} foreach [BA32];

{
	{
		_x addEventHandler ["Killed", {
			BA31Grave pushback (_this select 0);
			PublicVariable "BA31Grave";
		}];
	} foreach units _x;
} foreach [BA41];

{
	{
		_x addEventHandler ["Killed", {
			BA32Grave pushback (_this select 0);
			PublicVariable "BA32Grave";
		}];
	} foreach units _x;
} foreach [BA42];

//Groups mount their vehicles.
_WPBA11 = BA11 addWaypoint [BA11V, 0];
_WPBA11 setWaypointType "GetIn";

_WPBA12 = BA12 addWaypoint [BA12V, 0];
_WPBA12 setWaypointType "GetIn";

_WPBA13 = BA13 addWaypoint [BA13V, 0];
_WPBA13 setWaypointType "GetIn";

_WPBA21 = BA21 addWaypoint [BA21V, 0];
_WPBA21 setWaypointType "GetIn";

_WPBA22 = BA22 addWaypoint [BA22V, 0];
_WPBA22 setWaypointType "GetIn";

_WPBA23 = BA23 addWaypoint [BA23V, 0];
_WPBA23 setWaypointType "GetIn";

_WPBA31 = BA31 addWaypoint [BA31VA, 0];
_WPBA31 setWaypointType "GetIn";
_WPBA31 setWaypointFormation  "File";

_WPBA32 = BA32 addWaypoint [BA32VA, 0];
_WPBA32 setWaypointType "GetIn";
_WPBA31 setWaypointFormation  "File";

_WPBA41 = BA41 addWaypoint [BA41V, 0];
_WPBA41 setWaypointType "GetIn";

_WPBA42 = BA42 addWaypoint [BA42V, 0];
_WPBA42 setWaypointType "GetIn";