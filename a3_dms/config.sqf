/*
	Main DMS Config File

	Created by eraser1
	Several revisions and additions have been made by community members.


	A lot of these configs are influenced by WAI :P
	https://github.com/nerdalertdk/WICKED-AI
*/
DMS_Use_Map_Config = true;	// Whether or not to use config overwrites specific to the map.
/*
	If you are using a map other than a map listed in the "map_configs" folder, you should set this to false OR create a new file within the map_configs folder for the map so that you don't get a missing file error.
	To share your map-specific config, please create a merge request on GitHub and/or leave a message on the DMS thread in the Exile forums.
	For any questions regarding map-specific configs, please leave a reply in the DMS thread on the Exile forums.
*/

DMS_Enable_RankChange = false; // Whether or not to use Rank Changes. (Required 'true' if using Occupation)
/*
	I am sharing this upgrade to all. If you utilize GR8 Humanity (fully compatible) or a custom version of a ranking system(simple variable changes), this will allow your players to score +/- for Bandit and Hero kills as well as a custom Survivor Faction added to DMS as well. You can still utilize the HERO / BANDIT / SURVIVOR respect and poptab settings for gameplay :) ENJOY! DONKEYPUNCH.INFO!
*/

DMS_Add_AIKill2DB = true;  // Adds killstat for player in the database ;)

DMS_SpawnMissions_Scheduled = false;	// Whether or not to spawn missions in a scheduled environment. Setting to true may help with lag when certain missions spawn.
//Note, if you have the above to true, you need to set DMS_ai_freezeOnSpawn = false; and DMS_ai_share_info = true;

