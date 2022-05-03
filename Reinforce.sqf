//Reinforces each group with appropriate units from "graves" when triggered.
{
	_unitNew = BA11 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA11Grave pushback (_this select 0);
		PublicVariable "BA11Grave";
	}];
} foreach BA11Grave;
BA11Grave = [];
PublicVariable "BA11Grave";

{
	_unitNew = BA12 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA12Grave pushback (_this select 0);
		PublicVariable "BA12Grave";
	}];
} foreach BA12Grave;
BA12Grave = [];
PublicVariable "BA12Grave";

{
	_unitNew = BA13 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA13Grave pushback (_this select 0);
		PublicVariable "BA13Grave";
	}];
} foreach BA13Grave;
BA13Grave = [];
PublicVariable "BA13Grave";

{
	_unitNew = BA21 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA21Grave pushback (_this select 0);
		PublicVariable "BA21Grave";
	}];
} foreach BA21Grave;
BA21Grave = [];
PublicVariable "BA21Grave";

{
	_unitNew = BA22 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA22Grave pushback (_this select 0);
		PublicVariable "BA22Grave";
	}];
} foreach BA22Grave;
BA22Grave = [];
PublicVariable "BA22Grave";

{
	_unitNew = BA23 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA23Grave pushback (_this select 0);
		PublicVariable "BA23Grave";
	}];
} foreach BA23Grave;
BA23Grave = [];
PublicVariable "BA23Grave";

{
	_unitNew = BA31 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA31Grave pushback (_this select 0);
		PublicVariable "BA31Grave";
	}];
} foreach BA31Grave;
BA31Grave = [];
PublicVariable "BA31Grave";

{
	_unitNew = BA32 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA32Grave pushback (_this select 0);
		PublicVariable "BA32Grave";
	}];
} foreach BA32Grave;
BA32Grave = [];
PublicVariable "BA32Grave";

{
	_unitNew = BA41 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA41Grave pushback (_this select 0);
		PublicVariable "BA41Grave";
	}];
} foreach BA41Grave;
BA41Grave = [];
PublicVariable "BA41Grave";

{
	_unitNew = BA42 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BA42Grave pushback (_this select 0);
		PublicVariable "BA42Grave";
	}];
} foreach BA42Grave;
BA42Grave = [];
PublicVariable "BA42Grave";

{
	_unitNew = BB11 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB11Grave pushback (_this select 0);
		PublicVariable "BB11Grave";
	}];
} foreach BB11Grave;
BB11Grave = [];
PublicVariable "BB11Grave";

{
	_unitNew = BB12 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB12Grave pushback (_this select 0);
		PublicVariable "BB12Grave";
	}];
} foreach BB12Grave;
BB12Grave = [];
PublicVariable "BB12Grave";

{
	_unitNew = BB13 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB13Grave pushback (_this select 0);
		PublicVariable "BB13Grave";
	}];
} foreach BB13Grave;
BB13Grave = [];
PublicVariable "BB13Grave";

{
	_unitNew = BB21 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB21Grave pushback (_this select 0);
		PublicVariable "BB21Grave";
	}];
} foreach BB21Grave;
BB21Grave = [];
PublicVariable "BB21Grave";

{
	_unitNew = BB22 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB22Grave pushback (_this select 0);
		PublicVariable "BB22Grave";
	}];
} foreach BB22Grave;
BB22Grave = [];
PublicVariable "BB22Grave";

{
	_unitNew = BB23 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB23Grave pushback (_this select 0);
		PublicVariable "BB23Grave";
	}];
} foreach BB23Grave;
BB23Grave = [];
PublicVariable "BB23Grave";

{
	_unitNew = BB31 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB31Grave pushback (_this select 0);
		PublicVariable "BB31Grave";
	}];
} foreach BB31Grave;
BB31Grave = [];
PublicVariable "BB31Grave";

{
	_unitNew = BB32 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB32Grave pushback (_this select 0);
		PublicVariable "BB32Grave";
	}];
} foreach BB32Grave;
BB32Grave = [];
PublicVariable "BB32Grave";

{
	_unitNew = BB41 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB41Grave pushback (_this select 0);
		PublicVariable "BB41Grave";
	}];
} foreach BB41Grave;
BB41Grave = [];
PublicVariable "BB41Grave";

{
	_unitNew = BB42 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BB42Grave pushback (_this select 0);
		PublicVariable "BB42Grave";
	}];
} foreach BB42Grave;
BB42Grave = [];
PublicVariable "BB42Grave";

