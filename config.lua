Config = {}

-- ██╗      ██████╗  ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
-- ██║     ██╔═══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
-- ██║     ██║   ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║
-- ██║     ██║   ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
-- ███████╗╚██████╔╝╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
-- ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                
Config.OpenLocation = vector3(-264.49, -964.87, 31.22) -- Vector 3 Location 

-- ███╗   ███╗ █████╗ ██████╗ ██╗  ██╗███████╗██████╗ 
-- ████╗ ████║██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
-- ██╔████╔██║███████║██████╔╝█████╔╝ █████╗  ██████╔╝
-- ██║╚██╔╝██║██╔══██║██╔══██╗██╔═██╗ ██╔══╝  ██╔══██╗
-- ██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██╗███████╗██║  ██║
-- ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                   

Config.Marker = {
    type = 27, -- https://docs.fivem.net/docs/game-references/markers/
    color = { r = 0, g = 144, b = 173, a = 100 } -- Customizable RGBA color
}

-- ██████╗ ██╗     ██╗██████╗ 
-- ██╔══██╗██║     ██║██╔══██╗
-- ██████╔╝██║     ██║██████╔╝
-- ██╔══██╗██║     ██║██╔═══╝ 
-- ██████╔╝███████╗██║██║     
-- ╚═════╝ ╚══════╝╚═╝╚═╝     

Config.Blip = {
    enabled = true, -- Set to false to disable the blip
    sprite = 498, -- Blip icon (https://docs.fivem.net/docs/game-references/blips/)
    color = 3, -- Blip color (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
    scale = 0.8, -- Blip size
    name = "City Hall" -- Blip name on the map
}

--      ██╗ ██████╗ ██████╗ ███████╗
--      ██║██╔═══██╗██╔══██╗██╔════╝
--      ██║██║   ██║██████╔╝███████╗
-- ██   ██║██║   ██║██╔══██╗╚════██║
-- ╚█████╔╝╚██████╔╝██████╔╝███████║
--  ╚════╝  ╚═════╝ ╚═════╝ ╚══════╝

Config.Jobs = {
    enabled = true, 
    list = {
        { name = "police", label = "Police Officer", description = "Uphold the law and protect citizens." },
        { name = "ambulance", label = "Paramedic", description = "Save lives and provide medical assistance." },
        { name = "mechanic", label = "Mechanic", description = "Repair and customize vehicles." }
    }
}

-- ██╗      █████╗ ██╗    ██╗██╗   ██╗███████╗██████╗ ███████╗
-- ██║     ██╔══██╗██║    ██║╚██╗ ██╔╝██╔════╝██╔══██╗██╔════╝
-- ██║     ███████║██║ █╗ ██║ ╚████╔╝ █████╗  ██████╔╝███████╗
-- ██║     ██╔══██║██║███╗██║  ╚██╔╝  ██╔══╝  ██╔══██╗╚════██║
-- ███████╗██║  ██║╚███╔███╔╝   ██║   ███████╗██║  ██║███████║
-- ╚══════╝╚═╝  ╚═╝ ╚══╝╚══╝    ╚═╝   ╚══════╝╚═╝  ╚═╝╚══════╝

Config.Lawyers = {
    enabled = true,
    list = {
        { name = "John Doe", description = "Specialist in criminal defense." },
        { name = "Jane Smith", description = "Expert in civil law." },
        { name = "Michael Johnson", description = "Corporate lawyer with 10+ years of experience." }
    }
}

-- ██████╗  ██████╗ ██╗     ██╗ ██████╗███████╗    ██████╗  █████╗ ███╗   ██╗██╗  ██╗███████╗
-- ██╔══██╗██╔═══██╗██║     ██║██╔════╝██╔════╝    ██╔══██╗██╔══██╗████╗  ██║██║ ██╔╝██╔════╝
-- ██████╔╝██║   ██║██║     ██║██║     █████╗      ██████╔╝███████║██╔██╗ ██║█████╔╝ ███████╗
-- ██╔═══╝ ██║   ██║██║     ██║██║     ██╔══╝      ██╔══██╗██╔══██║██║╚██╗██║██╔═██╗ ╚════██║
-- ██║     ╚██████╔╝███████╗██║╚██████╗███████╗    ██║  ██║██║  ██║██║ ╚████║██║  ██╗███████║
-- ╚═╝      ╚═════╝ ╚══════╝╚═╝ ╚═════╝╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝

Config.Police = {
    enabled = true, 
    list = {
        { name = "Captain Rogers", description = "Rank: Commander" },
        { name = "Officer Adams", description = "Rank: Inspector" },
        { name = "Detective Miller", description = "Rank: Senior Sergeant" }
    }
}
