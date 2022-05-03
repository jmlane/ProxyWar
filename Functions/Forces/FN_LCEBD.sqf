/*
Spawns local combat elements.

Example: BD11 - First squad, first platoon, delta company, blufor.

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

_BRPD11 = BRPD getPos [34, (getDir BRPD) + 064];
_BRPD12 = BRPD getPos [30, (getDir BRPD) + 090];
_BRPD13 = BRPD getPos [34, (getDir BRPD) + 116];
_BRPD21 = BRPD getPos [21, (getDir BRPD) + 045];
_BRPD22 = BRPD getPos [15, (getDir BRPD) + 090];
_BRPD23 = BRPD getPos [21, (getDir BRPD) + 135];
_BRPD31A = BRPD getPos [15, (getDir BRPD) + 000];
_BRPD31B = getPos BRPD;
_BRPD31C = BRPD getPos [15, (getDir BRPD) + 180];
_BRPD32A = BRPD getPos [21, (getDir BRPD) + 315];
_BRPD32B = BRPD getPos [15, (getDir BRPD) + 270];
_BRPD32C = BRPD getPos [21, (getDir BRPD) + 225];
_BRPD41A = BRPD getPos [34, (getDir BRPD) + 296];
_BRPD41B = BRPD getPos [30, (getDir BRPD) + 270];
_BRPD41C = BRPD getPos [34, (getDir BRPD) + 244];
_BRPD42A = BRPD getPos [47, (getDir BRPD) + 288];
_BRPD42B = BRPD getPos [45, (getDir BRPD) + 270];
_BRPD42C = BRPD getPos [47, (getDir BRPD) + 252];

BD11V = "I_E_Truck_02_F" createVehicle _BRPD11;
BD11V setDir (direction BRPD);
Sleep 0.2;

BD12V = "I_E_Truck_02_F" createVehicle _BRPD12;
BD12V setDir (direction BRPD);
Sleep 0.2;

BD13V = "I_E_Truck_02_F" createVehicle _BRPD13;
BD13V setDir (direction BRPD);
Sleep 0.2;

BD21V = "I_E_Truck_02_F" createVehicle _BRPD21;
BD21V setDir (direction BRPD);
Sleep 0.2;

BD22V = "I_E_Truck_02_F" createVehicle _BRPD22;
BD22V setDir (direction BRPD);
Sleep 0.2;

BD23V = "I_E_Truck_02_F" createVehicle _BRPD23;
BD23V setDir (direction BRPD);
Sleep 0.2;

BD31VA = "B_T_APC_Tracked_01_AA_F" createVehicle _BRPD31A;
BD31VA setDir (direction BRPD);
Sleep 0.2;

BD31VB = "B_T_APC_Tracked_01_AA_F" createVehicle _BRPD31B;
BD31VB setDir (direction BRPD);
Sleep 0.2;

BD31VC = "I_E_Truck_02_F" createVehicle _BRPD31C;
BD31VC setDir (direction BRPD);
Sleep 0.2;

BD32VA = "B_T_APC_Tracked_01_AA_F" createVehicle _BRPD32A;
BD32VA setDir (direction BRPD);
Sleep 0.2;

BD32VB = "B_T_APC_Tracked_01_AA_F" createVehicle _BRPD32B;
BD32VB setDir (direction BRPD);
Sleep 0.2;

BD32VC = "I_E_Truck_02_F" createVehicle _BRPD32C;
BD32VC setDir (direction BRPD);
Sleep 0.2;

BD41VA = "B_T_MBT_01_arty_F" createVehicle _BRPD41A;
BD41VA setDir (direction BRPD);
Sleep 0.2;

BD41VB = "B_T_MBT_01_arty_F" createVehicle _BRPD41B;
BD41VB setDir (direction BRPD);
Sleep 0.2;

BD41VC = "I_E_Truck_02_F" createVehicle _BRPD41C;
BD41VC setDir (direction BRPD);
Sleep 0.2;

BD42VA = "B_T_MBT_01_arty_F" createVehicle _BRPD42A;
BD42VA setDir (direction BRPD);
Sleep 0.2;

BD42VB = "B_T_MBT_01_arty_F" createVehicle _BRPD42B;
BD42VB setDir (direction BRPD);
Sleep 0.2;

BD42VC = "I_E_Truck_02_F" createVehicle _BRPD42C;
BD42VC setDir (direction BRPD);
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [BD11V, BD12V, BD13V, BD21V, BD22V, BD23V, BD31VA, BD31VB, BD31VC, BD32VA, BD32VB, BD32VC, BD41VA, BD41VB, BD41VC, BD42VA, BD42VB, BD42VC];
Sleep 0.2;

BD11 = [_BRPD11, WEST, [
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_LAT_F","B_G_Soldier_LAT2_F","B_G_Soldier_lite_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F","B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD11 setGroupIDGlobal ["D 1 1"];
BD11 addVehicle BD11V;
Sleep 0.2;

BD12 = [_BRPD12, WEST, [
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_officer_F","B_G_officer_F","B_G_engineer_F","B_G_engineer_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F","B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Lieutenant","Sergeant","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD12 setGroupIDGlobal ["D 1 2"];
BD12 addVehicle BD12V;
Sleep 0.2;

BD13 = [_BRPD13, WEST, [
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_LAT_F","B_G_Soldier_LAT2_F","B_G_Soldier_lite_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F","B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD13 setGroupIDGlobal ["D 1 3"];
BD13 addVehicle BD13V;
Sleep 0.2;

BD21 = [_BRPD21, WEST, [
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_LAT_F","B_G_Soldier_LAT2_F","B_G_Soldier_lite_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F","B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD21 setGroupIDGlobal ["D 2 1"];
BD21 addVehicle BD21V;
Sleep 0.2;

BD22 = [_BRPD22, WEST, [
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_officer_F","B_G_officer_F","B_G_engineer_F","B_G_engineer_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F","B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Lieutenant","Sergeant","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD22 setGroupIDGlobal ["D 2 2"];
BD22 addVehicle BD22V;
Sleep 0.2;

BD23 = [_BRPD23, WEST, [
		"B_G_Soldier_SL_F","B_G_medic_F",
		"B_G_Soldier_TL_F","B_G_Soldier_LAT_F","B_G_Soldier_LAT2_F","B_G_Soldier_lite_F",
		"B_G_Soldier_TL_F","B_G_Soldier_TL_F","B_G_Soldier_GL_F","B_G_Soldier_GL_F",
		"B_G_Soldier_AR_F","B_G_Soldier_AR_F","B_G_Soldier_F","B_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD23 setGroupIDGlobal ["D 2 3"];
BD23 addVehicle BD23V;
Sleep 0.2;

BD31 = [_BRPD31A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_F",
		"B_G_Soldier_TL_F","B_G_Soldier_F","B_G_medic_F","B_G_Soldier_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD31 setGroupIDGlobal ["D 3 1"];
BD31 addVehicle BD31VA;
BD31 addVehicle BD31VB;
BD31 addVehicle BD31VC;
Units BD31 select 0 moveInDriver BD31VA;
Units BD31 select 1 moveInCommander BD31VA;
Units BD31 select 2 moveInGunner BD31VA;
Units BD31 select 3 moveInDriver BD31VB;
Units BD31 select 4 moveInCommander BD31VB;
Units BD31 select 5 moveInGunner BD31VB;
Sleep 0.2;



BD32 = [_BRPD32A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_F",
		"B_G_Soldier_TL_F","B_G_Soldier_F","B_G_medic_F","B_G_Soldier_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD32 setGroupIDGlobal ["D 3 2"];
BD32 addVehicle BD32VA;
BD32 addVehicle BD32VB;
BD32 addVehicle BD32VC;
Units BD32 select 0 moveInDriver BD32VA;
Units BD32 select 1 moveInCommander BD32VA;
Units BD32 select 2 moveInGunner BD32VA;
Units BD32 select 3 moveInDriver BD32VB;
Units BD32 select 4 moveInCommander BD32VB;
Units BD32 select 5 moveInGunner BD32VB;
Sleep 0.2;

BD41 = [_BRPD41A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_F",
		"B_G_Soldier_TL_F","B_G_Soldier_F","B_G_medic_F","B_G_Soldier_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD41 setGroupIDGlobal ["D 4 1"];
BD41 addVehicle BD41VA;
BD41 addVehicle BD41VB;
BD41 addVehicle BD41VC;
Units BD41 select 0 moveInDriver BD41VA;
Units BD41 select 1 moveInCommander BD41VA;
Units BD41 select 2 moveInGunner BD41VA;
Units BD41 select 3 moveInDriver BD41VB;
Units BD41 select 4 moveInCommander BD41VB;
Units BD41 select 5 moveInGunner BD41VB;
Sleep 0.2;

BD42 = [_BRPD42A, WEST, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_F",
		"B_G_Soldier_TL_F","B_G_Soldier_F","B_G_medic_F","B_G_Soldier_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
BD42 setGroupIDGlobal ["D 4 2"];
BD42 addVehicle BD42VA;
BD42 addVehicle BD42VB;
BD42 addVehicle BD42VC;
Units BD42 select 0 moveInDriver BD42VA;
Units BD42 select 1 moveInCommander BD42VA;
Units BD42 select 2 moveInGunner BD42VA;
Units BD42 select 3 moveInDriver BD42VB;
Units BD42 select 4 moveInCommander BD42VB;
Units BD42 select 5 moveInGunner BD42VB;
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
} foreach [BD11, BD12, BD13, BD21, BD22, BD23, BD31, BD32, BD41, BD42];

{
	{
		_x addEventHandler ["Killed", {
			BD11Grave pushback (_this select 0);
			PublicVariable "BD11Grave";
		}];
	} foreach units _x;
} foreach [BD11];

{
	{
		_x addEventHandler ["Killed", {
			BD12Grave pushback (_this select 0);
			PublicVariable "BD12Grave";
		}];
	} foreach units _x;
} foreach [BD12];

{
	{
		_x addEventHandler ["Killed", {
			BD13Grave pushback (_this select 0);
			PublicVariable "BD13Grave";
		}];
	} foreach units _x;
} foreach [BD13];

{
	{
		_x addEventHandler ["Killed", {
			BD21Grave pushback (_this select 0);
			PublicVariable "BD21Grave";
		}];
	} foreach units _x;
} foreach [BD21];

{
	{
		_x addEventHandler ["Killed", {
			BD22Grave pushback (_this select 0);
			PublicVariable "BD22Grave";
		}];
	} foreach units _x;
} foreach [BD22];

{
	{
		_x addEventHandler ["Killed", {
			BD23Grave pushback (_this select 0);
			PublicVariable "BD23Grave";
		}];
	} foreach units _x;
} foreach [BD23];

{
	{
		_x addEventHandler ["Killed", {
			BD31Grave pushback (_this select 0);
			PublicVariable "BD31Grave";
		}];
	} foreach units _x;
} foreach [BD31];

{
	{
		_x addEventHandler ["Killed", {
			BD32Grave pushback (_this select 0);
			PublicVariable "BD32Grave";
		}];
	} foreach units _x;
} foreach [BD32];

{
	{
		_x addEventHandler ["Killed", {
			BD31Grave pushback (_this select 0);
			PublicVariable "BD31Grave";
		}];
	} foreach units _x;
} foreach [BD41];

{
	{
		_x addEventHandler ["Killed", {
			BD32Grave pushback (_this select 0);
			PublicVariable "BD32Grave";
		}];
	} foreach units _x;
} foreach [BD42];

_WPBD11 = BD11 addWaypoint [BD11V, 0];
_WPBD11 setWaypointType "GetIn";

_WPBD12 = BD12 addWaypoint [BD12V, 0];
_WPBD12 setWaypointType "GetIn";

_WPBD13 = BD13 addWaypoint [BD13V, 0];
_WPBD13 setWaypointType "GetIn";

_WPBD21 = BD21 addWaypoint [BD21V, 0];
_WPBD21 setWaypointType "GetIn";

_WPBD22 = BD22 addWaypoint [BD22V, 0];
_WPBD22 setWaypointType "GetIn";

_WPBD23 = BD23 addWaypoint [BD23V, 0];
_WPBD23 setWaypointType "GetIn";

_WPBD31 = BD31 addWaypoint [BD31VA, 0];
_WPBD31 setWaypointFormation  "File";
_WPBD31 setWaypointType "GetIn";

_WPBD32 = BD32 addWaypoint [BD32VA, 0];
_WPBD32 setWaypointFormation  "File";
_WPBD32 setWaypointType "GetIn";

_WPBD41 = BD41 addWaypoint [BD41VA, 0];
_WPBD41 setWaypointFormation  "File";
_WPBD41 setWaypointType "GetIn";

_WPBD42 = BD42 addWaypoint [BD42VA, 0];
_WPBD42 setWaypointFormation  "File";
_WPBD42 setWaypointType "GetIn";