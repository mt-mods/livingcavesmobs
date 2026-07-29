-- This creates the livingcavesmobs object.
livingcavesmobs = {}

-- This creates the livingcavesmobs.settings object, and fills it with either the
-- menu selected choices as defined in settingtypes.txt, or default values,
-- (In this case, false).
livingcavesmobs.settings = {
	clear_biomes = core.settings:get_bool("livingcavesmobs.clear_biomes") or false,
	clear_decos = core.settings:get_bool("livingcavesmobs.clear_decos") or false,
	clear_ores = core.settings:get_bool("livingcavesmobs.clear_ores") or false,
}

if livingcavesmobs.settings.clear_biomes then
	core.clear_registered_biomes()
end
if livingcavesmobs.settings.clear_decos then
	core.clear_registered_decorations()
end
if livingcavesmobs.settings.clear_ores then
	core.clear_registered_ores()
end

-- Load support for intllib.
local path = core.get_modpath(core.get_current_modname()) .. "/"

local S = core.get_translator and core.get_translator("livingcavesmobs") or dofile(path .. "intllib.lua")

-- plants
dofile(path .. "biter.lua")
dofile(path .. "chubby.lua")
dofile(path .. "explodingbacteria.lua")
dofile(path .. "flesheatingbacteria.lua")
dofile(path .. "moth.lua")
dofile(path .. "grub.lua")
dofile(path .. "yeti.lua")
dofile(path .. "hunger.lua")

print(S("[MOD] Caves loaded"))
