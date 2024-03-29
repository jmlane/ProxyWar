//Concept
    Scalable hybrid PVE/PVP scenario involving full map sector control.
Features combined arms high command of up to four hundred local units (AI) per side,
and up to one hundred twenty eight special operations units (players) (final performance dependent).

Each team's ultimate objective is to drive the opposing force from the area of operation.
This is done by draining the opposing force of all of their public support (tickets).
Tickets are drained from a side when they hold too little territory,
when they harm civilians or their property, and when they sustain casualties. (Work in progress).

Designed to be played as sixty four versus sixty four players,
with four players per side in high command roles,
commanding up to one hundred local forces (AI) each.

The scenario may be played by a single player,
cooperatively with up to one hundred twenty eight players,
or competitively with up to sixty four players per side.

//Feature List
//Complete
256 playable slots, 128 playable at a time.
Adaptive 1-8 player high command combined arms companies.
Basic Medical
Dynamic Groups
Objective Based Reinforcement (AI Respawn)
Sector Control Objectives
Mission End State
"Real" Artillery Support
Virtual Air Support

//Pending Testing

//In Progress
ASG AI Update
Ticket Bleed System

//Wishlist
//*Priority Systems
AI Medical System
CASEVAC System (returning wounded characters to appropriate zone restores tickets to pool)
Civilians and Traffic (interactive set dressing that populates areas, but flee and delete themselves when panicked)
Custom Medical System
Immersive Reinforcement (Respawn Upgrade)
In-Campaign Training and Ranks
High command/AI expansion:
	- Break Contact/Rally
	- Garrison
	- Fortification
	- Morale
	- Report and Request (Commander map reduction)
	- Tactical Operations Center for high commmanders.
Persistent Battlefield
Recon System:
 - Indirect player control of local (AI) forces.
 - Players can submit SALUTE reports to local forces.
 - If local forces 1) have no player high commander and 2) the report indicates a potential victory, then the local forces will attack.
Simple Logistics (& Vehicle Repair)
Skiplobby (Dependent upon logistics and persistence)

//Required in Editor:
(Subject to change, may be saved and deployed as a single "composition" in 3den Editor.)
Objects
- Helipad (Invisible) with names:
- Most of these "RP" objects should be spaced at reasonable minimum distances (TBD) from each other.
"BACE11RP"
"BRPA"
"BRPB"
"BRPC"
"BRPD"
"BSOFRP_1"
"BSOFRP_2"
"BSOFRP_3"
"BSOFRP_4"
"BSOFRP_5"
"RSOFRP_1"
"RSOFRP_2"
"RSOFRP_3"
"RSOFRP_4"
"RSOFRP_5"
"RRPA"
"RRPB"
"RRPC"
"RRPD"

Markers
- Empty "Sector","Sector_1", etc., for each capture point.
- Empty "Respawn_East" and "Respawn_West" markers.

"Vehicles"
128 playable blufor slots.
- Four of which named:
- - "BHA66"
- - "BHB66"
- - "BHC66"
- - "BHD66"
128 playable opfor slots.
- Four of which named:
- - "RHA66"
- - "RHB66"
- - "RHC66"
- - "RHD66"
Named units may benefit from being placed last.
1 blufor unit named "BFDO".
1 opfor unit named "RFDO".

//Mission Folder Directory
Functions
    - Forces
        - BACE //Creates "real" air support. Incomplete.
        - LCEB //Creates combined arms company. Original file. Unused.
        - LCEBA //Creates blufor combined arms company alpha. 
        - LCEBB //Creates blufor combined arms company bravo. 
        - LCEBC //Creates blufor combined arms company charlie. 
        - LCEBD //Creates blufor delta (artillery, headquarters, "reserve" infantry) company.
        - LCERA //Creates opfor combined arms company alpha.
        - LCERB //Creates opfor combined arms company bravo.
        - LCERC //Creates opfor combined arms company charlie.
        - LCERD //Creates opfor delta (artillery, headquarters, "reserve" infantry) company.
        - SOF //Creates player vehicles.
    - Gear
        - BLIGear //Equips blufor allied local forces (AI) with appropriate gear.
        - RLIGear //Equips opfor allied local forces (AI) with appropriate gear.
        - SOFGear (old) //Equips "SOF" special operations forces (players) of all factions with appropriate gear. Depricated.
        - SOFGear //Equips "SOF" special operations forces (players) of all factions with appropriate gear. Depricated.
    - Sectors
        - Custom control points for scoring in the sandbox. Incomplete.
    - Support
        - Nothing. Incomplete.
    - CfgFunctions //Configure functions.
AlphaReadMe //This file. Describes and maps the project.
Description //Server options and definitions of functions. Incomplete.
InitPlayerLocal //Locally executed by each player upon server join. Equips gear, assigns subordinate units, assigns support.
InitServer //Executed by server. Creates local forces (AI) and assigns support.
Mission //Mission file from the Eden editor.
Reinforce //Executed on every sector capture. Reinforces local forces.
ScratchWork //Scenario research notes, not used by the scenario.
Sectors //Notes and projects on sectors.
TakeCommand //Possible idea for high commanders to manually take and resign command of local forces.