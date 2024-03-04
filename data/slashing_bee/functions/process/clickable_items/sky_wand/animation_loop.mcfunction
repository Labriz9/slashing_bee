
execute as @e[type=marker,tag=Sky_Marker] at @s run particle dust 0 0.063 0.757 1.0 ^0.75 ^ ^ 0 0 0 1 1
execute as @e[type=marker,tag=Sky_Marker] at @s run particle dust 0 0.063 0.757 1.0 ^-0.375 ^ ^-0.645 0 0 0 1 1
execute as @e[type=marker,tag=Sky_Marker] at @s run particle dust 0 0.063 0.757 1.0 ^-0.375 ^ ^0.645 0 0 0 1 1
execute as @e[type=marker,tag=Sky_Marker] at @s run tp @s ~ ~ ~ ~6 ~

scoreboard players add @e[type=marker,tag=Sky_Marker] LifeTime 1
execute as @e[type=marker,tag=Sky_Marker,scores={LifeTime=60..}] at @s run function slashing_bee:process/clickable_items/sky_wand/animation_end
kill @e[type=marker,tag=Sky_Marker,scores={LifeTime=60..}]

execute if entity @e[type=marker,tag=Sky_Marker] run schedule function slashing_bee:process/clickable_items/sky_wand/animation_loop 1t
