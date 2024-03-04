
effect clear @s resistance

# 10 sec reload
scoreboard players set @s Reload_Earth_Chestplate 10
scoreboard players operation @s Reload_Earth_Chestplate += time Variables
schedule function slashing_bee:process/non_clickable_items/earth_chestplate/reload_loop 1s
