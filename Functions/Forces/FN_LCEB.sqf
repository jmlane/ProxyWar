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
*/

//BA11V, BA12V, BA13V, BA21V, BA22V, BA23V, BA31VA, BA31VB, BA32VA, BA32VB, BA41V, BA42V
BA_Array[4][4] = {
	{BA11V, BA12V, BA13V, NULL},
	{BA21V, BA22V, BA23V, NULL},
	{BA31VA, BA31VB, BA32VA, BA32VB},
	{BA41V, BA42V, NULL, NULL}
}

//Create "rally (spawn) points."
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

for [{_i=0}, {_i < count BA_Array[i]}, {_i++}]{
	
}

//Create APCs (Wheeled Troop Carriers)
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
//Create IFVs (Tracked Troop Carriers)
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
//Create Tanks
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
//Create Trucks
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
//Create Mortars (and attach them to mortar carrier truck)
BA42MA = "I_G_Mortar_01_F" createVehicle _BRPA42;
Sleep 0.2;

BA42MA attachto [BA42V, [0,-0.5,0]];
Sleep 0.2;

BA42MB = "I_G_Mortar_01_F" createVehicle _BRPA42;
Sleep 0.2;

BA42MB attachto [BA42V, [0,-2.5,0]];
Sleep 0.2;
//Clear all vehicle cargo
{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [BA11V, BA12V, BA13V, BA21V, BA22V, BA23V, BA31VA, BA31VB, BA32VA, BA32VB, BA41V, BA42V];

Sleep 0.2;
//Spawn APC occupants
BA11 = [_BRPA11, INDEPENDENT, [
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

BA12 = [_BRPA12, INDEPENDENT, [
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

BA13 = [_BRPA13, INDEPENDENT, [
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
//Spawn IFV occupants
BA21 = [_BRPA21, INDEPENDENT, [
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

BA22 = [_BRPA22, INDEPENDENT, [
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

BA23 = [_BRPA23, INDEPENDENT, [
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
//Spawn Tank Crews
BA31 = [_BRPA31A, INDEPENDENT, [
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

BA32 = [_BRPA32A, INDEPENDENT, [
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
//Spawn Weapons Platoon (Machine Guns, Missiles, and Mortars)
BA41 = [_BRPA41, INDEPENDENT, [
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

BA42 = [_BRPA42, INDEPENDENT, [
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
//Occupy Mortars
Units BA42 select 10 moveInAny BA42MA;
Units BA42 select 11 moveInAny BA42MB;
Sleep 0.2;
//Equipment Function
{
	{
		_equip = _x spawn ASG_FNC_BLIGear;
		waituntil {scriptDone _equip};
	} foreach units _x;
} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];

//Get in Vehicles
_WPA11 = BA11 addWaypoint [BA11V, 0];
_WPA11 setWaypointType "GetIn";

_WPA12 = BA12 addWaypoint [BA12V, 0];
_WPA12 setWaypointType "GetIn";

_WPA13 = BA13 addWaypoint [BA13V, 0];
_WPA13 setWaypointType "GetIn";

_WPA21 = BA21 addWaypoint [BA21V, 0];
_WPA21 setWaypointType "GetIn";

_WPA22 = BA22 addWaypoint [BA22V, 0];
_WPA22 setWaypointType "GetIn";

_WPA23 = BA23 addWaypoint [BA23V, 0];
_WPA23 setWaypointType "GetIn";

_WPA31 = BA31 addWaypoint [BA31VA, 0];
_WPA31 setWaypointType "GetIn";
_WPA31 setWaypointFormation  "File";

_WPA32 = BA32 addWaypoint [BA32VA, 0];
_WPA32 setWaypointType "GetIn";
_WPA31 setWaypointFormation  "File";

_WPA41 = BA41 addWaypoint [BA41V, 0];
_WPA41 setWaypointType "GetIn";

_WPA42 = BA42 addWaypoint [BA42V, 0];
_WPA42 setWaypointType "GetIn";