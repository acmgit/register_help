local diet_items = {}

hunger_items = {
                    -- Name                                 Hungerchange          Replace with                Poison   Heal
                    {'default:apple',                           2,                  nil,                        nil,    nil },
                    {'default:blueberries',                     2,                  nil,                        nil,    nil },
                }

local function overwrite(name, hunger_change, replace_with_item, poisen, heal)
    local tab = minetest.registered_items[name]
    if not tab then
        return
    end
    tab.on_use = diet.item_eat(hunger_change, replace_with_item, poisen, heal)
end -- local function overwrite
    
for key,item in pairs(diet_items) do
    overwrite(item[1], item[2], item[3], item[4], item[5])
        
end -- for key,item
    
minetest.log("INFO","[MOD] " .. register_helper.modname .. ": Items at diet registered.")
