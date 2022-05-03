/*
Equipment of special operations forces (players).
*/

private ["_unit", "_type"];
_unit = param [0, objNull, [objNull]];

If (isNull _unit) throw "Invalid Argument: must provide valid object";
If (_unit in playableUnits) exitWith {false};

_side = side _unit;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemMap";

switch (_side) do {
	Case East: {
		_unit addWeapon "arifle_AK12U_F";
		_unit addPrimaryWeaponItem "30Rnd_762x39_AK12_Mag_F";

		_unit forceAddUniform "U_O_officer_noInsignia_hex_F";
		_unit addVest "V_PlateCarrier1_blk";

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_762x39_AK12_Mag_F";};
		_unit addHeadgear "H_HelmetB_light_black";
	};

	Case West: {
		_unit addWeapon "arifle_SPAR_01_blk_F";
		_unit addPrimaryWeaponItem "30Rnd_556x45_Stanag_red";

		_unit forceAddUniform "U_B_CombatUniform_mcam";
		_unit addVest "V_PlateCarrier1_rgr";

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_556x45_Stanag_red";};
		_unit addHeadgear "H_HelmetSpecB";
	};

	default {		
		_unit addWeapon "arifle_AKM_F";
		_unit addPrimaryWeaponItem "30Rnd_762x39_Mag_F";

		_unit forceAddUniform "U_I_C_Soldier_Camo_F";
		_unit addVest "V_CarrierRigKBT_01_light_Olive_F";

		for "_i" from 1 to 2 do {_unit addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_762x39_Mag_F";};
		_unit addHeadgear "H_HelmetB";
	};
};

Hint "Equipped.";