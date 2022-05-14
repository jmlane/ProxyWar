//Player's local initialization. Run on a client's machine when they load into the game map.

//Ensure player exists.
WaitUntil {!isNull player};

//Set to relevant voice channel.
_SetChannel = SetCurrentChannel 5;
0 EnableChannel False; //Global
1 EnableChannel True; //Side
2 EnableChannel False; //Command
3 EnableChannel True; //Group
4 EnableChannel False; //Vehicle
5 EnableChannel True; //Direct

//Equip player appropriately.

Call ASG_FNC_SOFGear;

//Tag gear for respawn.
Player setVariable ["TAG_LoadoutStart", getUnitLoadout player];
Player addEventHandler ["Respawn", {player setUnitLoadout (player getVariable ["TAG_LoadoutStart", []]);}];

//Initialize client side dynamic group framework.
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;


/*Working block. Dedicated tested.
If ((!isNil "BHA66") and {player == BHA66}) then {
	"BluCommandAA.sqf" remoteExec ["execVM", 2];
};
*/

//Check player relevance and existance.
//Assign appropriate command.
// Not dedicated tested.
If ((!isNil "BHA66") and {player == BHA66}) then {
	RemoteExec ["ASG_FNC_BAA", 2];
};

If ((!isNil "RHA66") and {player == RHA66}) then {
	RemoteExec ["ASG_FNC_RAA", 2];
};

If ((!isNil "BHB66") and {player == BHB66}) then {
	RemoteExec ["ASG_FNC_BBB", 2];
};

If ((!isNil "RHB66") and {player == RHB66}) then {
	RemoteExec ["ASG_FNC_RBB", 2];
};

If ((!isNil "BHC66") and {player == BHC66}) then {
	RemoteExec ["ASG_FNC_BCC", 2];
};

If ((!isNil "RHC66") and {player == RHC66}) then {
	RemoteExec ["ASG_FNC_RCC", 2];
};
If ((!isNil "BHD66") and {player == BHD66}) then {
	RemoteExec ["ASG_FNC_BDD", 2];
};

If ((!isNil "RHD66") and {player == RHD66}) then {
	RemoteExec ["ASG_FNC_RDD", 2];
};


