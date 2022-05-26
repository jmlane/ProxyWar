//Local Combat Elements
//Blufor Charlie

//Create blufor rally points for charlie squads.
_BRPC11 = BRPC getPos [15, (getDir BRPC) + 090];
_BRPC12 = BRPC getPos [21, (getDir BRPC) + 135];
_BRPC13 = BRPC getPos [34, (getDir BRPC) + 154];
_BRPC21 = getPos BRPC;
_BRPC22 = BRPC getPos [15, (getDir BRPC) + 180];
_BRPC23 = BRPC getPos [30, (getDir BRPC) + 180];
_BRPC31A = BRPC getPos [15, (getDir BRPC) + 270];
_BRPC31B = BRPC getPos [21, (getDir BRPC) + 225];
_BRPC32A = BRPC getPos [30, (getDir BRPC) + 270];
_BRPC32B = BRPC getPos [34, (getDir BRPC) + 244];
_BRPC41 = BRPC getPos [34, (getDir BRPC) + 207];
_BRPC42 = BRPC getPos [42, (getDir BRPC) + 225];

//Create blufor charlie company vehicles.
//First Platoon
BC11V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPC11;
[
	BC11V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BC11V setDir (direction BRPC);
Sleep 0.2;

BC12V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPC12;
[
	BC12V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BC12V setDir (direction BRPC);
Sleep 0.2;

BC13V = "I_APC_Wheeled_03_cannon_F" createVehicle _BRPC13;
[
	BC13V,
	["Guerilla_03",1], 
	["showCamonetHull",1,"showBags",0,"showBags2",0,"showTools",0,"showSLATHull",0]
] call BIS_fnc_initVehicle;
BC13V setDir (direction BRPC);
Sleep 0.2;

//Second Platoon
BC21V = "I_APC_tracked_03_cannon_F" createVehicle _BRPC21;
[
	BC21V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BC21V setDir (direction BRPC);
Sleep 0.2;

BC22V = "I_APC_tracked_03_cannon_F" createVehicle _BRPC22;
[
	BC22V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BC22V setDir (direction BRPC);
Sleep 0.2;

BC23V = "I_APC_tracked_03_cannon_F" createVehicle _BRPC23;
[
	BC23V,
	["EAF_01",1], 
	["showBags",0,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",0,"showSLATHull",0,"showSLATTurret",0]
] call BIS_fnc_initVehicle;
BC23V setDir (direction BRPC);
Sleep 0.2;

//Third Platoon
BC31VA = "I_MBT_03_cannon_F" createVehicle _BRPC31A;
[
	BC31VA,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BC31VA setDir (direction BRPC);
Sleep 0.2;

BC31VB = "I_MBT_03_cannon_F" createVehicle _BRPC31B;
[
	BC31VB,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BC31VB setDir (direction BRPC);
Sleep 0.2;

BC32VA = "I_MBT_03_cannon_F" createVehicle _BRPC32A;
[
	BC32VA,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BC32VA setDir (direction BRPC);
Sleep 0.2;

BC32VB = "I_MBT_03_cannon_F" createVehicle _BRPC32B;
[
	BC32VB,
	["Indep_02",1], 
	["HideTurret",1,"HideHull",1,"showCamonetHull",1,"showCamonetTurret",1]
] call BIS_fnc_initVehicle;
BC32VB setDir (direction BRPC);
Sleep 0.2;

//Weapons Section
BC41V = "I_Truck_02_transport_F" createVehicle _BRPC41;
[
	BC41V,
	["EAF",1]
] call BIS_fnc_initVehicle;
BC41V setDir (direction BRPC);
Sleep 0.2;

BC42V = "I_Truck_02_transport_F" createVehicle _BRPC42;
[
	BC42V,
	["EAF",1]
] call BIS_fnc_initVehicle;
BC42V setDir (direction BRPC);
Sleep 0.2;

BC42MA = "I_G_Mortar_01_F" createVehicle _BRPC42;
Sleep 0.2;

BC42MA attachto [BC42V, [0,-0.5,0]];
Sleep 0.2;

BC42MB = "I_G_Mortar_01_F" createVehicle _BRPC42;
Sleep 0.2;

BC42MB attachto [BC42V, [0,-2.5,0]];
Sleep 0.2;

//Clear vehicle default inventories.
{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [BC11V, BC12V, BC13V, BC21V, BC22V, BC23V, BC31VA, BC31VB, BC32VA, BC32VB, BC41V, BC42V];
Sleep 0.2;

//Create the groups and units.
//First Platoon
BC11 = [_BRPC11, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F",
		"B_G_medic_F","B_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC11 setGroupIDGlobal ["C 1 1"];
BC11 addVehicle BC11V;
Units BC11 select 0 moveInDriver BC11V;
Units BC11 select 1 moveInCommander BC11V;
Units BC11 select 2 moveInGunner BC11V;
Sleep 0.2;

BC12 = [_BRPC12, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_LAT2_F","B_G_Soldier_LAT2_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F",
		"B_G_medic_F","B_G_medic_F"
	],[],[
		"Private","Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC12 setGroupIDGlobal ["C 1 2"];
BC12 addVehicle BC12V;
Units BC12 select 0 moveInDriver BC12V;
Units BC12 select 1 moveInCommander BC12V;
Units BC12 select 2 moveInGunner BC12V;
Sleep 0.2;

BC13 = [_BRPC13, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F",
		"B_G_medic_F","B_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC13 setGroupIDGlobal ["C 1 3"];
BC13 addVehicle BC13V;
Units BC13 select 0 moveInDriver BC13V;
Units BC13 select 1 moveInCommander BC13V;
Units BC13 select 2 moveInGunner BC13V;
Sleep 0.2;

//Second Platoon
BC21 = [_BRPC21, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F",
		"B_G_medic_F","B_G_Soldier_GL_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC21 setGroupIDGlobal ["C 2 1"];
BC21 addVehicle BC21V;
Units BC21 select 0 moveInDriver BC21V;
Units BC21 select 1 moveInCommander BC21V;
Units BC21 select 2 moveInGunner BC21V;
Sleep 0.2;

BC22 = [_BRPC22, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F",
		"B_G_medic_F","B_G_Soldier_LAT2_F"
	],[],[
		"Private","Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC22 setGroupIDGlobal ["C 2 2"];
BC22 addVehicle BC22V;
Units BC22 select 0 moveInDriver BC22V;
Units BC22 select 1 moveInCommander BC22V;
Units BC22 select 2 moveInGunner BC22V;
Sleep 0.2;

BC23 = [_BRPC23, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F",
		"B_G_Soldier_GL_F","B_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC23 setGroupIDGlobal ["C 2 3"];
BC23 addVehicle BC23V;
Units BC23 select 0 moveInDriver BC23V;
Units BC23 select 1 moveInCommander BC23V;
Units BC23 select 2 moveInGunner BC23V;
Sleep 0.2;

//Third Platoon
BC31 = [_BRPC31A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_TL_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC31 setGroupIDGlobal ["C 3 1"];
BC31 addVehicle BC31VA;
BC31 addVehicle BC31VB;
Sleep 0.2;

BC32 = [_BRPC32A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_TL_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC32 setGroupIDGlobal ["C 3 2"];
BC32 addVehicle BC32VA;
BC32 addVehicle BC32VB;
Sleep 0.2;

//Weapons Section
BC41 = [_BRPC41, WEST, [
		"B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_LAT_F","B_G_Soldier_LAT_F",
		"B_G_Soldier_LAT2_F","B_G_Soldier_LAT2_F",
		"B_G_Soldier_lite_F","B_G_Soldier_lite_F",
		"B_G_medic_F","B_G_engineer_F"
	],[],[
		"Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC41 setGroupIDGlobal ["C 4 1"];
BC41 addVehicle BC41V;
Units BC41 select 0 moveInDriver BC41V;
Sleep 0.2;

BC42 = [_BRPC42, WEST, [
		"B_G_officer_F","B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F",
		"B_G_Soldier_LAT2_F","B_G_Soldier_LAT2_F",
		"B_G_Soldier_lite_F","B_G_Soldier_lite_F",
		"B_G_engineer_F","B_G_medic_F",
		"B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BC42 setGroupIDGlobal ["C 4 2"];
BC42 addVehicle BC42V;
BC42 addVehicle BC42MA;
BC42 addVehicle BC42MB;
Units BC42 select 0 moveInDriver BC42V;
//Crew Mortars
Units BC42 select 10 moveInAny BC42MA;
Units BC42 select 11 moveInAny BC42MB;
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
} foreach [BC11, BC12, BC13, BC21, BC22, BC23, BC31, BC32, BC41, BC42];

//Set unit event handlers to queue appropriate units for group reinforcement.
{
	{
		_x addEventHandler ["Killed", {
			BC11Grave pushback (_this select 0);
			PublicVariable "BC11Grave";
		}];
	} foreach units _x;
} foreach [BC11];

{
	{
		_x addEventHandler ["Killed", {
			BC12Grave pushback (_this select 0);
			PublicVariable "BC12Grave";
		}];
	} foreach units _x;
} foreach [BC12];

{
	{
		_x addEventHandler ["Killed", {
			BC13Grave pushback (_this select 0);
			PublicVariable "BC13Grave";
		}];
	} foreach units _x;
} foreach [BC13];

{
	{
		_x addEventHandler ["Killed", {
			BC21Grave pushback (_this select 0);
			PublicVariable "BC21Grave";
		}];
	} foreach units _x;
} foreach [BC21];

{
	{
		_x addEventHandler ["Killed", {
			BC22Grave pushback (_this select 0);
			PublicVariable "BC22Grave";
		}];
	} foreach units _x;
} foreach [BC22];

{
	{
		_x addEventHandler ["Killed", {
			BC23Grave pushback (_this select 0);
			PublicVariable "BC23Grave";
		}];
	} foreach units _x;
} foreach [BC23];

{
	{
		_x addEventHandler ["Killed", {
			BC31Grave pushback (_this select 0);
			PublicVariable "BC31Grave";
		}];
	} foreach units _x;
} foreach [BC31];

{
	{
		_x addEventHandler ["Killed", {
			BC32Grave pushback (_this select 0);
			PublicVariable "BC32Grave";
		}];
	} foreach units _x;
} foreach [BC32];

{
	{
		_x addEventHandler ["Killed", {
			BC31Grave pushback (_this select 0);
			PublicVariable "BC31Grave";
		}];
	} foreach units _x;
} foreach [BC41];

{
	{
		_x addEventHandler ["Killed", {
			BC32Grave pushback (_this select 0);
			PublicVariable "BC32Grave";
		}];
	} foreach units _x;
} foreach [BC42];

//Groups mount their vehicles.
_WPBC11 = BC11 addWaypoint [BC11V, 0];
_WPBC11 setWaypointType "GetIn";

_WPBC12 = BC12 addWaypoint [BC12V, 0];
_WPBC12 setWaypointType "GetIn";

_WPBC13 = BC13 addWaypoint [BC13V, 0];
_WPBC13 setWaypointType "GetIn";

_WPBC21 = BC21 addWaypoint [BC21V, 0];
_WPBC21 setWaypointType "GetIn";

_WPBC22 = BC22 addWaypoint [BC22V, 0];
_WPBC22 setWaypointType "GetIn";

_WPBC23 = BC23 addWaypoint [BC23V, 0];
_WPBC23 setWaypointType "GetIn";

_WPBC31 = BC31 addWaypoint [BC31VA, 0];
_WPBC31 setWaypointType "GetIn";
_WPBC31 setWaypointFormation  "File";

_WPBC32 = BC32 addWaypoint [BC32VA, 0];
_WPBC32 setWaypointType "GetIn";
_WPBC31 setWaypointFormation  "File";

_WPBC41 = BC41 addWaypoint [BC41V, 0];
_WPBC41 setWaypointType "GetIn";

_WPBC42 = BC42 addWaypoint [BC42V, 0];
_WPBC42 setWaypointType "GetIn";

PublicVariable "BC11";
PublicVariable "BC12";
PublicVariable "BC13";
PublicVariable "BC21";
PublicVariable "BC22";
PublicVariable "BC23";
PublicVariable "BC31";
PublicVariable "BC32";
PublicVariable "BC41";
PublicVariable "BC42";