{
	_unitNew = BC11 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC11Grave pushback (_this select 0);
		PublicVariable "BC11Grave";
	}];
} foreach BC11Grave;
BC11Grave = [];
PublicVariable "BC11Grave";

{
	_unitNew = BC12 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC12Grave pushback (_this select 0);
		PublicVariable "BC12Grave";
	}];
} foreach BC12Grave;
BC12Grave = [];
PublicVariable "BC12Grave";

{
	_unitNew = BC13 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC13Grave pushback (_this select 0);
		PublicVariable "BC13Grave";
	}];
} foreach BC13Grave;
BC13Grave = [];
PublicVariable "BC13Grave";

{
	_unitNew = BC21 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC21Grave pushback (_this select 0);
		PublicVariable "BC21Grave";
	}];
} foreach BC21Grave;
BC21Grave = [];
PublicVariable "BC21Grave";

{
	_unitNew = BC22 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC22Grave pushback (_this select 0);
		PublicVariable "BC22Grave";
	}];
} foreach BC22Grave;
BC22Grave = [];
PublicVariable "BC22Grave";

{
	_unitNew = BC23 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC23Grave pushback (_this select 0);
		PublicVariable "BC23Grave";
	}];
} foreach BC23Grave;
BC23Grave = [];
PublicVariable "BC23Grave";

{
	_unitNew = BC31 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC31Grave pushback (_this select 0);
		PublicVariable "BC31Grave";
	}];
} foreach BC31Grave;
BC31Grave = [];
PublicVariable "BC31Grave";

{
	_unitNew = BC32 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC32Grave pushback (_this select 0);
		PublicVariable "BC32Grave";
	}];
} foreach BC32Grave;
BC32Grave = [];
PublicVariable "BC32Grave";

{
	_unitNew = BC41 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC41Grave pushback (_this select 0);
		PublicVariable "BC41Grave";
	}];
} foreach BC41Grave;
BC41Grave = [];
PublicVariable "BC41Grave";

{
	_unitNew = BC42 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BC42Grave pushback (_this select 0);
		PublicVariable "BC42Grave";
	}];
} foreach BC42Grave;
BC42Grave = [];
PublicVariable "BC42Grave";

{
	_unitNew = BD11 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD11Grave pushback (_this select 0);
		PublicVariable "BD11Grave";
	}];
} foreach BD11Grave;
BD11Grave = [];
PublicVariable "BD11Grave";

{
	_unitNew = BD12 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD12Grave pushback (_this select 0);
		PublicVariable "BD12Grave";
	}];
} foreach BD12Grave;
BD12Grave = [];
PublicVariable "BD12Grave";

{
	_unitNew = BD13 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD13Grave pushback (_this select 0);
		PublicVariable "BD13Grave";
	}];
} foreach BD13Grave;
BD13Grave = [];
PublicVariable "BD13Grave";

{
	_unitNew = BD21 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD21Grave pushback (_this select 0);
		PublicVariable "BD21Grave";
	}];
} foreach BD21Grave;
BD21Grave = [];
PublicVariable "BD21Grave";

{
	_unitNew = BD22 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD22Grave pushback (_this select 0);
		PublicVariable "BD22Grave";
	}];
} foreach BD22Grave;
BD22Grave = [];
PublicVariable "BD22Grave";

{
	_unitNew = BD23 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD23Grave pushback (_this select 0);
		PublicVariable "BD23Grave";
	}];
} foreach BD23Grave;
BD23Grave = [];
PublicVariable "BD23Grave";

{
	_unitNew = BD31 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD31Grave pushback (_this select 0);
		PublicVariable "BD31Grave";
	}];
} foreach BD31Grave;
BD31Grave = [];
PublicVariable "BD31Grave";

{
	_unitNew = BD32 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD32Grave pushback (_this select 0);
		PublicVariable "BD32Grave";
	}];
} foreach BD32Grave;
BD32Grave = [];
PublicVariable "BD32Grave";

{
	_unitNew = BD41 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD41Grave pushback (_this select 0);
		PublicVariable "BD41Grave";
	}];
} foreach BD41Grave;
BD41Grave = [];
PublicVariable "BD41Grave";

{
	_unitNew = BD42 createUnit [(typeOf _x), (getMarkerPos "Respawn_West"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_BLIGear;
	_unitNew addEventHandler ["Killed", {
		BD42Grave pushback (_this select 0);
		PublicVariable "BD42Grave";
	}];
} foreach BD42Grave;
BD42Grave = [];
PublicVariable "BD42Grave";

{
	_unitNew = RA11 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA11Grave pushback (_this select 0);
		PublicVariable "RA11Grave";
	}];
} foreach RA11Grave;
RA11Grave = [];
PublicVariable "RA11Grave";

