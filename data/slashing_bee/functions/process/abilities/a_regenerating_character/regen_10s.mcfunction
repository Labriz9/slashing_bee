
effect give @a[tag=Regen_10s,tag=!Broken_Youth_Amulet] minecraft:regeneration 1 2
effect give @a[tag=Broken_Youth_Amulet,nbt={Inventory:[{Slot:-106b,tag:{weapon:"broken_youth_amulet"}}]}] minecraft:regeneration 1 2

execute as @a[tag=Regen_10s] run schedule function slashing_bee:process/abilities/a_regenerating_character/regen_10s 10s
