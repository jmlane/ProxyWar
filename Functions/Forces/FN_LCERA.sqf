//Local Combat Elements
//Redfor Alpha

//Create redfor rally points for alpha squads.
_RRPA11 = RRPA getPos [15, (getDir RRPA) + 090];
_RRPA12 = RRPA getPos [21, (getDir RRPA) + 135];
_RRPA13 = RRPA getPos [34, (getDir RRPA) + 154];
_RRPA21 = getPos RRPA;
_RRPA22 = RRPA getPos [15, (getDir RRPA) + 180];
_RRPA23 = RRPA getPos [30, (getDir RRPA) + 180];
_RRPA31A = RRPA getPos [15, (getDir RRPA) + 270];
_RRPA31B = RRPA getPos [21, (getDir RRPA) + 225];
_RRPA32A = RRPA getPos [30, (getDir RRPA) + 270];
_RRPA32B = RRPA getPos [34, (getDir RRPA) + 244];
_RRPA41 = RRPA getPos [34, (getDir RRPA) + 207];
_RRPA42 = RRPA getPos [42, (getDir RRPA) + 225];

RA11V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPA11;
RA11V setDir (direction RRPA);
Sleep 0.2;

RA12V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPA12;
RA12V setDir (direction RRPA);
Sleep 0.2;

RA13V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPA13;
RA13V setDir (direction RRPA);
Sleep 0.2;

RA21V = "I_APC_tracked_03_cannon_F" createVehicle _RRPA21;
RA21V setDir (direction RRPA);
Sleep 0.2;

RA22V = "I_APC_tracked_03_cannon_F" createVehicle _RRPA22;
RA22V setDir (direction RRPA);
Sleep 0.2;

RA23V = "I_APC_tracked_03_cannon_F" createVehicle _RRPA23;
RA23V setDir (direction RRPA);
Sleep 0.2;

RA31VA = "I_MBT_03_cannon_F" createVehicle _RRPA31A;
RA31VA setDir (direction RRPA);
Sleep 0.2;

RA31VB = "I_MBT_03_cannon_F" createVehicle _RRPA31B;
RA31VB setDir (direction RRPA);
Sleep 0.2;

RA32VA = "I_MBT_03_cannon_F" createVehicle _RRPA32A;
RA32VA setDir (direction RRPA);
Sleep 0.2;

RA32VB = "I_MBT_03_cannon_F" createVehicle _RRPA32B;
RA32VB setDir (direction RRPA);
Sleep 0.2;

RA41V = "I_Truck_02_transport_F" createVehicle _RRPA41;
RA41V setDir (direction RRPA);
Sleep 0.2;

RA42V = "I_Truck_02_transport_F" createVehicle _RRPA42;
RA42V setDir (direction RRPA);
Sleep 0.2;

RA42MA = "I_G_Mortar_01_F" createVehicle _RRPA42;
Sleep 0.2;

RA42MA attachto [RA42V, [0,-0.5,0]];
Sleep 0.2;

RA42MB = "I_G_Mortar_01_F" createVehicle _RRPA42;
Sleep 0.2;

RA42MB attachto [RA42V, [0,-2.5,0]];
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [RA11V, RA12V, RA13V, RA21V, RA22V, RA23V, RA31VA, RA31VB, RA32VA, RA32VB, RA41V, RA42V];
Sleep 0.2;

