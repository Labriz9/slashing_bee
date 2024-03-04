
effect give @a[tag=Regen_20s,tag=!Youth_Amulet] minecraft:regeneration 1 2
effect give @a[tag=Youth_Amulet,nbt={Inventory:[{Slot:-106b,tag:{weapon:"youth_amulet"}}]}] minecraft:regeneration 1 2

execute as @a[tag=Regen_20s] run schedule function slashing_bee:process/abilities/a_regenerating_character/regen_20s 20s
