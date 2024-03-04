
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,tag=!Electric_Touched,distance=..0.75,limit=1,sort=nearest] add Target_Electric_Ray
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @e[tag=Electric_Touched,distance=..5] unless entity @e[tag=Target_Electric_Ray] positioned ^ ^ ^0.15 run function slashing_bee:process/bow/electric_bow/ray
execute as @e[tag=Target_Electric_Ray] at @s run function slashing_bee:process/bow/electric_bow/touch

execute if score display_particle_electric_ray Variables matches 1 run particle dust 1 0.9 0 1 ~ ~-0.2 ~ 0 0 0 0 1
execute if score display_particle_electric_ray Variables matches 2 run particle dust 1 0.9 0 1 ~ ~-0.1 ~ 0 0 0 0 1
execute if score display_particle_electric_ray Variables matches 3 run particle dust 1 0.9 0 1 ~ ~ ~ 0 0 0 0 1
execute if score display_particle_electric_ray Variables matches 4 run particle dust 1 0.9 0 1 ~ ~0.1 ~ 0 0 0 0 1
execute if score display_particle_electric_ray Variables matches 5 run particle dust 1 0.9 0 1 ~ ~0.2 ~ 0 0 0 0 1
scoreboard players add display_particle_electric_ray Variables 1
execute if score display_particle_electric_ray Variables matches 6.. run scoreboard players set display_particle_electric_ray Variables 1
