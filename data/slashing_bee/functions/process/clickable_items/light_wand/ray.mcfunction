
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] add Target_Light_Ray
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Light_Ray,distance=..50] unless entity @e[tag=Target_Light_Ray,distance=..2] positioned ^ ^ ^1 run function slashing_bee:process/clickable_items/light_wand/ray
execute as @e[tag=Target_Light_Ray] at @s run function slashing_bee:process/clickable_items/light_wand/touch
particle end_rod ~ ~ ~ 0 0 0 0 1
