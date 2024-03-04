
execute as @e[type=marker,tag=Wind_Grimoire_Marker] at @s at @e[team=Enemy,distance=..10] facing entity @s eyes positioned ^ ^ ^0.02 run tp @e[team=Enemy,sort=nearest,limit=1] ~ ~ ~ 
execute as @e[type=marker,tag=Wind_Grimoire_Marker] at @s at @e[team=Enemy,distance=..5] facing entity @s eyes positioned ^ ^ ^0.1 run tp @e[team=Enemy,sort=nearest,limit=1] ~ ~ ~ 

# Particles
execute as @e[type=marker,tag=Wind_Grimoire_Marker] at @s run function slashing_bee:process/clickable_items/wind_grimoire/animate

scoreboard players add @e[type=marker,tag=Wind_Grimoire_Marker] LifeTime 1
kill @e[type=marker,tag=Wind_Grimoire_Marker,scores={LifeTime=125..}]

execute if entity @e[type=marker,tag=Wind_Grimoire_Marker] run schedule function slashing_bee:process/clickable_items/wind_grimoire/resolve_loop 1t
