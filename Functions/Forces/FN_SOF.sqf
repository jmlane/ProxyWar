/*

Spawns special operations light vehicles.

AA/TAA - Assembly Area/Tactical Assembly Area
RP - Rally Point/Release Point
B - Blufor
R - Redfor
SOF - Special Operations Forces
V - Vehicle (Victor)
*/

BSOFVA = "B_LSV_01_unarmed_F" createVehicle position BSOFRP_1;
BSOFVA setDir (direction BSOFRP_1);

RSOFVA = "O_LSV_02_unarmed_F" createVehicle position RSOFRP_1;
RSOFVA setDir (direction RSOFRP_1);
Sleep 0.2;

BSOFVB = "B_LSV_01_unarmed_F" createVehicle position BSOFRP_2;
BSOFVB setDir (direction BSOFRP_2);

RSOFVB = "O_LSV_02_unarmed_F" createVehicle position RSOFRP_2;
RSOFVB setDir (direction RSOFRP_2);
Sleep 0.2;

BSOFVC = "B_LSV_01_unarmed_F" createVehicle position BSOFRP_3;
BSOFVC setDir (direction BSOFRP_3);

RSOFVC = "O_LSV_02_unarmed_F" createVehicle position RSOFRP_3;
RSOFVC setDir (direction RSOFRP_3);
Sleep 0.2;

BSOFVD = "B_LSV_01_unarmed_F" createVehicle position BSOFRP_4;
BSOFVD setDir (direction BSOFRP_4);

RSOFVD = "O_LSV_02_unarmed_F" createVehicle position RSOFRP_4;
RSOFVD setDir (direction RSOFRP_4);
Sleep 0.2;

BSOFVE = "B_LSV_01_unarmed_F" createVehicle position BSOFRP_5;
BSOFVE setDir (direction BSOFRP_5);

RSOFVE = "O_LSV_02_unarmed_F" createVehicle position RSOFRP_5;
RSOFVE setDir (direction RSOFRP_5);
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [BSOFVA, BSOFVB, BSOFVC, BSOFVD, BSOFVE, RSOFVA, RSOFVB, RSOFVC, RSOFVD, RSOFVE];

/*
//"Items"
[["muzzle_snds_L","muzzle_snds_M","muzzle_snds_B","optic_Hamr","optic_Aco","optic_SOS","acc_flashlight_smg_01","acc_pointer_IR","optic_NVS","optic_Nightstalker","optic_tws","optic_tws_mg","optic_LRPS","muzzle_snds_338_black","optic_KHS_blk","bipod_01_F_blk","optic_Arco_blk_F","optic_ERCO_blk_F","optic_Holosight_blk_F","optic_Holosight_smg_blk_F","ChemicalDetector_01_black_F","U_B_Wetsuit","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_redwhite","U_Competitor","U_BG_Guerilla1_1","U_BG_Guerilla2_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1","U_C_Poor_1","U_C_HunterBody_grn","U_C_Journalist","U_BG_Guerrilla_6_1","U_Marshal","U_C_Man_casual_1_F","U_C_Man_casual_2_F","U_C_Man_casual_3_F","U_C_Mechanic_01_F","U_BG_Guerilla1_2_F","U_C_ConstructionCoverall_Red_F","U_C_ConstructionCoverall_Vrana_F","U_C_ConstructionCoverall_Black_F","U_C_ConstructionCoverall_Blue_F","U_C_Uniform_Farmer_01_F","U_C_E_LooterJacket_01_F","U_C_Uniform_Scientist_01_F","U_C_Uniform_Scientist_02_F","U_C_Uniform_Scientist_02_formal_F","U_I_L_Uniform_01_tshirt_black_F","G_Diving","G_B_Diving","G_O_Diving","ItemGPS","MineDetector","Medikit","ToolKit","B_UavTerminal","O_UavTerminal","NVGogglesB_blk_F","ChemicalDetector_01_watch_F"],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,2,2,2,2,2,2,2,1,1,1,2,2,2,2]]

//"Weapons"
[["arifle_SDAR_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_GL_blk_F","MMG_02_black_F","LMG_03_F","arifle_SPAR_02_blk_F","srifle_DMR_02_F","arifle_SPAR_03_blk_F","launch_I_Titan_short_F","launch_MRAWS_green_F","launch_B_Titan_olive_F","Binocular","Rangefinder","Laserdesignator_01_khk_F"],[6,2,2,1,2,2,1,1,2,2,2,2,1,2]]

//"Magazines"
[["HandGrenade","1Rnd_HE_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","SmokeShell","SmokeShellGreen","SmokeShellOrange","SmokeShellBlue","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","30Rnd_556x45_Stanag_red","20Rnd_556x45_UW_mag","150Rnd_556x45_Drum_Mag_F","130Rnd_338_Mag","200Rnd_556x45_Box_Red_F","10Rnd_762x54_Mag","20Rnd_762x51_Mag","10Rnd_338_Mag","Titan_AA","Titan_AT","Titan_AP","MRAWS_HEAT_F","MRAWS_HE_F","MRAWS_HEAT55_F","MiniGrenade","SmokeShellYellow","SmokeShellRed","SmokeShellPurple","Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag","ATMine_Range_Mag","ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag","APERSMineDispenser_Mag"],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]]