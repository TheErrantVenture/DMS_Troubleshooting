/*
	Custom configs for Pandora
	By Dash Rendar
*/

DMS_findSafePosBlacklist append
[

];

DMS_PlayerNearBlacklist				= 50;
DMS_SpawnZoneNearBlacklist			= 1500;
DMS_TraderZoneNearBlacklist			= 3500;
DMS_MissionNearBlacklist			= 0;
DMS_WaterNearBlacklist				= 500;

DMS_MinSurfaceNormal				= 0.95;

DMS_MinDistFromWestBorder			= 12000;	// There's at least 2km of ocean from the west edge to the first bit of land.
DMS_MinDistFromEastBorder			= 12000;	// There's over 2km of ocean from the east edge to the first bit of land.
DMS_MinDistFromSouthBorder			= 12000;	// There's about 5km of ocean from the south edge to the first bit of land.
DMS_MinDistFromNorthBorder			= 12000;	// There's around 5km of ocean from the north edge to the first bit of land (including the island).

DMS_StaticMissionTypes append [];

DMS_BasesToImportOnServerStart append [];