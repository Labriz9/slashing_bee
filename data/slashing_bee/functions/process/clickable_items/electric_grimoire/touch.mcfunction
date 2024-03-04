
tag @s remove Target_Electric_Ray
tag @s add Electric_Touched
scoreboard players remove target_number_electric_ray Variables 1
execute if score target_number_electric_ray Variables matches 1.. positioned ~ ~1.7 ~ facing entity @e[team=Enemy,tag=!Electric_Touched,distance=..5,limit=1,sort=nearest] eyes run function slashing_bee:process/clickable_items/electric_grimoire/ray

playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.25 2

damage @s 2 magic