{
	_unitNew = RA12 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA12Grave pushback (_this select 0);
		PublicVariable "RA12Grave";
	}];
} foreach RA12Grave;
RA12Grave = [];
PublicVariable "RA12Grave";

{
	_unitNew = RA13 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA13Grave pushback (_this select 0);
		PublicVariable "RA13Grave";
	}];
} foreach RA13Grave;
RA13Grave = [];
PublicVariable "RA13Grave";

{
	_unitNew = RA21 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA21Grave pushback (_this select 0);
		PublicVariable "RA21Grave";
	}];
} foreach RA21Grave;
RA21Grave = [];
PublicVariable "RA21Grave";

{
	_unitNew = RA22 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA22Grave pushback (_this select 0);
		PublicVariable "RA22Grave";
	}];
} foreach RA22Grave;
RA22Grave = [];
PublicVariable "RA22Grave";

{
	_unitNew = RA23 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA23Grave pushback (_this select 0);
		PublicVariable "RA23Grave";
	}];
} foreach RA23Grave;
RA23Grave = [];
PublicVariable "RA23Grave";

{
	_unitNew = RA31 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA31Grave pushback (_this select 0);
		PublicVariable "RA31Grave";
	}];
} foreach RA31Grave;
RA31Grave = [];
PublicVariable "RA31Grave";

{
	_unitNew = RA32 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA32Grave pushback (_this select 0);
		PublicVariable "RA32Grave";
	}];
} foreach RA32Grave;
RA32Grave = [];
PublicVariable "RA32Grave";

{
	_unitNew = RA41 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA41Grave pushback (_this select 0);
		PublicVariable "RA41Grave";
	}];
} foreach RA41Grave;
RA41Grave = [];
PublicVariable "RA41Grave";

{
	_unitNew = RA42 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RA42Grave pushback (_this select 0);
		PublicVariable "RA42Grave";
	}];
} foreach RA42Grave;
RA42Grave = [];
PublicVariable "RA42Grave";

{
	_unitNew = RB11 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB11Grave pushback (_this select 0);
		PublicVariable "RB11Grave";
	}];
} foreach RB11Grave;
RB11Grave = [];
PublicVariable "RB11Grave";

{
	_unitNew = RB12 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB12Grave pushback (_this select 0);
		PublicVariable "RB12Grave";
	}];
} foreach RB12Grave;
RB12Grave = [];
PublicVariable "RB12Grave";

{
	_unitNew = RB13 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB13Grave pushback (_this select 0);
		PublicVariable "RB13Grave";
	}];
} foreach RB13Grave;
RB13Grave = [];
PublicVariable "RB13Grave";

{
	_unitNew = RB21 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB21Grave pushback (_this select 0);
		PublicVariable "RB21Grave";
	}];
} foreach RB21Grave;
RB21Grave = [];
PublicVariable "RB21Grave";

{
	_unitNew = RB22 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB22Grave pushback (_this select 0);
		PublicVariable "RB22Grave";
	}];
} foreach RB22Grave;
RB22Grave = [];
PublicVariable "RB22Grave";

{
	_unitNew = RB23 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB23Grave pushback (_this select 0);
		PublicVariable "RB23Grave";
	}];
} foreach RB23Grave;
RB23Grave = [];
PublicVariable "RB23Grave";

{
	_unitNew = RB31 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB31Grave pushback (_this select 0);
		PublicVariable "RB31Grave";
	}];
} foreach RB31Grave;
RB31Grave = [];
PublicVariable "RB31Grave";

{
	_unitNew = RB32 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB32Grave pushback (_this select 0);
		PublicVariable "RB32Grave";
	}];
} foreach RB32Grave;
RB32Grave = [];
PublicVariable "RB32Grave";

{
	_unitNew = RB41 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB41Grave pushback (_this select 0);
		PublicVariable "RB41Grave";
	}];
} foreach RB41Grave;
RB41Grave = [];
PublicVariable "RB41Grave";

{
	_unitNew = RB42 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RB42Grave pushback (_this select 0);
		PublicVariable "RB42Grave";
	}];
} foreach RB42Grave;
RB42Grave = [];
PublicVariable "RB42Grave";

{
	_unitNew = RC11 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC11Grave pushback (_this select 0);
		PublicVariable "RC11Grave";
	}];
} foreach RC11Grave;
RC11Grave = [];
PublicVariable "RC11Grave";

