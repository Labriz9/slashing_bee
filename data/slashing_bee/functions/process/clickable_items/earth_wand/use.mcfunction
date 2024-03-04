
execute if score @s Energy matches ..99 run return 1 

playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 1

tag @s add Earth_Wand

execute positioned ~ ~1.7 ~ run function slashing_bee:process/clickable_items/earth_wand/ray

tag @s remove Earth_Wand
