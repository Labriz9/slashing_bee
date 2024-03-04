
execute store result score dark_chestplate Variables run random value 1..5

execute unless score dark_chestplate Variables matches 1 run return 1

playsound minecraft:item.elytra.flying player @s ~ ~ ~ 0.5 0.5

particle dust 0 0 0 1 ~ ~1 ~ 0.2 0.6 0.2 0 100

gamemode spectator @s

# 3 sec recharge
scoreboard players set @s Dark_Chestplate_Time 3
scoreboard players operation @s Dark_Chestplate_Time += time Variables
schedule function slashing_bee:process/non_clickable_items/dark_chestplate/end_detect 1s
