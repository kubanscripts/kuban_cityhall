QBCore = exports['qb-core']:GetCoreObject()

-- ██╗    ██╗███████╗██████╗ ██╗  ██╗ ██████╗  ██████╗ ██╗  ██╗
-- ██║    ██║██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔═══██╗██║ ██╔╝
-- ██║ █╗ ██║█████╗  ██████╔╝███████║██║   ██║██║   ██║█████╔╝ 
-- ██║███╗██║██╔══╝  ██╔══██╗██╔══██║██║   ██║██║   ██║██╔═██╗ 
-- ╚███╔███╔╝███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║  ██╗
--  ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝
                                                            
local webhookUrl = 'YOUR_WEBHOOK_HERE'

AddEventHandler('QBCore:Server:PlayerLoaded', function(playerId)
    local Player = QBCore.Functions.GetPlayer(playerId)
    if Player then
        local licenses = Player.PlayerData.metadata['licenses'] or {}
        Player.Functions.SetMetaData('licenses', licenses)
    end
end)

local function sendToDiscord(title, description, color)
    local payload = {
        embeds = {
            {
                title = title,
                description = description,
                color = color,
                footer = {
                    text = os.date('%Y-%m-%d %H:%M:%S') 
                }
            }
        }
    }
    PerformHttpRequest(webhookUrl, function(err, text, headers) end, 'POST', json.encode(payload), {['Content-Type'] = 'application/json'})
end

RegisterNetEvent('cityhall:setJob', function(job)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.SetJob(job, 0) 
        local message = ('**Player:** %s\n**ID:** %d\n**Action:** Assigned Job\n**Job:** %s'):format(Player.PlayerData.name, src, QBCore.Shared.Jobs[job].label)
        sendToDiscord('Job Assignment', message, 3066993) 
    else
        print('Error: Player not found') 
    end
end)

RegisterNetEvent('cityhall:purchaseLicense', function(licenseType)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        local hasLicense = Player.PlayerData.metadata['licenses'] and Player.PlayerData.metadata['licenses'][licenseType] or false
        if hasLicense then
            TriggerClientEvent('QBCore:Notify', src, 'You already have this license!', 'error')
        else
            local price = Config.Licenses[licenseType].price
            local playerMoney = Player.Functions.GetMoney('bank')
            if playerMoney >= price then
                Player.Functions.RemoveMoney('bank', price)
                Player.PlayerData.metadata['licenses'] = Player.PlayerData.metadata['licenses'] or {}
                Player.PlayerData.metadata['licenses'][licenseType] = true
                Player.Functions.SetMetaData('licenses', Player.PlayerData.metadata['licenses'])
                TriggerClientEvent('cityhall:licensePurchased', src, licenseType)
                TriggerClientEvent('QBCore:Notify', src, ('You have purchased a %s!'):format(Config.Licenses[licenseType].label), 'success')
                local message = ('**Player:** %s\n**ID:** %d\n**Action:** Purchased License\n**License:** %s\n**Price:** $%d'):format(Player.PlayerData.name, src, Config.Licenses[licenseType].label, price)
                sendToDiscord('License Purchase', message, 3447003) 
            else
                local shortfall = price - playerMoney
                TriggerClientEvent('QBCore:Notify', src, ('You need $%d more to purchase this license.'):format(shortfall), 'error')
            end
        end
    else
        print('Error: Player not found') 
    end
end)
