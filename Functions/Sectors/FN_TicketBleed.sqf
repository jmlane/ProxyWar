//Ticket Bleed (May be two scripts)
//Simple Ticket Bleed

If (isServer) then {
  WaitUntil {
    BluZones > 4 and RedZones > 4;
  };

  While {
    Sleep 2;
    BluTickets > 0 and RedTickets > 0;
  } do {
      if (RedZones < (0.6 * BluZones)) then {
          RedTickets = RedTickets - 1;
          publicVariable "RedTickets";
      };

      if (BluZones < (0.6 * RedZones)) then {
          BluTickets = BluTickets - 1;
          publicVariable "BluTickets";
      };
  };

  If (BluTickets < 1) then {
    'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
  };

  If (RedTickets < 1) then {
    'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
  };

  If (RedZones > 22) then {
    'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
  };

  If (BluZones > 22) then {
    'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
  };
};