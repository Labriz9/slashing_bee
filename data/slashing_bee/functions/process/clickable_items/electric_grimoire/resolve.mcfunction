
scoreboard players set @s Delay_Electric_Grimoire 0


tag @s add Electric_Touched

scoreboard players set target_number_electric_ray Variables 20
scoreboard players set display_particle_electric_ray Variables 0
execute positioned ~ ~1.7 ~ facing entity @e[team=Enemy,distance=..5,limit=1,sort=nearest] eyes run function slashing_bee:process/clickable_items/electric_grimoire/ray

tag @e remove Electric_Touched
