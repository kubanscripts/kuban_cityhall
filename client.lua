local pedHandle = nil
local jobs = {}
local licenses = {}
local lawyers = {}
local policeLeadership = {}

local function spawnCityHallPed()
    if pedHandle and DoesEntityExist(pedHandle) then
        DeleteEntity(pedHandle)
    end

    local pedModel = joaat(Config.Ped.model)

    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Wait(100)
    end

    pedHandle = CreatePed(0, pedModel, Config.Ped.coords.x, Config.Ped.coords.y, Config.Ped.coords.z - 1.0, Config.Ped.heading, false, false)
    SetEntityInvincible(pedHandle, true)
    FreezeEntityPosition(pedHandle, true)
    SetBlockingOfNonTemporaryEvents(pedHandle, true)

    exports.ox_target:addLocalEntity(pedHandle, {
        {
            name = 'cityhall_ped',
            label = Config.Text.TargetLabel,
            icon = 'fas fa-comments',
            event = 'cityhall:openMenu'
        }
    })
end

local function createCityHallBlip()
    local blip = AddBlipForCoord(Config.Blip.coords.x, Config.Blip.coords.y, Config.Blip.coords.z)
    SetBlipSprite(blip, Config.Blip.sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, Config.Blip.scale)
    SetBlipColour(blip, Config.Blip.color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Blip.name)
    EndTextCommandSetBlipName(blip)
end

CreateThread(function()
    spawnCityHallPed()
    createCityHallBlip()

    for _, job in pairs(Config.Jobs) do
        table.insert(jobs, {
            title = job.label,
            description = job.description,
            arrow = true,
            icon = job.icon,
            event = 'cityhall:selectJob',
            args = { job = job.job, label = job.label }
        })
    end

    for licenseType, licenseData in pairs(Config.Licenses) do
        table.insert(licenses, {
            title = licenseData.label,
            description = ('$%d'):format(licenseData.price),
            arrow = true,
            icon = 'fas fa-id-card',
            event = 'cityhall:attemptPurchaseLicense',
            args = { licenseType = licenseType, label = licenseData.label }
        })
    end

    for _, lawyer in ipairs(Config.Lawyers) do
        table.insert(lawyers, {
            title = lawyer.name,
            description = lawyer.phone,
            icon = 'fa-user',
            iconColor = lawyer.iconColor
        })
    end

    for _, officer in ipairs(Config.PoliceLeadership) do
        table.insert(policeLeadership, {
            title = officer.name,
            description = officer.rank,
            icon = 'fa-shield',
            iconColor = officer.iconColor
        })
    end

    lib.registerContext({
        id = 'cityhall_jobs_menu',
        title = Config.Text.JobsMenuTitle,
        menu = 'cityhall_main_menu',
        options = jobs
    })

    lib.registerContext({
        id = 'cityhall_licenses_menu',
        title = Config.Text.LicensesMenuTitle,
        menu = 'cityhall_main_menu',
        options = licenses
    })

    lib.registerContext({
        id = 'cityhall_police_menu',
        title = Config.Text.PoliceMenuTitle,
        menu = 'cityhall_main_menu',
        options = policeLeadership
    })

    lib.registerContext({
        id = 'cityhall_lawyer_menu',
        title = Config.Text.LawyersMenuTitle,
        menu = 'cityhall_main_menu',
        options = lawyers
    })

    lib.registerContext({
        id = 'cityhall_main_menu',
        title = Config.Text.MainMenuTitle,
        options = {
            { title = Config.Text.JobCenterTitle, description = Config.Text.JobCenterDescription, icon = 'fas fa-briefcase', event = 'cityhall:showJobs' },
            { title = Config.Text.LicenseCenterTitle, description = Config.Text.LicenseCenterDescription, icon = 'fas fa-id-card', event = 'cityhall:showLicenses' },
            { title = Config.Text.LawyersTitle, description = Config.Text.LawyersDescription, icon = 'fa-users', event = 'cityhall:showLawyer' },
            { title = Config.Text.PoliceLeadershipTitle, description = Config.Text.PoliceLeadershipDescription, icon = 'fa-shield', event = 'cityhall:showPolice' }
        }
    })
end)

RegisterNetEvent('cityhall:openMenu', function()
    lib.showContext('cityhall_main_menu')
end)

RegisterNetEvent('cityhall:showJobs', function()
    lib.showContext('cityhall_jobs_menu')
end)

RegisterNetEvent('cityhall:showPolice', function()
    lib.showContext('cityhall_police_menu')
end)

RegisterNetEvent('cityhall:showLawyer', function()
    lib.showContext('cityhall_lawyer_menu')
end)

RegisterNetEvent('cityhall:showLicenses', function()
    lib.showContext('cityhall_licenses_menu')
end)

RegisterNetEvent('cityhall:selectJob', function(data)
    TriggerServerEvent('cityhall:setJob', data.job)
    lib.notify({
        id = 'job_notification',
        position = 'center-right',
        title = Config.Text.JobSelectedTitle,
        description = Config.Text.JobSelectedDescription:format(data.label),
        style = { backgroundColor = '#1e1e24', color = '#C1C2C5', ['.description'] = { color = '#909296' } },
        icon = 'briefcase',
        iconColor = '#007fff'
    })
    PlaySoundFrontend(-1, "PROPERTY_PURCHASE", "HUD_AWARDS", 0)
end)

RegisterNetEvent('cityhall:attemptPurchaseLicense', function(data)
    TriggerServerEvent('cityhall:purchaseLicense', data.licenseType)
end)
