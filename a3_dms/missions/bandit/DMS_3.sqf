/**
Mando Cabure Hardcore Ops - Tanoa III
Mission 3 - By Dash Rendar
Created 11.2.23
**/
private ["_num", "_side", "_pos", "_OK", "_difficulty", "_extraParams", "_AICount", "_group", "_type", "_launcher", "_staticGuns", "_wreck", "_crate", "_crate1", "_vehicle", "_pinCode", "_class", "_veh", "_crate_loot_values", "_crate_loot_values1", "_missionAIUnits", "_missionObjs", "_msgStart", "_msgWIN", "_msgLOSE", "_missionName", "_markers", "_time", "_added", "_cleanup", "_baseObjs", "_crate_weapons", "_crate_weapon_list", "_crate_items", "_crate_item_list", "_crate_backpacks", "_rndlevel"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

// This part is unnecessary, but exists just as an example to format the parameters for "DMS_fnc_MissionParams" if you want to explicitly define the calling parameters for DMS_fnc_FindSafePos.
// It also allows anybody to modify the default calling parameters easily.
if ((isNil "_this") || {_this isEqualTo [] || {!(_this isEqualType [])}}) then
{
	_this =
	[
		[10,DMS_WaterNearBlacklist,DMS_MinSurfaceNormal,DMS_SpawnZoneNearBlacklist,DMS_TraderZoneNearBlacklist,DMS_MissionNearBlacklist,DMS_PlayerNearBlacklist,DMS_TerritoryNearBlacklist,DMS_ThrottleBlacklists],
		[
			[]
		],
		_this
	];
};

// Check calling parameters for manually defined mission position.
// You can define "_extraParams" to specify the vehicle classname to spawn, either as _vehClass or [_vehClass]
_OK = (_this call DMS_fnc_MissionParams) params
[
	["_pos",[],[[]],[3],[],[],[]],
	["_extraParams",[]]
];

if !(_OK) exitWith
{
	diag_log format ["DMS ERROR :: Called MISSION DMS_3.sqf with invalid parameters: %1",_this];
};

//create possible difficulty add more of one difficulty to weight it towards that
_PossibleDifficulty		= 	["hardcore"];
//choose difficulty and set value
_difficulty = selectRandom _PossibleDifficulty;

//vehicle pin code choice - doing early as its used in win message and vehicle spawn
_pinCode = (1000 +(round (random 8999)));


switch (_difficulty) do
{
	case "easy":
	{
		_msgStart = ['#FFFF00',format ["A Federation Research Facility is under attack by bugs at %1!  Secure the facility!",mapGridPosition _pos]];
		_msgWIN = ['#0080ff',format ["[214th]forces have secured the facility! Vehicle pin code is %1...",_pinCode]];
		_AICount = (8 + (round (random 8)));
		_crate_weapons 		= (5 + (round (random 2)));
		_crate_items 		= (10 + (round (random 5)));
		_crate_backpacks 	= (1 + (round (random 1)));
		_vehicle = ["OPTRE_Pelican_unarmed",[(_pos select 0) -41.7191,(_pos select 1) -34.513],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
	};


	case "moderate":
	{
		_msgStart = ['#FFFF00',format ["A Federation Research Facility is under attack by bugs at %1!  Secure the facility!",mapGridPosition _pos]];
		_msgWIN = ['#0080ff',format ["[214th]forces have secured the facility! Vehicle pin code is %1...",_pinCode]];
		_AICount = (8 + (round (random 8)));
		_crate_weapons 		= (5 + (round (random 2)));
		_crate_items 		= (10 + (round (random 5)));
		_crate_backpacks 	= (1 + (round (random 1)));
		_vehicle = ["OPTRE_Pelican_unarmed",[(_pos select 0) -41.7191,(_pos select 1) -34.513],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
	};
	
	case "difficult":
	{
		_msgStart = ['#FFFF00',format ["A Federation Research Facility is under attack by bugs at %1!  Secure the facility!",mapGridPosition _pos]];
		_msgWIN = ['#0080ff',format ["[214th]forces have secured the facility! Vehicle pin code is %1...",_pinCode]];
		_AICount = (8 + (round (random 8)));
		_crate_weapons 		= (5 + (round (random 2)));
		_crate_items 		= (10 + (round (random 5)));
		_crate_backpacks 	= (1 + (round (random 1)));
		_vehicle = ["OPTRE_Pelican_unarmed",[(_pos select 0) -41.7191,(_pos select 1) -34.513],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
	};


	case "hardcore":
	{
		_msgStart = ['#FFFF00',format ["A Federation Research Facility is under attack by bugs at %1!  Secure the facility!",mapGridPosition _pos]];
		_msgWIN = ['#0080ff',format ["[214th]forces have secured the facility! Vehicle pin code is %1...",_pinCode]];
		_AICount = (8 + (round (random 8)));
		_crate_weapons 		= (5 + (round (random 2)));
		_crate_items 		= (10 + (round (random 5)));
		_crate_backpacks 	= (1 + (round (random 1)));
		_vehicle = ["OPTRE_Pelican_unarmed",[(_pos select 0) -41.7191,(_pos select 1) -34.513],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
	};
};



_group =
[
	[_pos,[-9.26833,0.0660875,0.377357]] call DMS_fnc_CalcPos,
	[_pos,[-9.20503,-64.5597,0]] call DMS_fnc_CalcPos,
	[_pos,[11.1649,-56.4945,3.0351]] call DMS_fnc_CalcPos,
	_AICount,
	"hardcore",
	"random",
	_side
] call DMS_fnc_SpawnAIGroup;

[
	_group,
	[_pos,[-9.26833,0.0660875,0.377357]] call DMS_fnc_CalcPos,
	[_pos,[-9.20503,-64.5597,0]] call DMS_fnc_CalcPos,
	[_pos,[11.1649,-56.4945,3.0351]] call DMS_fnc_CalcPos,
	"base"
] call DMS_fnc_SetGroupBehavior;

/**
_staticGuns =
[
	[
	[_pos,[-24.9241,-18.2467,0],179.929] call DMS_fnc_CalcPos,
	[_pos,[-5.47635,-17.7244,0],181.157] call DMS_fnc_CalcPos,
	[_pos,[9.47555,-85.9934,26.8651],138.548] call DMS_fnc_CalcPos,
	[_pos,[-37.639,-86.0236,26.8651],226.226] call DMS_fnc_CalcPos,
	[_pos,[-37.6329,-38.5369,26.8651],313.342] call DMS_fnc_CalcPos,
	[_pos,[9.54111,-38.5807,26.8651],48.3871] call DMS_fnc_CalcPos
	],
	_group,
	"assault",
	"hardcore",
	"bandit",
	"OPTRE_Static_Gauss"
] call DMS_fnc_SpawnAIStaticMG;

(_staticGuns select 0) setDir 15;
**/

_baseObjs =
[
	"Objects_3",
	_pos
] call DMS_fnc_ImportFromM3E;

/** add vehicle patrol
_veh =
[
	[
		[(_pos select 0) -75,(_pos select 1)+75,0]
	],
	_group,
	"assault",
	_difficulty,
	_side
] call DMS_fnc_SpawnAIVehicle;


// Create Crate type
_crate1 = ["Box_NATO_Wps_F",_pos] call DMS_fnc_SpawnCrate;
_crate1 setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,0,0,1)"];
_crate1 setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0,0,0,1)"];
_crate1 setObjectTextureGlobal [2, "#(rgb,8,8,3)color(0,0,0,1)"];
// setup crate iteself with items
_crate_loot_values1 =
[
	_crate_weapons,			// Weapons
	_crate_items,			// Items + selection list
	_crate_backpacks 		// Backpacks
];
**/
// Define mission-spawned AI Units
_missionAIUnits =
[
	_group 		// We only spawned the single group for this mission
];

// Define mission-spawned objects and loot values
_missionObjs =
[
	_staticGuns+[],						// armed AI vehicle and static guns
	[_vehicle],								//this is prize vehicle
	[]			//this is prize crate
];
// Define Mission Lose message
_msgLOSE = ['#FF0000',"The bugs control the research facility!"];

// Define mission name (for map marker and logging)
_missionName = "Federation Data Facility";

// Create Markers
_markers =
[
	_pos,
	_missionName,
	_difficulty
] call DMS_fnc_CreateMarker;

// Record time here (for logging purposes, otherwise you could just put "diag_tickTime" into the "DMS_AddMissionToMonitor" parameters directly)
_time = diag_tickTime;

// Parse and add mission info to missions monitor
_added =
[
	_pos,
	[
		[
			"kill",
			_group
		],
		[
			"playerNear",
			[_pos,DMS_playerNearRadius]
		]
	],
	[
		_time,
		(DMS_MissionTimeOut select 0) + random((DMS_MissionTimeOut select 1) - (DMS_MissionTimeOut select 0))
	],
	_missionAIUnits,
	_missionObjs,
	[_missionName,_msgWIN,_msgLOSE],
	_markers,
	_side,
	_difficulty,
	[]
] call DMS_fnc_AddMissionToMonitor;

// Check to see if it was added correctly, otherwise delete the stuff
if !(_added) exitWith
{
	diag_log format ["DMS ERROR :: Attempt to set up mission %1 with invalid parameters for DMS_AddMissionToMonitor! Deleting mission objects and resetting DMS_MissionCount.",_missionName];

	// Delete AI units and the crate. I could do it in one line but I just made a little function that should work for every mission (provided you defined everything correctly)
	_cleanup = [];
	{
		_cleanup pushBack _x;
	} forEach _missionAIUnits;

	_cleanup pushBack ((_missionObjs select 0)+(_missionObjs select 1));

	{
		_cleanup pushBack (_x select 0);
	} foreach (_missionObjs select 2);

	_cleanup call DMS_fnc_CleanUp;

	// Delete the markers directly
	{deleteMarker _x;} forEach _markers;

	// Reset the mission count
	DMS_MissionCount = DMS_MissionCount - 1;
};

// Notify players
[_missionName,_msgStart] call DMS_fnc_BroadcastMissionStatus;

if (DMS_DEBUG) then
{
	(format ["MISSION: (%1) :: Mission #%2 started at %3 with %4 AI units and %5 difficulty at time %6",_missionName,_num,_pos,_AICount,_difficulty,_time]) call DMS_fnc_DebugLog;
};