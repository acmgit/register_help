--[[ 

    ************************
    ***  register_helper  **
    ************************

    (?) by A.C.M.

    License: GPL 3.0

]]--

register_helper = {}

register_helper.version = "1.0"
register_helper.modname = minetest.get_current_modname()
register_helper.modpath = minetest.get_modpath(register_helper.modname)

local mods = {}

mods = {    "hunger",
            "diet",
        }

for mod,name in ipairs(mods) do
    if(minetest.get_modpath(name) ~= nil) then
        dofile(register_helper.modpath .. "/" .. name .. ".lua")
        minetest.log("info", "[MOD] " .. register_helper.modname .. " includes " .. name .. ".lua.")
        
    end -- if(mintest.get_modpath

end -- for mod,name
      
minetest.log("info", "[MOD] " .. register_helper.modname .. " Version " .. register_helper.version .. " loaded.")

