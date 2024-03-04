
execute if score @s Energy matches ..199 run return 1 
scoreboard players remove @s Energy 200

effect give @e[team=Enemy,distance=..5] minecraft:wither 10 1
particle minecraft:dust 0.5 0 0.5 1 ~ ~1 ~ 5 1 5 1 100
