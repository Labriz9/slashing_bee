
execute as @a[scores={Delay_Wind_Grimoire=1..}] at @s if score @s Delay_Wind_Grimoire <= time Variables run function slashing_bee:process/clickable_items/wind_grimoire/resolve

execute if entity @a[scores={Delay_Wind_Grimoire=1..}] run schedule function slashing_bee:process/clickable_items/wind_grimoire/delay_loop 1s
