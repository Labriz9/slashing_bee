
execute store result score light_helmet Variables run random value 1..5

execute unless score light_helmet Variables matches 1 run return 1

playsound minecraft:block.beacon.activate player @a ~ ~ ~ 3

particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 100
particle flash ~ ~1 ~ 0 0 0 0 1

effect give @e[team=Enemy,distance=..20] glowing 10 0 true
