
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] add Target_Rock_Prison_Up
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Rock_Prison_Up,distance=..20] unless entity @e[tag=Target_Rock_Prison_Up,distance=..2] positioned ^ ^ ^1 run function slashing_bee:process/abilities/gnome/rock_prison_up_ray
execute as @e[tag=Target_Rock_Prison_Up] at @s run function slashing_bee:process/abilities/gnome/rock_prison_up_resolve
particle block stone ~ ~ ~ 0 0 0 1 0