/* Mission System Settings */
	/*General settings for dynamic missions*/
	DMS_DynamicMission					= true;						// Enable/disable dynamic mission system.
	DMS_MaxBanditMissions				= 3;						// Maximum number of Bandit Missions running at the same time
	DMS_TimeToFirstMission				= [300,600];				// [Minimum,Maximum] time between first mission spawn. | DEFAULT: 3-7 minutes.
	DMS_TimeBetweenMissions				= [900,1200];				// [Minimum,Maximum] time between missions (if mission limit is not reached) | DEFAULT: 10-15 mins
	DMS_MissionTimeout					= [1200,1800]; 				// [Minimum,Maximum] time it will take for a mission to timeout | DEFAULT: 15-30 mins
	DMS_MissionTimeoutResetRange		= 1500;						// If a player is this close to a mission then it won't time-out. Set to 0 to disable this check.
	DMS_MissionTimeoutResetFrequency	= 180;						// How often (in seconds) to check for nearby players and reset the mission timeout.
	DMS_ResetMissionTimeoutOnKill		= true;						// Whether or not to reset the mission timeout when an AI is killed.
	/*General settings for dynamic missions*/

	/*General settings for static missions*/
	DMS_StaticMission					= false;						// Enable/disable static mission system.
	DMS_MaxStaticMissions				= 0;						// Maximum number of Static Missions running at the same time. It's recommended you set this to the same amount of static missions that you have in total. This config will be ignored by "DMS_StaticMissionsOnServerStart".
	DMS_TimeToFirstStaticMission		= [30,30];					// [Minimum,Maximum] time between first static mission spawn. | DEFAULT: 3-7 minutes.
	DMS_TimeBetweenStaticMissions		= [900,1200];				// [Minimum,Maximum] time between static missions (if static mission limit is not reached) | DEFAULT: 15-30 mins
	DMS_StaticMissionTimeOut			= [1500,1800]; 				// [Minimum,Maximum] time it will take for a static mission to timeout | DEFAULT: 30-60 mins
	DMS_StaticMissionTimeoutResetRange	= 1000;						// If a player is this close to a mission then it won't time-out. Set to 0 to disable this check.
	DMS_SMissionTimeoutResetFrequency	= 180;						// How often (in seconds) to check for nearby players and reset the mission timeout for static missions.
	DMS_ResetStaticMissionTimeoutOnKill	= true;						// Whether or not to reset the mission timeout when an AI is killed (for Static Missions).
	DMS_StaticMinPlayerDistance			= 1500;						// If a player is this close to a mission location, then it won't spawn the mission and will wait 60 seconds before attempting to spawn it.
	DMS_AllowStaticReinforcements		= true;						// Whether or not static missions will receive reinforcements. This will simply disable the calling of GroupReinforcementsMonitor;
	DMS_SpawnFlareOnReinforcements		= false;						// Whether or not to spawn a flare and noise when AI reinforcements have spawned.
	/*General settings for static missions*/

	DMS_playerNearRadius				= 100;						// How close a player has to be to a mission in order to satisfy the "playerNear" mission requirement (can be customized per mission).

	DMS_AI_KillPercent					= 100;						// The percent amount of AI that need to be killed for "killPercent" mission requirement (NOT IMPLEMENTED)

	/*Mission Marker settings*/
	DMS_ShowDifficultyColorLegend		= false;						// Whether or not to show a "color legend" at the bottom left of the map that shows which color corresponds to which difficulty. I know it's not very pretty, meh.
	DMS_ShowMarkerCircle				= true;					// Whether or not to show the colored "circle" around a mission marker.
	DMS_MarkerText_ShowMissionPrefix	= false;						// Whether or not to place a prefix before the mission marker text. Enable this if your players get confused by the marker names :P
	DMS_MarkerText_MissionPrefix		= "";				// The text displayed before the mission name in the mission marker.
	DMS_MarkerText_ShowAICount			= false;					// Whether or not to display the number of remaining AI in the marker name.
	DMS_MarkerText_ShowAICount_Static	= false;						// Whether or not to display the number of remaining AI in the marker name for STATIC missions.
	DMS_MarkerText_AIName				= "Bugs";					// What the AI will be called in the map marker. For example, the marker text can show: "Car Dealer (3 Units remaining)"
	DMS_MarkerPosRandomization			= false;					// Randomize the position of the circle marker of a mission
	DMS_MarkerPosRandomRadius			= [25,100];					// Minimum/Maximum distance that the circle marker position will be randomized | DEFAULT: 0 meters to 200 meters
	DMS_RandomMarkerBrush				= "Cross";					// See: https://community.bistudio.com/wiki/setMarkerBrush
	DMS_MissionMarkerWinDot				= false;						// Keep the mission marker dot with a "win" message after mission is over
	DMS_MissionMarkerLoseDot			= false;					// Keep the mission marker dot with a "lose" message after mission is over
	DMS_MissionMarkerWinDot_Type		= "mil_end";				// The marker type to show when a mission is completed. Refer to: https://community.bistudio.com/wiki/cfgMarkers
	DMS_MissionMarkerLoseDot_Type		= "KIA";					// The marker type to show when a mission fails. Refer to: https://community.bistudio.com/wiki/cfgMarkers
	DMS_MissionMarkerWinDotTime			= 30;						// How many seconds the "win" mission dot will remain on the map
	DMS_MissionMarkerLoseDotTime		= 30;						// How many seconds the "lose" mission dot will remain on the map
	DMS_MissionMarkerWinDotColor		= "ColorBlue";				// The color of the "win" marker dot
	DMS_MissionMarkerLoseDotColor		= "ColorRed";				// The color of the "lose" marker dot
	/*Mission Marker settings*/

	/*Mission Cleanup settings*/
	DMS_CompletedMissionCleanup			= true;						// Cleanup mission-spawned buildings and AI bodies after some time
	DMS_CompletedMissionCleanupTime		= 900;						// Minimum time until mission-spawned buildings and AI are cleaned up
	DMS_CleanUp_PlayerNearLimit			= 20;						// Cleanup of an object is aborted if a player is this many meters close to the object
	DMS_AIVehCleanUpTime				= 300;						// Time until a destroyed AI vehicle is cleaned up.
	/*Mission Cleanup settings*/

	/*Mission spawn location settings*/
	DMS_UsePredefinedMissionLocations	= true;					// Whether or not to use a list of pre-defined mission locations instead before attempting to find a random (valid) position. The positions will still be checked for validity. If none of the provided positions are valid, a random one will be generated.
	DMS_PredefinedMissionLocations = 	[//https://forums.bohemia.net/forums/topic/230769-dms-usepredefinedmissionlocations/
											[13462.4,11873.2,0],
											[13068.7,7555.76,0],
											[9407.36,7540.82,0],
											[8910.38,10916.1,0],
											[8097.72,13341.8,-1.785],
											[8327.62,11972,-7.04968],
											[8478.82,7838.88,4.87589],
											[11075.6,11498,0.0337219],
											[14356.6,9601.54,2.30219],
											[10484.4,7936.51,0.759659],
											[7358.33,7408.83,0.320705],
											[8569.81,10627.5,-1.25919],
											[6678.04,12385.5,0.440796],
											[9886.84,9427.06,-0.863281]
										];

	DMS_PredefinedMissionLocations_WEIGHTED = 	[];
	DMS_ThrottleBlacklists				= true;						// Whether or not to "throttle" the blacklist distance parameters in DMS_fnc_FindSafePos. This will reduce the values of the minimum
																		//distances for some of the below parameters if several attempts have been made, but a suitable position was not yet found. This
																		//should help with server performance drops when spawning a mission, as DMS_fnc_findSafePos is the most resource-intensive function.
	DMS_AttemptsUntilThrottle			= 15;						// How many attempts until the parameters are throttled.
	DMS_ThrottleCoefficient				= 0.9;						// How much the parameters are throttled. The parameters are multiplied by the coefficient, so 0.9 means 90% of whatever the parameter was.
	DMS_MinThrottledDistance			= 500;						// The minimum distance to which it will throttle. If the throttled value is less than this value, then this value is used instead.
	DMS_PlayerNearBlacklist				= 500;						// Missions won't spawn in a position this many meters close to a player
	DMS_SpawnZoneNearBlacklist			= 500;						// Missions won't spawn in a position this many meters close to a spawn zone
	DMS_TraderZoneNearBlacklist			= 500;						// Missions won't spawn in a position this many meters close to a trader zone
	DMS_MissionNearBlacklist			= 2500;						// Missions won't spawn in a position this many meters close to another mission
	DMS_WaterNearBlacklist				= 500;						// Missions won't spawn in a position this many meters close to water
	DMS_TerritoryNearBlacklist			= 150;						// Missions won't spawn in a position this many meters close to a territory flag. This is a resource intensive check, don't set this value too high!
	DMS_MixerNearBlacklist				= 500;						// Missions won't spawn in a position this many meters close to a concrete mixer
	DMS_ContaminatedZoneNearBlacklist	= 100;						// Missions won't spawn in a position this many meters close to a contaminated zone
	DMS_MinSurfaceNormal				= 0.80;						// Missions won't spawn in a position where its surfaceNormal is less than this amount. The lower the value, the steeper the location. Greater values means flatter locations. Values can range from 0-1, with 0 being sideways, and 1 being perfectly flat. For reference: SurfaceNormal of about 0.7 is when you are forced to walk up a surface. If you want to convert surfaceNormal to degrees, use the arc-cosine of the surfaceNormal. 0.9 is about 25 degrees. Google "(arccos 0.9) in degrees"
	DMS_MinDistFromWestBorder			= 16750;						// Missions won't spawn in a position this many meters close to the western map border.
	DMS_MinDistFromEastBorder			= 16750;						// Missions won't spawn in a position this many meters close to the easter map border.
	DMS_MinDistFromSouthBorder			= 7500;						// Missions won't spawn in a position this many meters close to the southern map border.
	DMS_MinDistFromNorthBorder			= 7500;						// Missions won't spawn in a position this many meters close to the northern map border.
	DMS_SpawnZoneMarkerTypes =			[];
	DMS_TraderZoneMarkerTypes =			[];
	DMS_MixerMarkerTypes =				[];
	DMS_ContaminatedZoneMarkerTypes =	[];
	/*Mission spawn location settings*/

	DMS_MinWaterDepth					= 20;						// Minimum depth of water that an underwater mission can spawn at.

	/*Crate/Box settings*/
	DMS_HideBox							= true;					// "Hide" the box from being visible by players until the mission is completed.
	DMS_EnableBoxMoving					= false;						// Whether or not to allow the box to move and/or be lifted by choppers.
	DMS_SpawnBoxSmoke					= true;						// Spawn a smoke grenade on mission box upon misson completion during daytime
	DMS_DefaultSmokeClassname 			= "SmokeShellRed";		// Classname of the smoke you want to spawn.
	DMS_SpawnBoxIRGrenade				= true;						// Spawn an IR grenade on mission box upon misson completion during nighttime
	/*Crate/Box settings*/

	/*Mine settings*/
	DMS_SpawnMinefieldForEveryMission	= false;					// Whether or not to spawn a minefield for every dynamic mission.
	DMS_SpawnMinesAroundMissions		= false;						// Whether or not to spawn mines around AI missions that have them.
	DMS_despawnMines_onCompletion		= true;						// Despawn mines spawned around missions when the mission is completed
	DMS_MineInfo_easy					= [5,50];					// Mine info for "easy" missions. This will spawn 5 mines within a 50m radius.
	DMS_MineInfo_moderate				= [10,50];					// Mine info for "moderate" missions. This will spawn 10 mines within a 50m radius.
	DMS_MineInfo_difficult				= [15,75];					// Mine info for "difficult" missions. This will spawn 15 mines within a 75m radius.
	DMS_MineInfo_hardcore				= [25,100];					// Mine info for "hardcore" missions. This will spawn 25 mines within a 100m radius.
	DMS_SpawnMineWarningSigns			= false;						// Whether or not to spawn mine warning signs around a minefield.
	DMS_BulletProofMines				= true;						// Whether or not you want to make the mines bulletproof. Prevents players from being able to shoot the mines and creating explosions.
	/*Mine settings*/

	DMS_MinPlayerCount					= 0; 						// Minimum number of players until mission start
	DMS_MinServerFPS					= 5; 						// Minimum server FPS for missions to start

	/*Mission notification settings*/
	DMS_PlayerNotificationTypes =		["ExileToasts"];

		/*Exile Toasts Notification Settings*/
	DMS_ExileToasts_Title_Size			= 22;						// Size for Client Exile Toasts  mission titles.
	DMS_ExileToasts_Title_Font			= "puristaMedium";			// Font for Client Exile Toasts  mission titles.
	DMS_ExileToasts_Message_Color		= "#FFFFFF";				// Exile Toasts color for "ExileToast" client notification type.
	DMS_ExileToasts_Message_Size		= 19;						// Exile Toasts size for "ExileToast" client notification type.
	DMS_ExileToasts_Message_Font		= "PuristaLight";			// Exile Toasts font for "ExileToast" client notification type.
		/*Exile Toasts Notification Settings*/

		/*Dynamic Text Notification Settings*/
	DMS_dynamicText_Duration			= 7;						// Number of seconds that the message will last on the screen.
	DMS_dynamicText_FadeTime			= 1.5;						// Number of seconds that the message will fade in/out (does not affect duration).
	DMS_dynamicText_Title_Size			= 1.2;						// Size for Client Dynamic Text mission titles.
	DMS_dynamicText_Title_Font			= "puristaMedium";			// Font for Client Dynamic Text mission titles.
	DMS_dynamicText_Message_Color		= "#FFFFFF";				// Dynamic Text color for "dynamicTextRequest" client notification type.
	DMS_dynamicText_Message_Size		= 0.65;						// Dynamic Text size for "dynamicTextRequest" client notification type.
	DMS_dynamicText_Message_Font		= "OrbitronMedium";			// Dynamic Text font for "dynamicTextRequest" client notification type.
		/*Dynamic Text Notification Settings*/

		/*Standard Hint Notification Settings*/
	DMS_standardHint_Title_Size			= 2;						// Size for Client Standard Hint mission titles.
	DMS_standardHint_Title_Font			= "puristaMedium";			// Font for Client Standard Hint mission titles.
	DMS_standardHint_Message_Color		= "#FFFFFF";				// Standard Hint color for "standardHintRequest" client notification type.
	DMS_standardHint_Message_Size		= 1;						// Standard Hint size for "standardHintRequest" client notification type.
	DMS_standardHint_Message_Font		= "OrbitronMedium";			// Standard Hint font for "standardHintRequest" client notification type.
		/*Standard Hint Notification Settings*/

		/*Text Tiles Notification Settings*/
	DMS_textTiles_Duration				= 7;						// Number of seconds that the message will last on the screen.
	DMS_textTiles_FadeTime				= 1.5;						// Number of seconds that the message will fade in/out (does not affect duration).
	DMS_textTiles_Title_Size			= 2.3;						// Size for Client Text Tiles mission titles.
	DMS_textTiles_Title_Font			= "puristaMedium";			// Font for Client Text Tiles mission titles.
	DMS_textTiles_Message_Color			= "#FFFFFF";				// Text Tiles color for "textTilesRequest" client notification type.
	DMS_textTiles_Message_Size			= 1.25;						// Text Tiles size for "textTilesRequest" client notification type.
	DMS_textTiles_Message_Font			= "OrbitronMedium";			// Text Tiles font for "textTilesRequest" client notification type.
		/*Text Tiles Notification Settings*/

	/*Mission notification settings*/

	DMS_RandomBanditMissionsOnStart		= 3;
	DMS_BanditMissionTypes =			["DMS_1","DMS_2","DMS_3"];


	DMS_StaticMissionTypes =			[];

	DMS_SpecialMissions =				[];

	DMS_BasesToImportOnServerStart = 	[];

	DMS_BanditMissionsOnServerStart =	[];

	DMS_StaticMissionsOnServerStart =	[];



	DMS_findSafePosBlacklist =			[								// This list defines areas where missions WILL NOT spawn. For position blacklist info refer to: http://www.exilemod.com/topic/61-dms-defents-mission-system/?do=findComment&comment=31190
											// There are examples in the altis map config (it blacklists the salt flats) and in the tavi/taviana map configs.

											//[[2350,4680],100]		// This random example blacklists any position within 100 meters of coordinates "[2350,4680]"
										];
