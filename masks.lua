-- pattern (infamous)
--115 - cat   -- infamous 

--material (infamous)
--44 = gold_clean 
--1 - titanium
--50 - rainbow
--33 - radioactive
--38 - slime

-- masks (normal)
--1 - gagball
--38 - alienware
--both normal


managers.blackmarket:add_to_inventory("normal", "masks", "gagball", false)
managers.blackmarket:add_to_inventory("normal", "masks", "gagball", false)
managers.blackmarket:add_to_inventory("normal", "masks", "gagball", false)
managers.blackmarket:add_to_inventory("normal", "masks", "alienware", false)
managers.blackmarket:add_to_inventory("normal", "masks", "alienware", false)
managers.blackmarket:add_to_inventory("normal", "masks", "alienware", false)
managers.blackmarket:add_to_inventory("normal", "masks", "alienware", false)
managers.blackmarket:add_to_inventory("normal", "masks", "alienware", false)

managers.blackmarket:add_to_inventory("infamous", "textures", "cat", false)
managers.blackmarket:add_to_inventory("infamous", "textures", "cat", false)
managers.blackmarket:add_to_inventory("infamous", "textures", "cat", false)
managers.blackmarket:add_to_inventory("infamous", "textures", "cat", false)

managers.blackmarket:add_to_inventory("infamous", "materials", "gold_clean", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "gold_clean", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "gold_clean", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "gold_clean", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "gold_clean", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "gold_clean", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "titanium", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "titanium", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "rainbow", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "radioactive", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "slime", false)
managers.blackmarket:add_to_inventory("infamous", "materials", "slime", false)

-- Message on screen
if managers.hud then
   managers.hud:show_hint( { text = "Added" } )
end 