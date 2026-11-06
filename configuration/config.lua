Config = {}

-- Each setting: false turns the sound off, true keeps it, nil leaves it to GTA and other resources.

-- The sirens GTA plays far away when there are no emergency vehicles near. Real sirens on players' and
-- NPCs' vehicles are never affected.
Config.DistantSirens = false

-- The police scanner voice that reads out crimes, places and suspect descriptions.
Config.PoliceScanner = false

-- The music that starts when a player gets a wanted level.
Config.WantedMusic = false

-- The music that plays while flying a plane or helicopter.
Config.FlightMusic = false

-- GTA's fixed sound sources to turn off, by name, such as the music in a club. Empty by default.
-- For example, the music in the Vanilla Unicorn:
--     Config.StaticEmitters = {
--         'LOS_SANTOS_VANILLA_UNICORN_01_STAGE',
--         'LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM',
--         'LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM',
--     }
Config.StaticEmitters = {}

-- How often, in seconds, these settings are applied again, in case GTA or another resource changes them.
Config.ReapplySeconds = 1.0

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
