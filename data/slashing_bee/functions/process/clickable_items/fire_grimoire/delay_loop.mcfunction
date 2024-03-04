
execute as @a[scores={Delay_Fire_Grimoire=1..}] at @s if score @s Delay_Fire_Grimoire <= time Variables run function slashing_bee:process/clickable_items/fire_grimoire/resolve

execute if entity @a[scores={Delay_Fire_Grimoire=1..}] run schedule function slashing_bee:process/clickable_items/fire_grimoire/delay_loop 1s
