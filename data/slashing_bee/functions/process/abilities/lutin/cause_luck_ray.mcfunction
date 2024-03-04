
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..0.75,limit=1,sort=nearest,tag=!Cause_Lucked] add Target_Cause_Luck
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Cause_Luck,distance=..3] unless entity @e[tag=Target_Cause_Luck,distance=..2] positioned ^ ^ ^1 run function slashing_bee:process/abilities/lutin/cause_luck_ray
execute as @e[tag=Target_Cause_Luck] at @s run function slashing_bee:process/abilities/lutin/cause_luck_resolve
