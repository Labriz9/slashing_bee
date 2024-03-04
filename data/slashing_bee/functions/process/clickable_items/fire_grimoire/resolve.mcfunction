
scoreboard players set @s Delay_Fire_Grimoire 0

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.75

particle explosion ~ ~1 ~ 3 1 3 0 50
particle flame ~ ~1 ~ 0 0 0 0.5 200

execute as @e[team=Enemy,distance=..5] run damage @s 3 magic
execute as @e[team=Enemy,distance=..5] run data modify entity @s Fire set value 140
