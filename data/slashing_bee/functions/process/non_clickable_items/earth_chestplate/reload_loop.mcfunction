
execute as @a[scores={Reload_Earth_Chestplate=1..}] at @s if score @s Reload_Earth_Chestplate <= time Variables run function slashing_bee:process/non_clickable_items/earth_chestplate/reset

execute if entity @a[tag=Earth_Chestplate,scores={Reload_Earth_Chestplate=1..}] run schedule function slashing_bee:process/non_clickable_items/earth_chestplate/reload_loop 1s