{
	_unitNew = RC12 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC12Grave pushback (_this select 0);
		PublicVariable "RC12Grave";
	}];
} foreach RC12Grave;
RC12Grave = [];
PublicVariable "RC12Grave";

{
	_unitNew = RC13 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC13Grave pushback (_this select 0);
		PublicVariable "RC13Grave";
	}];
} foreach RC13Grave;
RC13Grave = [];
PublicVariable "RC13Grave";

{
	_unitNew = RC21 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC21Grave pushback (_this select 0);
		PublicVariable "RC21Grave";
	}];
} foreach RC21Grave;
RC21Grave = [];
PublicVariable "RC21Grave";

{
	_unitNew = RC22 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC22Grave pushback (_this select 0);
		PublicVariable "RC22Grave";
	}];
} foreach RC22Grave;
RC22Grave = [];
PublicVariable "RC22Grave";

{
	_unitNew = RC23 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC23Grave pushback (_this select 0);
		PublicVariable "RC23Grave";
	}];
} foreach RC23Grave;
RC23Grave = [];
PublicVariable "RC23Grave";

{
	_unitNew = RC31 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC31Grave pushback (_this select 0);
		PublicVariable "RC31Grave";
	}];
} foreach RC31Grave;
RC31Grave = [];
PublicVariable "RC31Grave";

{
	_unitNew = RC32 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC32Grave pushback (_this select 0);
		PublicVariable "RC32Grave";
	}];
} foreach RC32Grave;
RC32Grave = [];
PublicVariable "RC32Grave";

{
	_unitNew = RC41 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC41Grave pushback (_this select 0);
		PublicVariable "RC41Grave";
	}];
} foreach RC41Grave;
RC41Grave = [];
PublicVariable "RC41Grave";

{
	_unitNew = RC42 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RC42Grave pushback (_this select 0);
		PublicVariable "RC42Grave";
	}];
} foreach RC42Grave;
RC42Grave = [];
PublicVariable "RC42Grave";

{
	_unitNew = RD11 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD11Grave pushback (_this select 0);
		PublicVariable "RD11Grave";
	}];
} foreach RD11Grave;
RD11Grave = [];
PublicVariable "RD11Grave";

{
	_unitNew = RD12 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD12Grave pushback (_this select 0);
		PublicVariable "RD12Grave";
	}];
} foreach RD12Grave;
RD12Grave = [];
PublicVariable "RD12Grave";

{
	_unitNew = RD13 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD13Grave pushback (_this select 0);
		PublicVariable "RD13Grave";
	}];
} foreach RD13Grave;
RD13Grave = [];
PublicVariable "RD13Grave";

{
	_unitNew = RD21 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD21Grave pushback (_this select 0);
		PublicVariable "RD21Grave";
	}];
} foreach RD21Grave;
RD21Grave = [];
PublicVariable "RD21Grave";

{
	_unitNew = RD22 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD22Grave pushback (_this select 0);
		PublicVariable "RD22Grave";
	}];
} foreach RD22Grave;
RD22Grave = [];
PublicVariable "RD22Grave";

{
	_unitNew = RD23 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD23Grave pushback (_this select 0);
		PublicVariable "RD23Grave";
	}];
} foreach RD23Grave;
RD23Grave = [];
PublicVariable "RD23Grave";

{
	_unitNew = RD31 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD31Grave pushback (_this select 0);
		PublicVariable "RD31Grave";
	}];
} foreach RD31Grave;
RD31Grave = [];
PublicVariable "RD31Grave";

{
	_unitNew = RD32 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD32Grave pushback (_this select 0);
		PublicVariable "RD32Grave";
	}];
} foreach RD32Grave;
RD32Grave = [];
PublicVariable "RD32Grave";

{
	_unitNew = RD41 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD41Grave pushback (_this select 0);
		PublicVariable "RD41Grave";
	}];
} foreach RD41Grave;
RD41Grave = [];
PublicVariable "RD41Grave";

{
	_unitNew = RD42 createUnit [(typeOf _x), (getMarkerPos "Respawn_East"), [], 0, "NONE"];
	_unitNew spawn ASG_FNC_RLIGear;
	_unitNew addEventHandler ["Killed", {
		RD42Grave pushback (_this select 0);
		PublicVariable "RD42Grave";
	}];
} foreach RD42Grave;
RD42Grave = [];
PublicVariable "RD42Grave";

HintSilent "Reinforced.";