/* Mission System Settings */


/* AI Settings */
	DMS_AI_Classname					= "WBK_SpecialZombie_Smasher_1";	// Since some of you wanted this...

	DMS_AI_NamingType					= 2;
	DMS_AI_FirstNames =					[ 
										#include "First.hpp"
										];
	DMS_AI_LastNames =					[
										#include "Last.hpp"
										];

	DMS_Show_Kill_Poptabs_Notification	= true;						// Whether or not to show the poptabs gained/lost message on the player's screen when killing an AI. (It will still change the player's money, it just won't show the "Money Received" notification)
	DMS_Show_Kill_Respect_Notification	= true;						// Whether or not to show the "Frag Message" on the player's screen when killing an AI. (It will still change the player's respect, it just won't show the "AI Killed" frag message)
	DMS_Show_Kill_Rank_Notification		= true;
	DMS_Show_Party_Kill_Notification	= true;						// Whether or not to show in chat when a party member kills an AI.

	DMS_Spawn_AI_With_Money				= true;						// Whether or not to spawn AI with money that can be looted from the body.
	DMS_AIMoney_PopulationMultiplier	= 5;						// This determines how much EXTRA money an AI will have on his body. For example, setting this to 5 and having a server population of 30 means the AI will have an extra 150 poptabs on the body. Set to 0 to disable.

	DMS_GiveMoneyToPlayer_OnAIKill		= true;						// Whether or not to give money directly to players when they kill AI (old method of giving money).
	DMS_GiveRespectToPlayer_OnAIKill	= true;						// Whether or not to give respect to players when they kill AI.

	DMS_Bandit_Soldier_MoneyGain		= 125;						// The amount of Poptabs gained for killing a bandit soldier
	DMS_Bandit_Soldier_RepGain			= 125;						// The amount of Respect gained for killing a bandit soldier
	DMS_Bandit_Soldier_RankGain			= 15;
	DMS_Bandit_Soldier_SpawnMoney		= 175;						// The amount of Poptabs carried by a bandit soldier

	DMS_Bandit_Static_MoneyGain			= 125;						// The amount of Poptabs gained for killing a bandit static gunner
	DMS_Bandit_Static_RepGain			= 125;						// The amount of Respect gained for killing a bandit static gunner
	DMS_Bandit_Static_RankGain			= 30;
	DMS_Bandit_Static_SpawnMoney		= 175;						// The amount of Poptabs carried by a bandit static gunner

	DMS_Bandit_Vehicle_MoneyGain		= 100;						// The amount of Poptabs gained for killing a bandit vehicle crew member
	DMS_Bandit_Vehicle_RepGain			= 25;						// The amount of Respect gained for killing a bandit vehicle crew member
	DMS_Bandit_Vehicle_RankGain			= 50;
	DMS_Bandit_Vehicle_SpawnMoney		= 100;						// The amount of Poptabs carried by a bandit vehicle crew member

