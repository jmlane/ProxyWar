/*
Equipment of special operations forces (players).
*/

WaitUntil {!isNull player};

RemoveAllWeapons player;
RemoveAllItems player;
RemoveAllAssignedItems player;
RemoveUniform player;
RemoveVest player;
RemoveBackpack player;
RemoveHeadgear player;
RemoveGoggles player;
Player linkItem "ItemCompass";
Player linkItem "ItemWatch";
Player linkItem "ItemRadio";
Player linkItem "ItemMap";

Switch (playerSide) do {
	Case East: {
		player addWeapon "arifle_AK12U_F";
		player addPrimaryWeaponItem "optic_ACO_grn";
		player addPrimaryWeaponItem "30Rnd_762x39_AK12_Mag_F";

		player forceAddUniform "U_O_officer_noInsignia_hex_F";
		player addVest "V_PlateCarrier1_blk";

		for "_i" from 1 to 2 do {player addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {player addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 8 do {player addItemToVest "30Rnd_762x39_AK12_Mag_F";};
		player addHeadgear "H_HelmetB_light_black";
	};

	Case West: {
		player addWeapon "arifle_SPAR_01_blk_F";
		player addPrimaryWeaponItem "optic_Aco";
		player addPrimaryWeaponItem "30Rnd_556x45_Stanag_red";

		player forceAddUniform "U_B_CombatUniform_mcam";
		player addVest "V_PlateCarrier1_rgr";

		for "_i" from 1 to 2 do {player addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {player addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 8 do {player addItemToVest "30Rnd_556x45_Stanag_red";};
		player addHeadgear "H_HelmetSpecB";
	};

	Default {	
		player addWeapon "arifle_AKM_F";
		player addPrimaryWeaponItem "30Rnd_762x39_Mag_F";

		player forceAddUniform "U_I_C_Soldier_Camo_F";
		player addVest "V_CarrierRigKBT_01_light_Olive_F";

		for "_i" from 1 to 2 do {player addItemToVest "FirstAidKit";};
		for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {player addItemToVest "Chemlight_yellow";};
		for "_i" from 1 to 8 do {player addItemToVest "30Rnd_762x39_Mag_F";};
		player addHeadgear "H_HelmetB";
	};
};

Sleep 2;

/* Gear Scratchwork
Hint "Equipped.";

Private ["player", "_type"];
player = param [0, objNull, [objNull]];

If (isNull player) throw "Invalid Argument: must provide valid object";
If (player in playableUnits) exitWith {false};

_type = typeof player;
*/