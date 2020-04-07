/*
Null = [this, HC#] execvm "Migrate.sqf";
*/

If (!isserver) exitwith {};
If (!ismultiplayer) exitwith {};
Waituntil {time > 2};

_unit = _this select 0;
_HC = _this select 1;

If (isnull _HC) exitwith {};

_HCid = owner _HC;
_unitgroup = group _unit;

_unitgroup setgroupowner _HCid;