/* DonkeyPunchDMS Custom Settings for Hero AI*/
	DMS_Hero_Soldier_MoneyGain			= -1875;						// The amount of Poptabs gained for killing a hero soldier
	DMS_Hero_Soldier_RepGain			= -250;						// The amount of Respect gained for killing a hero soldier
	DMS_Hero_Soldier_RankGain			= -30;
	DMS_Hero_Soldier_SpawnMoney			= 575;						// The amount of Poptabs carried by a hero soldier

	DMS_Hero_Static_MoneyGain			= -1875;						// The amount of Poptabs gained for killing a hero static gunner
	DMS_Hero_Static_RepGain				= -500;						// The amount of Respect gained for killing a hero static gunner
	DMS_Hero_Static_RankGain			= -60;
	DMS_Hero_Static_SpawnMoney			= 475;						// The amount of Poptabs carried by a hero static gunner

	DMS_Hero_Vehicle_MoneyGain			= -1875;						// The amount of Poptabs gained for killing a hero vehicle crew member
	DMS_Hero_Vehicle_RepGain			= -750;						// The amount of Respect gained for killing a hero vehicle crew member
	DMS_Hero_Vehicle_RankGain			= -100;
	DMS_Hero_Vehicle_SpawnMoney			= 200;						// The amount of Poptabs carried by a hero vehicle crew member
