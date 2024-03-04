
execute as @e[type=marker,tag=Black_Hole] at @s at @e[team=Enemy,distance=..30] facing entity @s eyes positioned ^ ^ ^0.01 run tp @e[team=Enemy,sort=nearest,limit=1] ~ ~ ~ 
execute as @e[type=marker,tag=Black_Hole] at @s at @e[team=Enemy,distance=..10] facing entity @s eyes positioned ^ ^ ^0.05 run tp @e[team=Enemy,sort=nearest,limit=1] ~ ~ ~ 
execute as @e[type=marker,tag=Black_Hole] at @s at @e[team=Enemy,distance=..5] facing entity @s eyes positioned ^ ^ ^0.5 run tp @e[team=Enemy,sort=nearest,limit=1] ~ ~ ~ 
execute at @e[type=marker,tag=Black_Hole] as @e[team=Enemy,distance=..5] run damage @s 2

execute at @e[type=marker,tag=Black_Hole] run particle dust 0 0 0 3 ~ ~ ~ 1 1 1 0 100
execute at @e[type=marker,tag=Black_Hole] run particle dust 0 0 0 1 ~ ~ ~ 5 0.5 5 0 200

kill @e[type=marker,tag=Black_Hole,scores={LifeTime=80..}]
scoreboard players add @e[type=marker,tag=Black_Hole] LifeTime 1

execute if entity @e[type=marker,tag=Black_Hole] run schedule function slashing_bee:process/clickable_items/consumable/black_hole/loop 5t
