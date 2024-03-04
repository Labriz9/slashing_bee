
execute store result score death_helmet Variables run random value 1..5

execute unless score death_helmet Variables matches 1 run return 1

playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 0.5 1

particle dust 0.5 0 0.5 1 ~ ~1 ~ 1 0.5 1 0 100

effect give @e[team=Enemy,distance=..3] wither 5 1 false
