local QBCore = exports['qb-core']:GetCoreObject()
local cityhallCoords = Config.OpenLocation
local isInMarker = false

CreateThread(function()
    if Config.Blip.enabled then
        local blip = AddBlipForCoord(cityhallCoords.x, cityhallCoords.y, cityhallCoords.z)
        SetBlipSprite(blip, Config.Blip.sprite) 
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.Blip.scale) 
        SetBlipColour(blip, Config.Blip.color) 
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.name) 
        EndTextCommandSetBlipName(blip)
    end
end)


CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local distance = #(playerCoords - cityhallCoords)

        if distance < 10.0 then
            DrawMarker(Config.Marker.type, cityhallCoords.x, cityhallCoords.y, cityhallCoords.z - 0.98, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 0.5, Config.Marker.color.r, Config.Marker.color.g, Config.Marker.color.b, Config.Marker.color.a, false, false, 2, nil, nil, false)
            if distance < 2.0 then
                isInMarker = true
                QBCore.Functions.DrawText3D(cityhallCoords.x, cityhallCoords.y, cityhallCoords.z, "~g~[E]~w~ Open Cityhall")
                if IsControlJustPressed(0, 38) then
                    SetNuiFocus(true, true)
                    SendNUIMessage({
                        action = "open",
                        jobs = Config.Jobs.enabled and Config.Jobs.list or nil,
                        lawyers = Config.Lawyers.enabled and Config.Lawyers.list or nil,
                        police = Config.Police.enabled and Config.Police.list or nil,
                    })
                end
            else
                isInMarker = false
            end
        else
            Wait(500) 
        end
    end
end)

RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false, false)
    cb("ok")
end)

RegisterNUICallback("selectJob", function(data, cb)
    TriggerServerEvent("kuban_cityhall:setJob", data.job)
    SetNuiFocus(false, false)
    cb("ok")
end)