/* DonkeyPunchDMS Custom Settings for Survivor AI*/
	DMS_Survivor_Soldier_MoneyGain		= -1875;						// The amount of Poptabs gained for killing a Survivor soldier
	DMS_Survivor_Soldier_RepGain		= -500;						// The amount of Respect gained for killing a Survivor soldier
	DMS_Survivor_Soldier_RankGain		= -250;
	DMS_Survivor_Soldier_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor soldier

	DMS_Survivor_Static_MoneyGain		= -1875;						// The amount of Poptabs gained for killing a Survivor static gunner
	DMS_Survivor_Static_RepGain			= -500;						// The amount of Respect gained for killing a Survivor static gunner
	DMS_Survivor_Static_RankGain		= -400;
	DMS_Survivor_Static_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor static gunner

	DMS_Survivor_Vehicle_MoneyGain		= -1875;						// The amount of Poptabs gained for killing a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RepGain		= -500;						// The amount of Respect gained for killing a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RankGain		= -600;
	DMS_Survivor_Vehicle_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor vehicle crew member

	DMS_AIKill_DistanceBonusMinDistance	= 100;						// Minimum distance from the player to the AI to apply the distance bonus.
	DMS_AIKill_DistanceBonusCoefficient	= 0.05;						// If the distance from the player to the killed unit is more than "DMS_AIKill_DistanceBonusMinDistance" meters then the player gets a respect bonus equivalent to the distance multiplied by this coefficient. For example, killing an AI from 400 meters will give 100 extra respect (when the coefficient is 0.25). Set to 0 to disable the bonus. This bonus will not be applied if there isn't a regular AI kill bonus.

	DMS_Diff_RepOrTabs_on_roadkill 		= true;						// Whether or not you want to use different values for giving respect/poptabs when you run an AI over. Default values are NEGATIVE. This means player will LOSE respect or poptabs.
	DMS_Bandit_Soldier_RoadkillMoney	= 0;						// The amount of Poptabs gained/lost for running over a bandit soldier
	DMS_Bandit_Soldier_RoadkillRep		= 0;						// The amount of Respect gained/lost for running over a bandit soldier
	DMS_Bandit_Soldier_RoadkillRank		= 0;
	DMS_Bandit_Static_RoadkillMoney		= 0;						// The amount of Poptabs gained/lost for running over a bandit static gunner
	DMS_Bandit_Static_RoadkillRep		= 0;						// The amount of Respect gained/lost for running over a bandit static gunner
	DMS_Bandit_Static_RoadkillRank		= 0;
	DMS_Bandit_Vehicle_RoadkillMoney	= 0;						// The amount of Poptabs gained/lost for running over a bandit vehicle crew member
	DMS_Bandit_Vehicle_RoadkillRep		= 0;						// The amount of Respect gained/lost for running over a bandit vehicle crew member
	DMS_Bandit_Vehicle_RoadkillRank		= 0;
