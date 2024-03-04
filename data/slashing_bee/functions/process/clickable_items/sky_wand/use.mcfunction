
execute if score @s Energy matches ..199 run return 1 
scoreboard players remove @s Energy 200

tag @s add Sky_Ray

execute positioned ~ ~1.7 ~ run function slashing_bee:process/clickable_items/sky_wand/ray

tag @s remove Sky_Ray
