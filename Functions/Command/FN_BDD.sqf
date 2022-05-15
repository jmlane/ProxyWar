//Assignment of command of blufor's companies to delta commander.

//Preparatory steps.
WaitUntil {!isNil "BD42"};
If (!isNil "BHD66HC") then {deleteVehicle BHD66HC}; //Fight redundancy.
If (!isNil "BHD66HS") then {deleteVehicle BHD66HS}; //Fight redundancy.
If (!isNil "BD4R") then {deleteVehicle BD4R}; //Fight redundancy.
If (!isNil "BD6R") then {deleteVehicle BD6R}; //Fight redundancy.

//High command block.
BHD66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
BHD66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
BHD66HS SynchronizeObjectsAdd [BHD66HC]; //Synchronize subordinate to commander module.
BHD66HC SynchronizeObjectsAdd [BHD66]; //Synchronize commander module to commander.
If (isNil "BHA66") then {{BHD66 HCSetGroup [_x];} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];}; //If no alpha commander, assume alpha command.
If (isNil "BHB66") then {{BHD66 HCSetGroup [_x];} foreach [BB11, BB12, BB13, BB21, BB22, BB23, BB31, BB32, BB41, BB42];}; //If no bravo commander, assume bravo command.
If (isNil "BHC66") then {{BHD66 HCSetGroup [_x];} foreach [BC11, BC12, BC13, BC21, BC22, BC23, BC31, BC32, BC41, BC42];}; //If no charlie commander, assume charlie command.
{BHD66 HCSetGroup [_x];} foreach [BD11, BD12, BD13, BD21, BD22, BD23, BD31, BD32, BD41, BD42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
BD4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
BD6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
If (isNil "BHA66") then {BA42MA synchronizeObjectsAdd [BD4R];}; //If there is no alpha commander, assume alpha mortars.
If (isNil "BHB66") then {BB42MA synchronizeObjectsAdd [BD4R];}; //If there is no bravo commander, assume bravo mortars.
If (isNil "BHC66") then {BC42MA synchronizeObjectsAdd [BD4R];}; //If there is no charlie commander, assume charlie mortars.
BD41VA synchronizeObjectsAdd [BD4R]; //Synchronize artillery with artillery provider.
BD42VA synchronizeObjectsAdd [BD4R]; //Synchronize artillery with artillery provider.
[[BD6R,BD4R], {
	BD6R = _this select 0;
	BD4R = _this select 1;
	[player, BD6R, BD4R] call BIS_fnc_addSupportLink;
	[BD6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[BD6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[BD6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[BD6R, "Drop", -1] call BIS_fnc_limitSupport;
	[BD6R, "Transport", -1] call BIS_fnc_limitSupport;
	[BD6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", BHD66]; //Define above code on the client.
[BD4R, BD6R] spawn BIS_fnc_initModules; //Initialize all above code.