/* DonkeyPunchDMS Custom RoadKill Settings for Hero AI*/
	DMS_Hero_Soldier_RoadkillMoney		= 0;						// The amount of Poptabs gained/lost for running over a hero soldier
	DMS_Hero_Soldier_RoadkillRep		= -750;						// The amount of Respect gained/lost for running over a hero soldier
	DMS_Hero_Soldier_RoadkillRank		= 0;
	DMS_Hero_Static_RoadkillMoney		= 0;						// The amount of Poptabs gained/lost for running over a hero static gunner
	DMS_Hero_Static_RoadkillRep			= -750;						// The amount of Respect gained/lost for running over a hero static gunner
	DMS_Hero_Static_RoadkillRank		= 0;
	DMS_Hero_Vehicle_RoadkillMoney		= 20;						// The amount of Poptabs gained/lost for running over a hero vehicle crew member
	DMS_Hero_Vehicle_RoadkillRep		= -250;						// The amount of Respect gained/lost for running over a hero vehicle crew member
	DMS_Hero_Vehicle_RoadkillRank		= -100;
/* DonkeyPunchDMS Custom Roadkill Settings for Survivor AI*/
	DMS_Survivor_Soldier_RoadkillMoney	= -200;						// The amount of Poptabs gained/lost for running over a Survivor soldier
	DMS_Survivor_Soldier_RoadkillRep	= -200;						// The amount of Respect gained/lost for running over a Survivor soldier
	DMS_Survivor_Soldier_RoadkillRank	= -200;
	DMS_Survivor_Static_RoadkillMoney	= -200;						// The amount of Poptabs gained/lost for running over a Survivor static gunner
	DMS_Survivor_Static_RoadkillRep		= -200;						// The amount of Respect gained/lost for running over a Survivor static gunner
	DMS_Survivor_Static_RoadkillRank	= -200;
	DMS_Survivor_Vehicle_RoadkillMoney	= -500;						// The amount of Poptabs gained/lost for running over a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RoadkillRep	= -100;						// The amount of Respect gained/lost for running over a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RoadkillRank	= -100;

	DMS_banditSide						= EAST;						// The side (team) that AI Bandits will spawn on
