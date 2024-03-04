
effect clear @s luck

tag @s add Electric_Touched

scoreboard players set target_number_electric_ray Variables 5
scoreboard players set display_particle_electric_ray Variables 0
execute positioned ~ ~1.7 ~ facing entity @e[team=Enemy,tag=!Electric_Touched,distance=..5,limit=1,sort=nearest] eyes run function slashing_bee:process/bow/electric_bow/ray

tag @e remove Electric_Touched
