
execute store result score electric_leggings Variables run random value 1..5

execute unless score electric_leggings Variables matches 1 run return 1

playsound minecraft:block.note_block.hat ambient @a ~ ~ ~ 2 2
playsound minecraft:entity.spider.ambient ambient @a ~ ~ ~ 2 2

tag @s add Electric_Touched

scoreboard players set target_number_electric_ray Variables 10
scoreboard players set display_particle_electric_ray Variables 0
execute positioned ~ ~1.7 ~ facing entity @e[team=Enemy,distance=..5,limit=1,sort=nearest] eyes run function slashing_bee:process/clickable_items/electric_wand/ray

tag @e remove Electric_Touched
