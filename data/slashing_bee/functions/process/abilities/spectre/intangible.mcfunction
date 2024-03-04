
execute if score @s Energy matches ..499 run return 1 
scoreboard players remove @s Energy 500

tag @s add Intangible

playsound minecraft:item.elytra.flying player @s ~ ~ ~ 0.5 0.5
gamemode spectator @s

# 3 sec recharge
scoreboard players set @s[tag=!Intangible_Up] Intangible_Time 3
scoreboard players operation @s Intangible_Time += time Variables
schedule function slashing_bee:process/abilities/spectre/intangible_end_detect 1s
