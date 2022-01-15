AntiNukeBlacklistedVehicles = { 
	{name = "cargoplane"},
	{name = "cerberus"},
	{name = "cerberus2"},
	{name = "cerberus3"},
	{name = "hauler2"},
	{name = "phantom2"},
	{name = "terbyte"},
	{name = "issi4"},
	{name = "issi5"},
	{name = "issi6"},
	{name = "akula"},
	{name = "annihilator"},
	{name = "buzzard"},
	{name = "hunter"},
	{name = "savage"},
	{name = "apc"},
	{name = "barrage"},
	{name = "chernobog"},
	{name = "halftVCACk"},
	{name = "khanjali"},
	{name = "minitank"},
	{name = "rhino"}, 
	{name = "scarab"},
	{name = "dump"},
	{name = "scarab2"},
	{name = "scarab3"},
	{name = "thruster"},
	{name = "trailersmall2"},
	{name = "oppressor"},
	{name = "oppressor2"},
	{name = "dominator4"},
	{name = "dominator5"},
	{name = "dominator6"},
	{name = "dukes2"},
	{name = "impaler2"},
	{name = "impaler3"},
	{name = "impaler4"},
	{name = "imperator"},
	{name = "imperator2"},
	{name = "imperator3"},
	{name = "bruiser"},
	{name = "bruiser2"},
	{name = "bruiser3"},
	{name = "brutus"},
	{name = "brutus2"},
	{name = "brutus3"},
	{name = "caVCACara"},
	{name = "dune4"},
	{name = "dune5"},
	{name = "insurgent"},
	{name = "insurgent3"},
	{name = "menacer"},
	{name = "nightshark"},
	{name = "technical"},
	{name = "technical2"},
	{name = "technical3"},
	{name = "zhaba"},
	{name = "avenger"},
	{name = "avenger2"},
	{name = "besra"},
	{name = "jet"},
	{name = "hydra"},
	{name = "strikeforce"},
	{name = "titan"},
	{name = "volatol"},
	{name = "limo2"},
	{name = "zr380"},
	{name = "zr3802"},
	{name = "zr3803"},
	{name = "deluxo"},
	{name = "vigilante"},
	{name = "boxville5"},
	{name = "kuruma2"},
	{name = "scramjet"},
}



AddEventHandler('entityCreating', function(id)
    local model = GetEntityModel(id)
    local eType = GetEntityType(id)
    local entID = NetworkGetNetworkIdFromEntity(id)
    local plyr = NetworkGetEntityOwner(id)
    local xPlayer = ESX.GetPlayerFromId(plyr)
    local hash = GetHashKey(id)

    if not DoesEntityExist(id) then
        return
    end

for i, objName in pairs(AntiNukeBlacklistedVehicles) do
    if model == GetHashKey(objName.name) then
        local xPlayer = ESX.GetPlayerFromId(src)
            TriggerClientEvent("FYAC:DeleteCars", tonumber(-1), entID)
        end 
    end
end)