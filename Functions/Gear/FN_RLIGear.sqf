/*
Equipment of Greek indigenous forces.

AD - Air Defense (System)
AR - Autorifle
AT - Anti Tank
CR - Carbine Rifle
GL - Grenade Launcher
HAT - Heavy Anti Tank
LAT - Light Anti Tank
LR - Long Rifle
MAT - Medium Anti Tank
MG - Machine Gun

*/

Private ["_unit", "_type"];
_unit = param [0, objNull, [objNull]];

If (isNull _unit) throw "Invalid Argument: must provide valid object";
If (_unit in playableUnits) exitWith {false};

_type = typeof _unit;

RemoveAllWeapons _unit;
RemoveAllItems _unit;
RemoveAllAssignedItems _unit;
RemoveUniform _unit;
RemoveVest _unit;
RemoveBackpack _unit;
RemoveHeadgear _unit;
RemoveGoggles _unit;

_unit setFace (selectRandom ["GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09","IG_Leader","Miller","Nikos","GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09","IG_Leader","Miller","Nikos","O_Colonel","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","TanoanHead_A3_05","TanoanHead_A3_06"]);
_unit setSpeaker (selectRandom ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE","Male01PER","Male02PER","Male03PER"]);
_Uniform =  (selectRandom ["U_I_CombatUniform","U_I_CombatUniform","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_OfficerUniform"]);
_Vest = "V_PlateCarrierIA1_dgtl";
_Helm = "H_HelmetIA";
_Goggles = (selectRandom ["","","","","","","G_Combat","G_Combat","G_Combat_Goggles_tna_F","G_Lowprofile"]);
_Pack =  "B_AssaultPack_dgtl";

_AD = "launch_B_Titan_olive_F";
_ADAmmo = "Titan_AA";

_AR = "LMG_03_F";
_ARAmmo = "200Rnd_556x45_Box_F";
_AROptic = "optic_ACO_grn";

_CR = "arifle_Mk20C_F";
_CRAmmo = "30Rnd_556x45_Stanag";
_CROptic = "optic_ACO_grn";

_GL = "arifle_Mk20_GL_F";
_GLHEAmmo = "1Rnd_HE_Grenade_shell";
_GLPAmmo = "30Rnd_556x45_Stanag";
_GLOptic = "optic_ACO_grn";

_HAT = "launch_I_Titan_short_F";
_HATAmmo = "Titan_AT";
_HATAmmo2 = "Titan_AP";

_LAT = "launch_RPG7_F";
_LATAmmo = "RPG7_F";

_LR = "arifle_Mk20_F";
_LRAmmo = "30Rnd_556x45_Stanag";
_LROptic = "optic_Aco";

_MAT = "launch_RPG7_F";
_MATAmmo = "RPG7_F";

_MG = "MMG_01_tan_F";
_MGAmmo = "150Rnd_93x64_Mag";
_MGAttachment = "bipod_01_F_blk";
_MGOptic = "optic_ACO_grn";

Switch (_type) do {
	Case "O_G_Soldier_LAT2_F": {
		_unit addWeapon _CR;
		_unit addPrimaryWeaponItem _CROptic;
		_unit addPrimaryWeaponItem _CRAmmo;
		_unit addWeapon _AD;
		_unit addSecondaryWeaponItem _ADAmmo;

		_unit forceAddUniform _Uniform;
		_unit addVest _Vest;
		_unit addBackpack _Pack;

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 8 do {_unit addItemToVest _CRAmmo;};
		_unit addItemToBackpack _ADAmmo;
		_unit addHeadgear _Helm;
	};

	Case "O_G_Soldier_AR_F": {
		_unit addWeapon _AR;
		_unit addPrimaryWeaponItem _AROptic;
		_unit addPrimaryWeaponItem _ARAmmo;

		_unit forceAddUniform _Uniform;
		_unit addVest _Vest;

		_unit addItemToUniform _ARAmmo;
		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest _ARAmmo;};
		_unit addHeadgear _Helm;
	};

	Case "O_G_Soldier_LAT_F": {
		_unit addWeapon _CR;
		_unit addPrimaryWeaponItem _CROptic;
		_unit addPrimaryWeaponItem _CRAmmo;
		_unit addWeapon _HAT;
		_unit addSecondaryWeaponItem _HATAmmo;

		_unit forceAddUniform _Uniform;
		_unit addVest _Vest;
		_unit addBackpack _Pack;

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 8 do {_unit addItemToVest _CRAmmo;};
		_unit addItemToBackpack _HATAmmo;
		_unit addItemToBackpack _HATAmmo2;
		_unit addHeadgear _Helm;
	};

	Case "O_G_medic_F": {
		_unit addWeapon _CR;
		_unit addPrimaryWeaponItem _CROptic;
		_unit addPrimaryWeaponItem _CRAmmo;

		_unit forceAddUniform _Uniform;
		_unit addVest _Vest;
		_unit addBackpack _Pack;

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 8 do {_unit addItemToVest _CRAmmo;};
		_unit addItemToBackpack "Medikit";
		_unit addHeadgear _Helm;
	};

	Case "O_G_Soldier_GL_F": {
		_unit addWeapon _CR;
		_unit addPrimaryWeaponItem _CROptic;
		_unit addPrimaryWeaponItem _CRAmmo;
		_unit addWeapon _LAT;
		_unit addSecondaryWeaponItem _LATAmmo;

		_unit forceAddUniform _Uniform;
		_unit addVest _Vest;
		_unit addBackpack _Pack;

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 8 do {_unit addItemToVest _CRAmmo;};
		for "_i" from 1 to 3 do {_unit addItemToBackpack _LATAmmo;};
		_unit addHeadgear _Helm;
	};

	Case "O_G_Soldier_lite_F": {
		_unit addWeapon _MG;
		_unit addPrimaryWeaponItem _MGOptic;
		_unit addPrimaryWeaponItem _MGAttachment;
		_unit addPrimaryWeaponItem _MGAmmo;

		_unit forceAddUniform _Uniform;
		_unit addVest _Vest;
		_unit addBackpack _Pack;

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		_unit addItemToVest _MGAmmo;
		for "_i" from 1 to 2 do {_unit addItemToBackpack _MGAmmo;};
		_unit addHeadgear _Helm;
	};

	Case "O_G_Soldier_TL_F": {
		_unit addWeapon _GL;
		_unit addPrimaryWeaponItem _GLOptic;
		_unit addPrimaryWeaponItem _GLPAmmo;

		_unit forceAddUniform _Uniform;
		_unit addVest _Vest;

		for "_i" from 1 to 6 do {_unit addItemToUniform _GLHEAmmo;};
		for "_i" from 1 to 2 do {_unit addItemToUniform "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "1Rnd_SmokeBlue_Grenade_shell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 8 do {_unit addItemToVest _GLPAmmo;};
		_unit addItemToVest "HandGrenade";
		_unit addHeadgear _Helm;
	};

	default {
		_unit forceAddUniform _uniform;
		_unit addVest _vest;
		_unit addHeadgear _helm;
		_unit addGoggles _goggles;
		for "_i" from 1 to 8 do {_unit addItemToVest _CRAmmo;};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		_unit addWeapon _CR;
		_unit addPrimaryWeaponItem _CROptic;
	};
};