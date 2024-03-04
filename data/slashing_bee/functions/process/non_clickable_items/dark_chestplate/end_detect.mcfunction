
execute as @a[scores={Dark_Chestplate_Time=1..}] if score @s Dark_Chestplate_Time <= time Variables run function slashing_bee:process/non_clickable_items/dark_chestplate/end

execute if entity @a[tag=Dark_Chestplate,scores={Dark_Chestplate_Time=1..}] run schedule function slashing_bee:process/non_clickable_items/dark_chestplate/end_detect 1s
