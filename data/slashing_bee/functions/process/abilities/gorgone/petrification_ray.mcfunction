
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] add Target_Petrification
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Petrification,distance=..5] unless entity @e[tag=Target_Petrification,distance=..2] positioned ^ ^ ^1 run function slashing_bee:process/abilities/gorgone/petrification_ray
execute as @e[tag=Target_Petrification] at @s run function slashing_bee:process/abilities/gorgone/petrification_resolve