/*
If ((!isNil "BHD66") and {isNil "BHA66"} and {player == BHD66}) then {
	RemoteExec ["ASG_FNC_BAD", 2];
};

If ((!isNil "RHD66") and {isNil "RHA66"} and {player == RHD66}) then {
	RemoteExec ["ASG_FNC_RAD", 2];
};

If ((!isNil "BHD66") and {isNil "BHB66"} and {player == BHD66}) then {
	RemoteExec ["ASG_FNC_BBD", 2];
};

If ((!isNil "RHD66") and {isNil "RHB66"} and {player == RHD66}) then {
	RemoteExec ["ASG_FNC_RBD", 2];
};

If ((!isNil "BHD66") and {isNil "BHC66"} and {player == BHD66}) then {
	RemoteExec ["ASG_FNC_BCD", 2];
};

If ((!isNil "RHD66") and {isNil "RHC66"} and {player == RHD66}) then {
	RemoteExec ["ASG_FNC_RCD", 2];
};
*/
/*
	{
		BHD66 HCSetGroup [_x];
	} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];
/*
BHCCA = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"];
BHCSA = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"];
BHCSA SynchronizeObjectsAdd [BHCCA];
BHCCA SynchronizeObjectsAdd [BHD66];

If ((!isNil "BHD66") and {isNil "BHA66"} and {player == BHD66}) then {
	{
		BHD66 HCSetGroup [_x];
	} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];
	[BHD66, BA6R, BA4R] call BIS_fnc_addSupportLink;
};

//Create high command modules.
WaitUntil {!isNil "RA42"};

BHCCA = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"];
BHCCA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BHCSA = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"];
BHCSA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BHCSA SynchronizeObjectsAdd [BHCCA];
BHCCA SynchronizeObjectsAdd [BFDO];

WaitUntil {!isNil "BA6R"};
If ((!isNil "BHD66") and {isNil "BHA66"} and {player == BHD66}) then {
	{
		BHD66 HCSetGroup [_x];
	} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];
	[BHD66, BA6R, BA4R] call BIS_fnc_addSupportLink;
};
/*
RHCCA = _LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"];
RHCCA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RHCSA = _LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"];
RHCSA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RHCSA SynchronizeObjectsAdd [RHCCA];
RHCCA SynchronizeObjectsAdd [RFDO];

//Wait for relevant subordinates to spawn.

WaitUntil {!isNil "RD42"}; //Sleep 60;

//Assign alpha company elements to alpha company commander if alpha company commander is present.

If ((!isNil "BHA66") and {player == BHA66}) then {
	{
		BHA66 HCSetGroup [_x,""];
	} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];
	[BHA66, BA6R, BA42R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

If ((!isNil "RHA66") and {player == RHA66}) then {
	{
		RHA66 HCSetGroup [_x,""];
	} foreach [RA11, RA12, RA13, RA21, RA22, RA23, RA31, RA32, RA41, RA42];
	[RHA66, RA6R, RA42R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

//Assign bravo company elements to bravo company commander if bravo company commander is present.

If ((!isNil "BHB66") and {player == BHB66}) then {
	{
		BHB66 HCSetGroup [_x,""];
	} foreach [BB11, BB12, BB13, BB21, BB22, BB23, BB31, BB32, BB41, BB42];
	[BHB66, BB6R, BB42R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

If ((!isNil "RHB66") and {player == RHB66}) then {
	{
		RHB66 HCSetGroup [_x,""];
	} foreach [RB11, RB12, RB13, RB21, RB22, RB23, RB31, RB32, RB41, RB42];
	[RHB66, RB6R, RB42R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

//Assign charlie company elements to charlie company commander if charlie company commander is present.

If ((!isNil "BHC66") and {player == BHC66}) then {
	{
		BHC66 HCSetGroup [_x,""];
	} foreach [BC11, BC12, BC13, BC21, BC22, BC23, BC31, BC32, BC41, BC42];
	[BHC66, BC6R, BC42R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

If ((!isNil "RHC66") and {player == RHC66}) then {
	{
		RHC66 HCSetGroup [_x,""];
	} foreach [RC11, RC12, RC13, RC21, RC22, RC23, RC31, RC32, RC41, RC42];
	[RHC66, RC6R, RC42R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

//Assign alpha company elements to higher command if alpha commander is not present.

If ((!isNil "BHD66") and {isNil "BHA66"} and {player == BHD66}) then {
	{
		BHD66 HCSetGroup [_x,""];
	} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];
	[BHD66, BA6R, BA4R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

If ((!isNil "RHD66") and {isNil "RHA66"} and {player == RHD66}) then {
	{
		RHD66 HCSetGroup [_x,""];
	} foreach [RA11, RA12, RA13, RA21, RA22, RA23, RA31, RA32, RA41, RA42];
	[RHD66, RA6R, RA4R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

//Assign bravo company elements to higher command if bravo commander is not present.

If ((!isNil "BHD66") and {isNil "BHB66"} and {player == BHD66}) then {
	{
		BHD66 HCSetGroup [_x,""];
	} foreach [BB11, BB12, BB13, BB21, BB22, BB23, BB31, BB32, BB41, BB42];
	[BHD66, BB6R, BB4R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

If ((!isNil "RHD66") and {isNil "RHB66"} and {player == RHD66}) then {
	{
		RHD66 HCSetGroup [_x,""];
	} foreach [RB11, RB12, RB13, RB21, RB22, RB23, RB31, RB32, RB41, RB42];
	[RHD66, RB6R, RB4R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

//Assign charlie company elements to higher command if charlie commander is not present.

If ((!isNil "BHD66") and {isNil "BHC66"} and {player == BHD66}) then {
	{
		BHD66 HCSetGroup [_x,""];
	} foreach [BC11, BC12, BC13, BC21, BC22, BC23, BC31, BC32, BC41, BC42];
	[BHD66, BC6R, BC4R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

If ((!isNil "RHD66") and {isNil "RHC66"} and {player == RHD66}) then {
	{
		RHD66 HCSetGroup [_x,""];
	} foreach [RC11, RC12, RC13, RC21, RC22, RC23, RC31, RC32, RC41, RC42];
	[RHD66, RC6R, RC4R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

//Assign delta company and air combat elements to task force commander if task force commander is present.

If ((!isNil "BHD66") and {player == BHD66}) then {
	{
		BHD66 HCSetGroup [_x,""];
	} foreach [BD11, BD12, BD13, BD21, BD22, BD23, BD31, BD32, BD41, BD42, BACE11];
	[BHD66, BD6R, BD4R] call BIS_fnc_addSupportLink;
//	[BHD66, BACE6R, BACE11R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;

If ((!isNil "RHD66") and {player == RHD66}) then {
	{
		RHD66 HCSetGroup [_x,""];
	} foreach [RD11, RD12, RD13, RD21, RD22, RD23, RD31, RD32, RD41, RD42];
	[RHD66, RD6R, RD4R] call BIS_fnc_addSupportLink;
};

Sleep 0.2;