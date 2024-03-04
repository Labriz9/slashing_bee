
execute if score @s Energy matches ..99 run return 1 

tag @s add Rock_Prison

execute positioned ~ ~1.7 ~ run function slashing_bee:process/abilities/gnome/rock_prison_ray

tag @s remove Rock_Prison
