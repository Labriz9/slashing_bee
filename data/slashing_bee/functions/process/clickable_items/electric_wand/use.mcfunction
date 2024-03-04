
execute if score @s Energy matches ..99 run return 1 
scoreboard players remove @s Energy 100

playsound minecraft:block.note_block.hat ambient @a ~ ~ ~ 2 2
playsound minecraft:entity.spider.ambient ambient @a ~ ~ ~ 2 2

tag @s add Electric_Touched

scoreboard players set target_number_electric_ray Variables 10
scoreboard players set display_particle_electric_ray Variables 0
execute positioned ~ ~1.7 ~ facing entity @e[team=Enemy,distance=..5,limit=1,sort=nearest] eyes run function slashing_bee:process/clickable_items/electric_wand/ray

tag @e remove Electric_Touched
