
execute store result score fire_chestplate Variables run random value 1..5

execute unless score fire_chestplate Variables matches 1 run return 1

playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1

particle flame ~ ~1 ~ 0 0 0 0.1 100

execute as @e[team=Enemy,distance=..3] run data modify entity @s Fire set value 100
