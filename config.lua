Config = {}

-- ██████╗ ███████╗██████╗ 
-- ██╔══██╗██╔════╝██╔══██╗
-- ██████╔╝█████╗  ██║  ██║
-- ██╔═══╝ ██╔══╝  ██║  ██║
-- ██║     ███████╗██████╔╝
-- ╚═╝     ╚══════╝╚═════╝ 

Config.Ped = {
    model = 'a_f_y_business_02',
    coords = vector3(-264.17, -965.35, 31.22),
    heading = 202.41
}

-- ██████╗ ██╗     ██╗██████╗ 
-- ██╔══██╗██║     ██║██╔══██╗
-- ██████╔╝██║     ██║██████╔╝
-- ██╔══██╗██║     ██║██╔═══╝ 
-- ██████╔╝███████╗██║██║     
-- ╚═════╝ ╚══════╝╚═╝╚═╝     
                           
Config.Blip = { 
    coords = vector3(-264.17, -965.35, 31.22), -- Location of the blip
    sprite = 457, -- Blip sprite (icon)
    color = 0, -- Blip color
    scale = 0.8, -- Blip size
    name = 'City Hall' -- Blip name
}

-- ██████╗  ██████╗ ██╗     ██╗ ██████╗███████╗    ██████╗  █████╗ ███╗   ██╗██╗  ██╗███████╗
-- ██╔══██╗██╔═══██╗██║     ██║██╔════╝██╔════╝    ██╔══██╗██╔══██╗████╗  ██║██║ ██╔╝██╔════╝
-- ██████╔╝██║   ██║██║     ██║██║     █████╗      ██████╔╝███████║██╔██╗ ██║█████╔╝ ███████╗
-- ██╔═══╝ ██║   ██║██║     ██║██║     ██╔══╝      ██╔══██╗██╔══██║██║╚██╗██║██╔═██╗ ╚════██║
-- ██║     ╚██████╔╝███████╗██║╚██████╗███████╗    ██║  ██║██║  ██║██║ ╚████║██║  ██╗███████║
-- ╚═╝      ╚═════╝ ╚══════╝╚═╝ ╚═════╝╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝

Config.PoliceLeadership = {
    { name = 'Kuban Scripts', rank = 'Rank: Superintendent', iconColor = '#1B5E94' },
    { name = 'N/A', rank = 'Rank: Inspector', iconColor = '#1B5E94' },
    { name = 'N/A', rank = 'Rank: Inspector', iconColor = '#1B5E94' }
}

-- ██╗      █████╗ ██╗    ██╗██╗   ██╗███████╗██████╗ ███████╗
-- ██║     ██╔══██╗██║    ██║╚██╗ ██╔╝██╔════╝██╔══██╗██╔════╝
-- ██║     ███████║██║ █╗ ██║ ╚████╔╝ █████╗  ██████╔╝███████╗
-- ██║     ██╔══██║██║███╗██║  ╚██╔╝  ██╔══╝  ██╔══██╗╚════██║
-- ███████╗██║  ██║╚███╔███╔╝   ██║   ███████╗██║  ██║███████║
-- ╚══════╝╚═╝  ╚═╝ ╚══╝╚══╝    ╚═╝   ╚══════╝╚═╝  ╚═╝╚══════╝

Config.Lawyers = {
    { name = 'Kuban Scripts', phone = '0463525141', iconColor = '#76A9D2' },
    { name = 'N/A', phone = '0463525141', iconColor = '#76A9D2' },
    { name = 'N/A', phone = '0463525141', iconColor = '#76A9D2' }
}

-- ███╗   ███╗███████╗███╗   ██╗██╗   ██╗    ████████╗███████╗██╗  ██╗████████╗███████╗
-- ████╗ ████║██╔════╝████╗  ██║██║   ██║    ╚══██╔══╝██╔════╝╚██╗██╔╝╚══██╔══╝██╔════╝
-- ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║       ██║   █████╗   ╚███╔╝    ██║   ███████╗
-- ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║       ██║   ██╔══╝   ██╔██╗    ██║   ╚════██║
-- ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝       ██║   ███████╗██╔╝ ██╗   ██║   ███████║
-- ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝        ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝
                                                                                    

Config.Text = {
    MainMenuTitle = 'City Hall',
    JobsMenuTitle = 'Available Jobs',
    LicensesMenuTitle = 'Available Licenses',
    PoliceMenuTitle = 'Police Command',
    LawyersMenuTitle = 'Approved Lawyers',
    JobCenterTitle = 'Job Center',
    JobCenterDescription = 'View available jobs.',
    LicenseCenterTitle = 'License Center',
    LicenseCenterDescription = 'View available licenses.',
    LawyersTitle = 'Approved Lawyers',
    LawyersDescription = 'Contact details for approved lawyers.',
    PoliceLeadershipTitle = 'Police Command',
    PoliceLeadershipDescription = 'Current Melbourne Police command members.',
    JobSelectedTitle = 'Job Selected',
    JobSelectedDescription = 'You are now a %s!',
    TargetLabel = 'Open Cityhall'
}

--      ██╗ ██████╗ ██████╗ ███████╗
--      ██║██╔═══██╗██╔══██╗██╔════╝
--      ██║██║   ██║██████╔╝███████╗
-- ██   ██║██║   ██║██╔══██╗╚════██║
-- ╚█████╔╝╚██████╔╝██████╔╝███████║
--  ╚════╝  ╚═════╝ ╚═════╝ ╚══════╝

Config.Jobs = {
    {
        job = 'busjob', -- Job Name qbcore/shared/jobs.lua
        label = 'Translink Victoria', -- Job Title
        description = 'Grab a bus, Grab a Route, Pickup Passengers and make $$$', -- Job Description
        icon = 'fas fa-bus' -- Job Icon
    },
    -- {
    --     job = 'busjob', -- Job Name qbcore/shared/jobs.lua
    --     label = 'Translink Victoria', -- Job Title
    --     description = 'Grab a bus, Grab a Route, Pickup Passengers and make $$$', -- Job Description
    --     icon = 'fas fa-bus' -- Job Icon
    -- },
}

-- ██╗     ██╗ ██████╗███████╗███╗   ██╗ ██████╗███████╗███████╗
-- ██║     ██║██╔════╝██╔════╝████╗  ██║██╔════╝██╔════╝██╔════╝
-- ██║     ██║██║     █████╗  ██╔██╗ ██║██║     █████╗  ███████╗
-- ██║     ██║██║     ██╔══╝  ██║╚██╗██║██║     ██╔══╝  ╚════██║
-- ███████╗██║╚██████╗███████╗██║ ╚████║╚██████╗███████╗███████║
-- ╚══════╝╚═╝ ╚═════╝╚══════╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚══════╝
                                                             
Config.Licenses = {
    pistol = {
        label = 'Pistol License',
        price = 5000
    },
    hunting = {
        label = 'Hunting License',
        price = 3000
    },
    fishing = {
        label = 'Fishing License',
        price = 1000
    }
}

-- ██╗  ██╗██╗   ██╗██████╗  █████╗ ███╗   ██╗███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
-- ██║ ██╔╝██║   ██║██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- █████╔╝ ██║   ██║██████╔╝███████║██╔██╗ ██║███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
-- ██╔═██╗ ██║   ██║██╔══██╗██╔══██║██║╚██╗██║╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
-- ██║  ██╗╚██████╔╝██████╔╝██║  ██║██║ ╚████║███████║╚██████╗██║  ██║██║██║        ██║   ███████║
-- ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝
                                                                                               
Config.AmazingScripts = true -- Leave this on if you think our scripts are amazing!
Config.VersionChecker = true 
