
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:item.trident.return player @a ~ ~ ~ 0.5

tag @s add Light_Ray

execute positioned ~ ~1.7 ~ run function slashing_bee:process/clickable_items/light_wand/ray

tag @s remove Light_Ray
