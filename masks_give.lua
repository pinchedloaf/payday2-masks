
-- Add 1 mask identified global_value and mask id. See DumpMasks()
-- UnlockMask("infamous", "skm_08")
function UnlockMask(global_value, id)
  log("Giving mask: " .. id)
  managers.blackmarket:add_to_inventory(global_value, "masks", id, false)
  -- global_value, category, id, not_new
end

-- Set a given mask in inventory to specified count.
-- Setting a 0 count will unlock/reveal it, but give you no masks
-- Setting 'nil' value will remove it and rehide it if hidden by default
-- SetInfamousMaskCount("skm_08", 0)
-- SetInfamousMaskCount("skm_08", nil)
-- SetInfamousMaskCount("skm_08", 1)
function SetInfamousMaskCount(id, count)
  log("setting " .. id .. " count: " .. count)
  Global.blackmarket_manager.inventory.infamous.masks[id] = count
end
