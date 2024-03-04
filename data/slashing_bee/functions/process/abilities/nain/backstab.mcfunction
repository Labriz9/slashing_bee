
execute if score @s Energy matches ..299 run return 1 

tag @s add Backstab

execute positioned ~ ~1.7 ~ run function slashing_bee:process/abilities/nain/backstab_ray

tag @s remove Backstab
