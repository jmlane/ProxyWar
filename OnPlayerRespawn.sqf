//_unit = _this select 0;

/* Error
13:52:20 Error in expression <e _unit) do {
Case East: {
RedTickets = RedTickets -1;
PublicVariable "RedTicket>
13:52:20   Error position: <RedTickets -1;
PublicVariable "RedTicket>
13:52:20   Error Undefined variable in expression: redtickets
*/

WaitUntil {time > 1};

Switch (side player) do {
	Case East: {
		RedTickets = RedTickets -1;
		PublicVariable "RedTickets";
		HintSilent format ["%1 Tickets Remaining", RedTickets];
		If (RedTickets < 1) then {
			"BluWin" remoteExecCall ["BIS_fnc_endMission", 0];
		};
	};
	Case West: {
		BluTickets = BluTickets -1;
		PublicVariable "BluTickets";
		HintSilent format ["%1 Tickets Remaining", BluTickets];
		If (BluTickets < 1) then {
			"RedWin" remoteExecCall ["BIS_fnc_endMission", 0];
		};
	};
};