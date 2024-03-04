
tag @s remove Target_Electric_Ray
tag @s add Electric_Touched
scoreboard players remove target_number_electric_ray Variables 1
execute if score target_number_electric_ray Variables matches 1.. positioned ~ ~1.7 ~ facing entity @e[team=Enemy,tag=!Electric_Touched,distance=..5,limit=1,sort=nearest] eyes run function slashing_bee:process/bow/electric_bow/ray

playsound minecraft:block.note_block.hat ambient @a ~ ~ ~ 0.5 2
playsound minecraft:entity.spider.ambient ambient @a ~ ~ ~ 0.5 2

damage @s 1 magic
