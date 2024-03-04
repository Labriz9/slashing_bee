
execute positioned ~ ~ ~ run tag @e[type=bee,tag=Bee_Soldier,distance=..0.75,limit=1,sort=nearest] add Target_Royal_Stinger_Ray
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Royal_Stinger_Ray,distance=..10] unless entity @e[tag=Target_Royal_Stinger_Ray,distance=..2] positioned ^ ^ ^0.5 run function slashing_bee:process/clickable_items/royal_stinger/ray
execute as @e[tag=Target_Royal_Stinger_Ray] at @s run function slashing_bee:process/clickable_items/royal_stinger/touch

execute if score display_particle_royal_stinger_ray Variables matches 1 run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1
execute if score display_particle_royal_stinger_ray Variables matches 2 run particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1
scoreboard players add display_particle_royal_stinger_ray Variables 1
execute if score display_particle_royal_stinger_ray Variables matches 3.. run scoreboard players set display_particle_royal_stinger_ray Variables 1
