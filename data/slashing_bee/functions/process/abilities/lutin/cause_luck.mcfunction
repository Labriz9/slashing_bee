
execute if score @s[tag=!Cause_Luck_Up] Energy matches ..699 run return 1

tag @s add Cause_Luck

execute positioned ~ ~1.7 ~ run function slashing_bee:process/abilities/lutin/cause_luck_ray

tag @s remove Cause_Luck