RA11 = [_RRPA11, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA11 setGroupIDGlobal ["A 1 1"];
RA11 addVehicle RA11V;
Units RA11 select 0 moveInDriver RA11V;
Units RA11 select 1 moveInCommander RA11V;
Units RA11 select 2 moveInGunner RA11V;
Sleep 0.2;

RA12 = [_RRPA12, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_medic_F"
	],[],[
		"Private","Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA12 setGroupIDGlobal ["A 1 2"];
RA12 addVehicle RA12V;
Units RA12 select 0 moveInDriver RA12V;
Units RA12 select 1 moveInCommander RA12V;
Units RA12 select 2 moveInGunner RA12V;
Sleep 0.2;

RA13 = [_RRPA13, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA13 setGroupIDGlobal ["A 1 3"];
RA13 addVehicle RA13V;
Units RA13 select 0 moveInDriver RA13V;
Units RA13 select 1 moveInCommander RA13V;
Units RA13 select 2 moveInGunner RA13V;
Sleep 0.2;

RA21 = [_RRPA21, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_Soldier_GL_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA21 setGroupIDGlobal ["A 2 1"];
RA21 addVehicle RA21V;
Units RA21 select 0 moveInDriver RA21V;
Units RA21 select 1 moveInCommander RA21V;
Units RA21 select 2 moveInGunner RA21V;
Sleep 0.2;

RA22 = [_RRPA22, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_Soldier_LAT2_F"
	],[],[
		"Private","Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA22 setGroupIDGlobal ["A 2 2"];
RA22 addVehicle RA22V;
Units RA22 select 0 moveInDriver RA22V;
Units RA22 select 1 moveInCommander RA22V;
Units RA22 select 2 moveInGunner RA22V;
Sleep 0.2;

RA23 = [_RRPA23, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_Soldier_GL_F","O_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA23 setGroupIDGlobal ["A 2 3"];
RA23 addVehicle RA23V;
Units RA23 select 0 moveInDriver RA23V;
Units RA23 select 1 moveInCommander RA23V;
Units RA23 select 2 moveInGunner RA23V;
Sleep 0.2;

RA31 = [_RRPA31A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_TL_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA31 setGroupIDGlobal ["A 3 1"];
RA31 addVehicle RA31VA;
RA31 addVehicle RA31VB;
Sleep 0.2;

RA32 = [_RRPA32A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_TL_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA32 setGroupIDGlobal ["A 3 2"];
RA32 addVehicle RA32VA;
RA32 addVehicle RA32VB;
Sleep 0.2;

RA41 = [_RRPA41, EAST, [
		"O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_LAT_F","O_G_Soldier_LAT_F",
		"O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_lite_F","O_G_Soldier_lite_F",
		"O_G_medic_F","O_G_engineer_F"
	],[],[
		"Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA41 setGroupIDGlobal ["A 4 1"];
RA41 addVehicle RA41V;
Sleep 0.2;

RA42 = [_RRPA42, EAST, [
		"O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_lite_F","O_G_Soldier_lite_F",
		"O_G_engineer_F","O_G_medic_F",
		"O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RA42 setGroupIDGlobal ["A 4 2"];
RA42 addVehicle RA42V;
RA42 addVehicle RA42MA;
RA42 addVehicle RA42MB;
Sleep 0.2;

Units RA42 select 10 moveInAny RA42MA;
Units RA42 select 11 moveInAny RA42MB;
Sleep 0.2;

{
	{
		_equip = _x spawn ASG_FNC_RLIGear;
		waituntil {scriptDone _equip};
		_x addEventHandler ["Killed", {
				RedTickets = RedTickets -1;
				PublicVariable 'RedTickets';
			}
		];
	} foreach units _x;
} foreach [RA11, RA12, RA13, RA21, RA22, RA23, RA31, RA32, RA41, RA42];
Sleep 0.2;

{
	{
		_x addEventHandler ["Killed", {
			RA11Grave pushback (_this select 0);
			PublicVariable "RA11Grave";
		}];
	} foreach units _x;
} foreach [RA11];

{
	{
		_x addEventHandler ["Killed", {
			RA12Grave pushback (_this select 0);
			PublicVariable "RA12Grave";
		}];
	} foreach units _x;
} foreach [RA12];

{
	{
		_x addEventHandler ["Killed", {
			RA13Grave pushback (_this select 0);
			PublicVariable "RA13Grave";
		}];
	} foreach units _x;
} foreach [RA13];

{
	{
		_x addEventHandler ["Killed", {
			RA21Grave pushback (_this select 0);
			PublicVariable "RA21Grave";
		}];
	} foreach units _x;
} foreach [RA21];

{
	{
		_x addEventHandler ["Killed", {
			RA22Grave pushback (_this select 0);
			PublicVariable "RA22Grave";
		}];
	} foreach units _x;
} foreach [RA22];

{
	{
		_x addEventHandler ["Killed", {
			RA23Grave pushback (_this select 0);
			PublicVariable "RA23Grave";
		}];
	} foreach units _x;
} foreach [RA23];

{
	{
		_x addEventHandler ["Killed", {
			RA31Grave pushback (_this select 0);
			PublicVariable "RA31Grave";
		}];
	} foreach units _x;
} foreach [RA31];

{
	{
		_x addEventHandler ["Killed", {
			RA32Grave pushback (_this select 0);
			PublicVariable "RA32Grave";
		}];
	} foreach units _x;
} foreach [RA32];

{
	{
		_x addEventHandler ["Killed", {
			RA31Grave pushback (_this select 0);
			PublicVariable "RA31Grave";
		}];
	} foreach units _x;
} foreach [RA41];

{
	{
		_x addEventHandler ["Killed", {
			RA32Grave pushback (_this select 0);
			PublicVariable "RA32Grave";
		}];
	} foreach units _x;
} foreach [RA42];

_WPRA11 = RA11 addWaypoint [RA11V, 0];
_WPRA11 setWaypointType "GetIn";

_WPRA12 = RA12 addWaypoint [RA12V, 0];
_WPRA12 setWaypointType "GetIn";

_WPRA13 = RA13 addWaypoint [RA13V, 0];
_WPRA13 setWaypointType "GetIn";

_WPRA21 = RA21 addWaypoint [RA21V, 0];
_WPRA21 setWaypointType "GetIn";

_WPRA22 = RA22 addWaypoint [RA22V, 0];
_WPRA22 setWaypointType "GetIn";

_WPRA23 = RA23 addWaypoint [RA23V, 0];
_WPRA23 setWaypointType "GetIn";

_WPRA31 = RA31 addWaypoint [RA31VA, 0];
_WPRA31 setWaypointType "GetIn";
_WPRA31 setWaypointFormation  "File";

_WPRA32 = RA32 addWaypoint [RA32VA, 0];
_WPRA32 setWaypointType "GetIn";
_WPRA31 setWaypointFormation  "File";

_WPRA41 = RA41 addWaypoint [RA41V, 0];
_WPRA41 setWaypointType "GetIn";

_WPRA42 = RA42 addWaypoint [RA42V, 0];
_WPRA42 setWaypointType "GetIn";

PublicVariable "RA11";
PublicVariable "RA12";
PublicVariable "RA13";
PublicVariable "RA21";
PublicVariable "RA22";
PublicVariable "RA23";
PublicVariable "RA31";
PublicVariable "RA32";
PublicVariable "RA41";
PublicVariable "RA42";