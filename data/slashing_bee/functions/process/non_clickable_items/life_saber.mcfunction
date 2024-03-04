
execute store result score life_saber Variables run random value 1..20

execute unless score life_saber Variables matches 1 run return 1

effect give @e[team=Player,distance=..10] regeneration 1 2 false
particle minecraft:totem_of_undying ~ ~1 ~ 5 1 5 0 100