/* DonkeyPunchDMS Custom Side Factions */
	DMS_heroSide						= WEST;						// The side (team) that AI Heros will spawn on
	DMS_survivorSide					= WEST;						// The side (team) that AI Survivor will spawn on

	DMS_clear_AI_body					= false;					// Clear AI body as soon as they die
	DMS_clear_AI_body_chance			= 0;						// Percentage chance that AI bodies will be cleared when they die
	DMS_ai_disable_ramming_damage 		= false;						// Disables damage due to ramming into AI. !!!NOTE: THIS WILL NOT BE RELIABLE WITH "DMS_ai_offload_to_client"!!!
	DMS_remove_roadkill					= true; 					// Remove gear from AI bodies that are roadkilled
	DMS_remove_roadkill_chance			= 99;						// Percentage chance that roadkilled AI bodies will be deleted
	DMS_explode_onRoadkill				= true;						// Whether or not to spawn an explosion when an AI gets run over. It will likely take out the 2 front wheels. Should help mitigate the ineffective AI vs. striders issue ;)
	DMS_RemoveNVG						= false;					// Remove NVGs from AI bodies

	DMS_MaxAIDistance					= 500;						// The maximum distance an AI unit can be from a mission before he is killed. Helps with AI running away and forcing the mission to keep running. Set to 0 if you don't want it.
	DMS_AIDistanceCheckFrequency		= 60;						// How often to check within DMS_fnc_TargetsKilled whether or not the AI is out of the maximum radius. Lower values increase frequency and increase server load, greater values decrease frequency and may cause longer delays for "runaway" AI.

	DMS_ai_offload_to_client			= true;						// Offload spawned AI groups to random clients. Helps with server performance.
	DMS_ai_offload_Only_DMS_AI			= true;						// Don't set this to false unless you know what you're doing.
	DMS_ai_offload_notifyClient			= false;					// Notify the client when AI has been offloaded to the client.

	DMS_ai_allowFreezing				= false;						// Whether or not to "freeze" AI that are a certain distance away from players (and therefore inactive).
	DMS_ai_freeze_Only_DMS_AI			= false;					// Whether or not to "freeze" AI that are not spawned by DMS.
	DMS_ai_freezingDistance				= 3500;						// If there are no players within this distance of the leader of an AI group, then the AI group will be "frozen".
	DMS_ai_unfreezingDistance			= 3500;						// If there are players within this distance of the leader of an AI group, then the AI group will be "un-frozen".
	DMS_ai_offloadOnUnfreeze			= true;						// Whether or not to offload AI to clients once they have been "un-frozen". NOTE: This config will be ignored if "DMS_ai_offload_to_client" is set to false.
	DMS_ai_freezeCheckingDelay			= 15;						// How often (in seconds) DMS will check whether to freeze/un-freeze AI.
	DMS_ai_freezeOnSpawn				= true;						// Whether or not to freeze an AI group when initially spawned.

	DMS_ai_share_info					= true;					// Share info about killer
	DMS_ai_share_info_distance			= 3750;						// The distance killer's info will be shared to other AI

	DMS_ai_nighttime_accessory_chance	= 75;						// Percentage chance that AI will have a flashlight or laser pointer on their guns if spawned during nighttime
	DMS_ai_enable_water_equipment		= true;						// Enable/disable overriding default weapons of an AI if it spawns on/in water

	// https://community.bistudio.com/wiki/AI_Sub-skills#general
	DMS_ai_skill_static					= [["aimingAccuracy",0.68],["aimingShake",0.50],["aimingSpeed",0.90],["spotDistance",0.90],["spotTime",0.90],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hardcore
	DMS_ai_skill_easy					= [["aimingAccuracy",0.68],["aimingShake",0.50],["aimingSpeed",0.90],["spotDistance",0.90],["spotTime",0.90],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hardcore
	DMS_ai_skill_moderate				= [["aimingAccuracy",0.68],["aimingShake",0.50],["aimingSpeed",0.90],["spotDistance",0.90],["spotTime",0.90],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hardcore
	DMS_ai_skill_difficult				= [["aimingAccuracy",0.68],["aimingShake",0.50],["aimingSpeed",0.90],["spotDistance",0.90],["spotTime",0.90],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hardcore
	DMS_ai_skill_hardcore				= [["aimingAccuracy",0.68],["aimingShake",0.50],["aimingSpeed",0.90],["spotDistance",0.90],["spotTime",0.90],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hardcore
	DMS_ai_skill_random					= ["hardcore"];	// Skill frequencies for "random" AI skills | Default: 10% hardcore, 30% difficult, 40% moderate, and 20% easy
	DMS_ai_skill_randomDifficult		= ["hardcore"];	// 60% chance for "difficult", 40% chance for "hardcore" AI.
	DMS_ai_skill_randomEasy				= ["hardcore"];					// 60% chance for "easy", 40% chance for "moderate" AI.
	DMS_ai_skill_randomIntermediate		= ["hardcore"];	// 60% chance for "moderate", 40% chance for "difficult" AI.
	DMS_AI_WP_Radius_easy				= 0;						// Waypoint radius for "easy" AI.
	DMS_AI_WP_Radius_moderate			= 0;						// Waypoint radius for "moderate" AI.
	DMS_AI_WP_Radius_difficult			= 0;						// Waypoint radius for "difficult" AI.
	DMS_AI_WP_Radius_hardcore			= 99;						// Waypoint radius for "hardcore" AI.
	DMS_AI_AimCoef_easy					= 0.65;						// "Custom Aim Coefficient" (weapon sway multiplier) for "easy" AI
	DMS_AI_AimCoef_moderate				= 0.65;						// "Custom Aim Coefficient" (weapon sway multiplier) for "moderate" AI
	DMS_AI_AimCoef_difficult			= 0.65;						// "Custom Aim Coefficient" (weapon sway multiplier) for "difficult" AI
	DMS_AI_AimCoef_hardcore				= 0.65;						// "Custom Aim Coefficient" (weapon sway multiplier) for "hardcore" AI
	DMS_AI_EnableStamina_easy			= false;						// Whether or not to keep the stamina system for "easy" AI.
	DMS_AI_EnableStamina_moderate		= false;						// Whether or not to keep the stamina system for "moderate" AI.
	DMS_AI_EnableStamina_difficult		= false;					// Whether or not to keep the stamina system for "difficult" AI.
	DMS_AI_EnableStamina_hardcore		= false;					// Whether or not to keep the stamina system for "hardcore" AI.
	DMS_AI_WP_Radius_base				= 5;						// Waypoint radius for AI in bases.
	DMS_AI_WP_Radius_heli				= 500;						// Waypoint radius for AI in helis.

	DMS_AI_destroyVehicleChance			= 75;						// Percent chance that an AI vehicle will be destroyed after the AI have been killed. Set to 100 for always, or 0 for never.

	DMS_AI_destroyStaticWeapon			= true;						// Whether or not to destroy static HMGs after AI death.
	DMS_AI_destroyStaticWeapon_chance	= 95;						// Percent chance that a static weapon will be destroyed (only applied if "DMS_AI_destroyStaticWeapon" is true)

	DMS_static_weapons =				[];

	DMS_ai_default_items =				[];

	DMS_ai_BipodList =					[];

	//Assault Class
	DMS_assault_weps =					[];
	DMS_assault_pistols =				[];
	DMS_assault_optics =				[];
	DMS_assault_optic_chance			= 0;						// Percentage chance that an Assault Class AI will get an optic
	DMS_assault_bipod_chance			= 0;						// Percentage chance that an Assault Class AI will get a bipod
	DMS_assault_suppressor_chance		= 0;						// Percentage chance that an Assault Class AI will get a suppressor
	DMS_assault_items =					[];
	DMS_assault_equipment =				[];
	DMS_assault_RandItemCount =			0;							// How many random items to add to the AI's inventory.
	DMS_assault_RandItems =				[];
	DMS_assault_helmets	=				[];
	DMS_assault_clothes	=				[];
	DMS_assault_vests =					[];
	DMS_assault_backpacks =				[];
	//Machine Gun Class
	DMS_MG_weps	=						[];
	DMS_MG_pistols =					[];
	DMS_MG_optics =						[];
	DMS_MG_optic_chance					= 0;						// Percentage chance that an MG Class AI will get an optic
	DMS_MG_bipod_chance					= 0;						// Percentage chance that an MG Class AI will get a bipod
	DMS_MG_suppressor_chance			= 0;						// Percentage chance that an MG Class AI will get a suppressor
	DMS_MG_items =						[];
	DMS_MG_equipment =					[];
	DMS_MG_RandItemCount =				0;							// How many random items to add to the AI's inventory.
	DMS_MG_RandItems =					[];
	DMS_MG_helmets =					[];
	DMS_MG_clothes =					[];
	DMS_MG_vests =						[];
	DMS_MG_backpacks =					[];
	//Sniper Class
	DMS_sniper_weps =					[];
	DMS_sniper_pistols =				[];
	DMS_sniper_optics =					[];
	DMS_sniper_optic_chance				= 0;						// Percentage chance that a Sniper Class AI will get an optic
	DMS_sniper_bipod_chance				= 0;						// Percentage chance that a Sniper Class AI will get a bipod
	DMS_sniper_suppressor_chance		= 0;						// Percentage chance that a Sniper Class AI will get a suppressor
	DMS_sniper_items =					[];
	DMS_sniper_equipment =				[];
	DMS_sniper_RandItemCount =			8;							// How many random items to add to the AI's inventory.
	DMS_sniper_RandItems =				[];
	DMS_sniper_helmets =				[];
	DMS_sniper_clothes =				[];
	DMS_sniper_vests =					[];
	DMS_sniper_backpacks =				[];
	DMS_ai_SupportedClasses =			["random","assault","MG","sniper"];
	DMS_ai_SupportedRandomClasses = 	["random","assault","MG","sniper"];
	DMS_random_AI =						["random","assault","MG","sniper"];
	DMS_random_non_assault_AI =			["random","assault","MG","sniper"];
	DMS_random_non_MG_AI =				["random","assault","MG","sniper"];
	DMS_random_non_sniper_AI =			["random","assault","MG","sniper"];
	DMS_ai_use_launchers				= true;						// Enable/disable spawning an AI in a group with a launcher
	DMS_ai_launchers_per_group			= 0;						// How many units per AI group can get a launcher.
	DMS_ai_use_launchers_chance			= 0;						// Percentage chance to actually spawn the launcher (per-unit). With "DMS_ai_launchers_per_group" set to 2, and "DMS_ai_use_launchers_chance" set to 50, there will be an average of 1 launcher per group.
	DMS_AI_launcher_ammo_count			= 0;						// How many rockets an AI will get with its launcher
	DMS_ai_remove_launchers				= true;						// Remove rocket launchers on AI death

	DMS_AI_wep_launchers_AT =			[];
	DMS_AI_wep_launchers_AA =			[];

	DMS_RHeli_Height					= 100;						// Altitude of the heli when flying to drop point.
	DMS_RHeli_MinDistFromDrop			= 1000;						// Minimum distance for the reinforcement heli to spawn from drop point.
	DMS_RHeli_MaxDistFromDrop			= 1000;						// Maximum distance for the reinforcement heli to spawn from drop point.
	DMS_RHeli_MinDistFromPlayers		= 1500;						// Minimum distance for the reinforcement heli to spawn from players.

/* AI Settings */


/* Loot Settings */
	DMS_GodmodeCrates 					= true;
	DMS_MinimumMagCount					= 0;						// Minimum number of magazines for weapons.
	DMS_MaximumMagCount					= 0;						// Maximum number of magazines for weapons.
	DMS_CrateCase_Sniper =				[
										[]
										];
	DMS_BoxWeapons =					[];
	DMS_BoxFood =						[];
	DMS_BoxDrinks =						[];
	DMS_BoxMeds =						[];
	DMS_BoxSurvivalSupplies	=			[]; + DMS_BoxFood + DMS_BoxDrinks + DMS_BoxMeds;
	DMS_Box_BaseParts_Wood =			[];
	DMS_Box_BaseParts_Concrete =		[];
	DMS_BoxBaseParts =					[
										
										] + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Concrete;
	DMS_BoxCraftingMaterials =			[
										[]
										];
	DMS_BoxTools =						[
										[]
										];
	DMS_BoxBuildingSupplies	=			[
										[]
										] + DMS_BoxBaseParts + DMS_BoxCraftingMaterials + DMS_BoxCraftingMaterials + DMS_BoxTools;
	DMS_BoxOptics =						[
										[]
										];
	DMS_BoxBackpacks =					[];
	DMS_BoxItems						= DMS_BoxSurvivalSupplies+DMS_BoxBuildingSupplies+DMS_BoxOptics;	// Random "items" can spawn optics, survival supplies, or building supplies

	DMS_Box_BreachingCharges =			[
										[]
										];

	DMS_RareLoot						= true;						// Potential chance to spawn rare loot in any crate.
	DMS_RareLootAmount					= 1;						// How many rare loot items to add.
	DMS_RareLootList =					[];
	DMS_RareLootChance					= 5;						// Percentage Chance to spawn rare loot in any crate | Default: 10%

	// Vehicles
	DMS_ArmedVehicles =					[];

	DMS_MilitaryVehicles =				[];

	DMS_TransportTrucks =				[];

	DMS_RefuelTrucks =					[];

	DMS_CivilianVehicles =				[];

	DMS_TransportHelis =				[];

	DMS_ReinforcementHelis =			[] + DMS_TransportHelis;

	DMS_CarThievesVehicles =			[] + DMS_MilitaryVehicles + DMS_TransportTrucks;
/* Loot Settings */


DMS_ConfigLoaded = true;
