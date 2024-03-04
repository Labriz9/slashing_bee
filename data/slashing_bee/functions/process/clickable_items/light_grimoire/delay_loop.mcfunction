
execute as @a[scores={Delay_Light_Grimoire=1..}] at @s if score @s Delay_Light_Grimoire <= time Variables run function slashing_bee:process/clickable_items/light_grimoire/resolve

execute if entity @a[scores={Delay_Light_Grimoire=1..}] run schedule function slashing_bee:process/clickable_items/light_grimoire/delay_loop 1s
