
execute if score @s Delay_Sky_Grimoire matches 1.. run return 1
execute if score @s Energy matches ..299 run return 1 
scoreboard players remove @s Energy 300

playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.5

# 3 sec delay
scoreboard players set @s Delay_Sky_Grimoire 3
scoreboard players operation @s Delay_Sky_Grimoire += time Variables
schedule function slashing_bee:process/clickable_items/sky_grimoire/delay_loop 1s
