local QBCore = exports['qb-core']:GetCoreObject()
RegisterNetEvent("kuban_cityhall:setJob", function(jobName)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.SetJob(jobName, 0)
        TriggerClientEvent("QBCore:Notify", src, "You are now a " .. jobName, "success")
    end
end)
