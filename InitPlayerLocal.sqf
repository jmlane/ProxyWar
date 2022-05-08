//Player's local initialization. Run locally by each player when they load into the game map.
/*
B - Blufor
R - Redfor (Opfor)
H - Headquarters?
A - Alpha Company
B - Bravo Company
C - Charlie Company
D - Delta Company
1 - First platoon, section, or squad.
2 - Second platoon, section, or squad.
3 - Third platoon, section, or squad.
4 - Fourth platoon, section, or squad.
6 - Headquarters or headquarters element.
*/

/* To Do:
- Players may join custom channels.
- Players get static effect when recieving messages from too far away.
- Players with backpack radios have less static.
- Retransmission stations can reduce static.
- Players with terminals may transmit text messages?
- High commanders must be within 'range' to give orders.
*/

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
Player addEventHandler ["Respawn", { player setUnitLoadout (player getVariable ["TAG_LoadoutStart", []]);}];

//Initialize client side dynamic group framework.
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

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

Hint "Command assigned.";

/* Virtual Air Support

Sleep 0.2;

[BD6A, BD6R, BD4] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE1A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE1B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE1C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE1D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE2A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE2B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE2C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE2D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE3A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE3B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE3C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE3D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE4A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE4B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE4C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE4D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE5A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE5B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE5C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE5D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE6A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE6B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE6C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE6D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE7A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE7B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE7C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE7D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE8A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE8B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE8C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BACE8D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE1A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE1B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE1C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE1D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE2A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE2B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE2C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE2D] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE3A] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE3B] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE3C] call BIS_fnc_addSupportLink;
[BD6A, BD6R, BATE3D] call BIS_fnc_addSupportLink;

[RD6A, RD6R, RD4] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE1A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE1B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE1C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE1D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE2A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE2B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE2C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE2D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE3A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE3B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE3C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE3D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE4A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE4B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE4C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE4D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE5A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE5B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE5C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE5D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE6A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE6B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE6C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE6D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE7A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE7B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE7C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE7D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE8A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE8B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE8C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RACE8D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE1A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE1B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE1C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE1D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE2A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE2B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE2C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE2D] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE3A] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE3B] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE3C] call BIS_fnc_addSupportLink;
[RD6A, RD6R, RATE3D] call BIS_fnc_addSupportLink;