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
//Disabled for development. Call ASG_FNC_SOFGear;

//Tag gear for respawn.
Player setVariable ["TAG_LoadoutStart", getUnitLoadout player];
Player addEventHandler ["Respawn", {player setUnitLoadout (player getVariable ["TAG_LoadoutStart", []]);}];

//Initialize client side dynamic group framework.
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

If ((playersNumber West < 2) and {side player == West}) then {
	[player, BLR_1, BLP_1] call BIS_fnc_addSupportLink;
};

If ((playersNumber East < 2) and {side player == East}) then {
	[player, RLR_1, RLP_1] call BIS_fnc_addSupportLink;
};

If ((playersNumber West > 6) and {playersNumber West < 8} and {side player == West}) then {
	[player, BLR_2, BLP_2] call BIS_fnc_addSupportLink;
};

If ((playersNumber East > 6) and {playersNumber East < 8} and {side player == East}) then {
	[player, RLR_2, RLP_2] call BIS_fnc_addSupportLink;
};

/*
If ((BluFerry < 1) and {side player == West}) then {
	[player, BLR_1, BLP_1] call BIS_fnc_addSupportLink;
    BluFerry = BluFerry + 1;
    publicVariable "BluFerry";
};

If ((RedFerry < 1) and {side player == East}) then {
	[player, RLR_1, RLP_1] call BIS_fnc_addSupportLink;
    RedFerry = RedFerry + 1;
    publicVariable "RedFerry";
};

If ((BluFerry > 0) and {BluFerry < 2} and {side player == West}) then {
	[player, BLR_2, BLP_2] call BIS_fnc_addSupportLink;
    BluFerry = BluFerry + 1;
    publicVariable "BluFerry";
};

If ((RedFerry > 0) and {RedFerry < 2} and {side player == East}) then {
	[player, RLR_2, RLP_2] call BIS_fnc_addSupportLink;
    RedFerry = RedFerry + 1;
    publicVariable "RedFerry";
};
*/

//Check player relevance and existance, then assign command accordingly.
//To fix: When in persistent environment, commands are not reassigned.
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