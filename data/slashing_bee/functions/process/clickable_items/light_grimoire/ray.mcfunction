
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..1] add Target_Light_Grimoire_Ray
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Light_Grimoire_Ray,distance=..100] positioned ^ ^ ^0.5 run function slashing_bee:process/clickable_items/light_grimoire/ray
execute as @e[tag=Target_Light_Grimoire_Ray] run function slashing_bee:process/clickable_items/light_grimoire/touch
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0 10
particle flame ~ ~ ~ 0.05 0.05 0.05 0 1
