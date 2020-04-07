_unit = _this select 0;
_side = side _unit;
if (!(local _unit)) exitwith {};

switch (_side) do {
	RemoveAllWeapons _unit;
	RemoveAllItems _unit;
	RemoveAllAssignedItems _unit;
	RemoveUniform _unit;
	RemoveVest _unit;
	RemoveBackpack _unit;
	RemoveHeadgear _unit;
	RemoveGoggles _unit;

	_unit LinkItem "ItemCompass";
	_unit LinkItem "ItemMap";
	_unit LinkItem "ItemRadio";
	_unit LinkItem "ItemWatch";
	_unit LinkItem "ItemGPS";

	case WEST: {
		_unit ForceAddUniform "U_B_CombatUniform_mcam";
		_unit AddVest "V_PlateCarrier1_rgr_noflag_F";
		_unit AddWeapon "Binocular";
		_unit AddWeapon "arifle_SPAR_01_blk_F";
		_unit AddPrimaryWeaponItem "optic_Aco";
		_unit AddPrimaryWeaponItem "30Rnd_556x45_Stanag";
		For "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit"};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_red";};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_yellow";};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
		For "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellOrange";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
		For "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
		_unit AddHeadgear "H_HelmetB";
	};	

	case EAST: {
		_unit ForceAddUniform "U_O_officer_noInsignia_hex_F";
		_unit AddVest "V_PlateCarrier1_blk";
		_unit AddWeapon "Binocular";
		_unit AddWeapon "arifle_AK12_F";
		_unit AddPrimaryWeaponItem "optic_Aco";
		_unit AddPrimaryWeaponItem "30Rnd_762x39_AK12_Mag_F";
		For "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit"};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_red";};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_yellow";};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
		For "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
		For "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellOrange";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		For "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
		For "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_762x39_AK12_Mag_F";};
		_unit AddHeadgear "H_HelmetB_light_black";
	};
};