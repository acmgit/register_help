local hunger_items = {}

hunger_items = {
                    -- Name                                 Saturation          Replace with                Poison      Heal    Sound
                    {'default:apple',                           2,                  nil,                        nil,    nil,        nil},
                    {'default:blueberries',                     2,                  nil,                        nil,    nil,        nil},
                }

for key, item in pairs(hunger_items) do
    hunger.register_food(item)
        
end -- for key, data

minetest.log("INFO","[MOD] " .. register_helper.modname .. ": Items at hbhunger registered.")
