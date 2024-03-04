
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] add Target_Backstab
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Backstab,distance=..3] unless entity @e[tag=Target_Backstab,distance=..2] positioned ^ ^ ^1 run function slashing_bee:process/abilities/nain/backstab_ray
execute as @e[tag=Target_Backstab] at @s run function slashing_bee:process/abilities/nain/backstab_resolve
