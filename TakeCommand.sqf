/*
Command Change Triggers

Trigger Condition;

Trigger Action;

Trigger Type;
B - Blufor
R - Redfor
A - Alpha (Line) Company
B - Bravo (Line) Company
C - Charlie (Line) Company
D - Delta (Headquarters) Company
6 - Command Section
6A - Command Actual
*/

Trigger Condition;
isNil "RA6A" && !isNil "RD6A";

Trigger Action;
RD6A hcsetgroup [RA11,""];
RD6A hcsetgroup [RA12,""];
RD6A hcsetgroup [RA13,""];
RD6A hcsetgroup [RA21,""];
RD6A hcsetgroup [RA22,""];
RD6A hcsetgroup [RA23,""];
RD6A hcsetgroup [RA31,""];
RD6A hcsetgroup [RA32,""];
RD6A hcsetgroup [RA41,""];
RD6A hcsetgroup [RA42,""];
[RD6A, RA6R, RA4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 12 12 12;
Server Only;
Repeatable;

Trigger Condition;
isNil "RB6A" && !isNil "RD6A";

Trigger Action;
RD6A hcsetgroup [RB11,""];
RD6A hcsetgroup [RB12,""];
RD6A hcsetgroup [RB13,""];
RD6A hcsetgroup [RB21,""];
RD6A hcsetgroup [RB22,""];
RD6A hcsetgroup [RB23,""];
RD6A hcsetgroup [RB31,""];
RD6A hcsetgroup [RB32,""];
RD6A hcsetgroup [RB41,""];
RD6A hcsetgroup [RB42,""];
[RD6A, RB6R, RB4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 10 10 10;
Server Only;
Repeatable;

Trigger Condition;
isNil "RC6A" && !isNil "RD6A";

Trigger Action;
RD6A hcsetgroup [RC11,""];
RD6A hcsetgroup [RC12,""];
RD6A hcsetgroup [RC13,""];
RD6A hcsetgroup [RC21,""];
RD6A hcsetgroup [RC22,""];
RD6A hcsetgroup [RC23,""];
RD6A hcsetgroup [RC31,""];
RD6A hcsetgroup [RC32,""];
RD6A hcsetgroup [RC41,""];
RD6A hcsetgroup [RC42,""];
[RD6A, RC6R, RC4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 8 8 8;
Server Only;
Repeatable;

Trigger Condition;
!isNil "RA6A";

Trigger Action;
RD6A hcRemoveGroup RA11;
RD6A hcRemoveGroup RA12;
RD6A hcRemoveGroup RA13;
RD6A hcRemoveGroup RA21;
RD6A hcRemoveGroup RA22;
RD6A hcRemoveGroup RA23;
RD6A hcRemoveGroup RA31;
RD6A hcRemoveGroup RA32;
RD6A hcRemoveGroup RA41;
RD6A hcRemoveGroup RA42;

RA6A hcsetgroup [RA11,""];
RA6A hcsetgroup [RA12,""];
RA6A hcsetgroup [RA13,""];
RA6A hcsetgroup [RA21,""];
RA6A hcsetgroup [RA22,""];
RA6A hcsetgroup [RA23,""];
RA6A hcsetgroup [RA31,""];
RA6A hcsetgroup [RA32,""];
RA6A hcsetgroup [RA41,""];
RA6A hcsetgroup [RA42,""];
[RA6A, RA6R, RA4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 4 4 4;
Server Only;
Repeatable;

Trigger Condition;
!isNil "RB6A";

Trigger Action;
RD6A hcRemoveGroup RB12;
RD6A hcRemoveGroup RB13;
RD6A hcRemoveGroup RB21;
RD6A hcRemoveGroup RB22;
RD6A hcRemoveGroup RB23;
RD6A hcRemoveGroup RB31;
RD6A hcRemoveGroup RB32;
RD6A hcRemoveGroup RB41;
RD6A hcRemoveGroup RB42;

RB6A hcsetgroup [RB11,""];
RB6A hcsetgroup [RB12,""];
RB6A hcsetgroup [RB13,""];
RB6A hcsetgroup [RB21,""];
RB6A hcsetgroup [RB22,""];
RB6A hcsetgroup [RB23,""];
RB6A hcsetgroup [RB31,""];
RB6A hcsetgroup [RB32,""];
RB6A hcsetgroup [RB41,""];
RB6A hcsetgroup [RB42,""];
[RB6A, RB6R, RB4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 4 4 4;
Server Only;
Repeatable;

Trigger Condition;
!isNil "RC6A";

Trigger Action;
RD6A hcRemoveGroup RC11;
RD6A hcRemoveGroup RC12;
RD6A hcRemoveGroup RC13;
RD6A hcRemoveGroup RC21;
RD6A hcRemoveGroup RC22;
RD6A hcRemoveGroup RC23;
RD6A hcRemoveGroup RC31;
RD6A hcRemoveGroup RC32;
RD6A hcRemoveGroup RC41;
RD6A hcRemoveGroup RC42;

RC6A hcsetgroup [RC11,""];
RC6A hcsetgroup [RC12,""];
RC6A hcsetgroup [RC13,""];
RC6A hcsetgroup [RC21,""];
RC6A hcsetgroup [RC22,""];
RC6A hcsetgroup [RC23,""];
RC6A hcsetgroup [RC31,""];
RC6A hcsetgroup [RC32,""];
RC6A hcsetgroup [RC41,""];
RC6A hcsetgroup [RC42,""];
[RC6A, RC6R, RC4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 4 4 4;
Server Only;
Repeatable;

Trigger Condition;
isNil "BA6A" && !isNil "BD6A";

Trigger Action;
BD6A hcsetgroup [BA11,""];
BD6A hcsetgroup [BA12,""];
BD6A hcsetgroup [BA13,""];
BD6A hcsetgroup [BA21,""];
BD6A hcsetgroup [BA22,""];
BD6A hcsetgroup [BA23,""];
BD6A hcsetgroup [BA31,""];
BD6A hcsetgroup [BA32,""];
BD6A hcsetgroup [BA41,""];
BD6A hcsetgroup [BA42,""];
[BD6A, BA6R, BA4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 8 8 8;
Server Only;
Repeatable;

Trigger Condition;
isNil "BB6A" && !isNil "BD6A";

Trigger Action;
BD6A hcsetgroup [BB11,""];
BD6A hcsetgroup [BB12,""];
BD6A hcsetgroup [BB13,""];
BD6A hcsetgroup [BB21,""];
BD6A hcsetgroup [BB22,""];
BD6A hcsetgroup [BB23,""];
BD6A hcsetgroup [BB31,""];
BD6A hcsetgroup [BB32,""];
BD6A hcsetgroup [BB41,""];
BD6A hcsetgroup [BB42,""];
[BD6A, BB6R, BB4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 6 6 6;
Server Only;
Repeatable;

Trigger Condition;
isNil "BC6A" && !isNil "BD6A";

Trigger Action;
BD6A hcsetgroup [BC11,""];
BD6A hcsetgroup [BC12,""];
BD6A hcsetgroup [BC13,""];
BD6A hcsetgroup [BC21,""];
BD6A hcsetgroup [BC22,""];
BD6A hcsetgroup [BC23,""];
BD6A hcsetgroup [BC31,""];
BD6A hcsetgroup [BC32,""];
BD6A hcsetgroup [BC41,""];
BD6A hcsetgroup [BC42,""];
[BD6A, BC6R, BC4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 4 4 4;
Server Only;
Repeatable;

Trigger Condition;
!isNil "BA6A";

Trigger Action;
BD6A hcRemoveGroup BA11;
BD6A hcRemoveGroup BA12;
BD6A hcRemoveGroup BA13;
BD6A hcRemoveGroup BA21;
BD6A hcRemoveGroup BA22;
BD6A hcRemoveGroup BA23;
BD6A hcRemoveGroup BA31;
BD6A hcRemoveGroup BA32;
BD6A hcRemoveGroup BA41;
BD6A hcRemoveGroup BA42;

BA6A hcsetgroup [BA11,""];
BA6A hcsetgroup [BA12,""];
BA6A hcsetgroup [BA13,""];
BA6A hcsetgroup [BA21,""];
BA6A hcsetgroup [BA22,""];
BA6A hcsetgroup [BA23,""];
BA6A hcsetgroup [BA31,""];
BA6A hcsetgroup [BA32,""];
BA6A hcsetgroup [BA41,""];
BA6A hcsetgroup [BA42,""];
[BA6A, BA6R, BA4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 5 5 5;
Server Only;
Repeatable;

Trigger Condition;
!isNil "BB6A";

Trigger Action;
BD6A hcRemoveGroup BB11;
BD6A hcRemoveGroup BB12;
BD6A hcRemoveGroup BB13;
BD6A hcRemoveGroup BB21;
BD6A hcRemoveGroup BB22;
BD6A hcRemoveGroup BB23;
BD6A hcRemoveGroup BB31;
BD6A hcRemoveGroup BB32;
BD6A hcRemoveGroup BB41;
BD6A hcRemoveGroup BB42;

BB6A hcsetgroup [BB11,""];
BB6A hcsetgroup [BB12,""];
BB6A hcsetgroup [BB13,""];
BB6A hcsetgroup [BB21,""];
BB6A hcsetgroup [BB22,""];
BB6A hcsetgroup [BB23,""];
BB6A hcsetgroup [BB31,""];
BB6A hcsetgroup [BB32,""];
BB6A hcsetgroup [BB41,""];
BB6A hcsetgroup [BB42,""];
[BB6A, BB6R, BB4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 5 5 5;
Server Only;
Repeatable;

Trigger Condition;
!isNil "BC6A";

Trigger Action;
BD6A hcRemoveGroup BC11;
BD6A hcRemoveGroup BC12;
BD6A hcRemoveGroup BC13;
BD6A hcRemoveGroup BC21;
BD6A hcRemoveGroup BC22;
BD6A hcRemoveGroup BC23;
BD6A hcRemoveGroup BC31;
BD6A hcRemoveGroup BC32;
BD6A hcRemoveGroup BC41;
BD6A hcRemoveGroup BC42;

BC6A hcsetgroup [BC11,""];
BC6A hcsetgroup [BC12,""];
BC6A hcsetgroup [BC13,""];
BC6A hcsetgroup [BC21,""];
BC6A hcsetgroup [BC22,""];
BC6A hcsetgroup [BC23,""];
BC6A hcsetgroup [BC31,""];
BC6A hcsetgroup [BC32,""];
BC6A hcsetgroup [BC41,""];
BC6A hcsetgroup [BC42,""];
[BC6A, BC6R, BC4] call BIS_fnc_addSupportLink;

Trigger Type;
Timeout 5 5 5;
Server Only;
Repeatable;