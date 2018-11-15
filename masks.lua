log("Dumping mask data ...")

function DumpMask(table)
	for k,v in pairs(table) do
		if type(v) ~= "table" then
			if k == "global_value" then
				log("global_value: " .. v)
			elseif k == "name_id" then
				log("name_id: " .. v)
			elseif k == "inaccessible" then
				if v then
				  log("inaccessible: TRUE")
				end
			end
		end
  end
  log("----------------------")
end

-- Dump all masks in blackmarket, with needed values and if it is supposed to be
-- inaccessible
function DumpMasks()
	for k,v in pairs(tweak_data.blackmarket.masks) do
		if type(v) == "table" then
			log("id: " .. k)
			DumpMask(v)
		end
	end
end

-- Dump the raw mask lua table. ignore binary data (such as model placements)
-- can be used for non-mask tables as well.
-- DumpTable(tweak_data.blackmarket.masks,"")
function DumpTable( table, offset )
	for k,v in pairs(table) do
		if type(v) == "table" then
			log(offset .. "table: " .. k)
			DumpTable(v, offset .. "--")
    elseif type(v) == "boolean" then
     	if v then
    		log(offset .. "key: " .. k .. " = true")
    	else
    		log(offset .. "key: " .. k .. " = false")
    	end
    elseif type(v) == "userdata" then
    	log(offset .. "key: " .. k .. " = userdata")
    else
    	log(offset .. "key: " .. k .. "  value: " .. v)
    end
  end
  log("----------------------")
end

-- Dump your profiles current mask inventory, and count. This does not account
-- for masks already created
function DumpInventory()
	for k,v in pairs(Global.blackmarket_manager.inventory) do
		if type(v) == "table" then
  		log("k: " .. k)
	  else
	    log("k: " .. k .. " v: " .. v)
	  end
	end
end

-- Dump your profiles current infamous mask inventory, and count. This does not
-- account for masks already created
function DumpInventoryInfamousMasks()
	for k,v in pairs(Global.blackmarket_manager.inventory.infamous.masks) do
	  if type(v) == "table" then
		  log("k: " .. k)
	  else
	    log("k: " .. k .. " v: " .. v)
	  end
  end
end
