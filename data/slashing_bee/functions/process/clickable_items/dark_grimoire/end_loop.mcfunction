
execute at @e[type=marker,tag=Dark_Grimoire_Marker,scores={LifeTime=10..}] run particle dust 0 0 0 2 ~ ~0.9 ~ 0.2 0.9 0.2 0 30
kill @e[type=marker,tag=Dark_Grimoire_Marker,scores={LifeTime=10..}]
scoreboard players add @e[type=marker,tag=Dark_Grimoire_Marker] LifeTime 1

execute if entity @e[type=marker,tag=Dark_Grimoire_Marker] run schedule function slashing_bee:process/clickable_items/dark_grimoire/end_loop 5t
