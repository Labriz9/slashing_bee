
execute if score @s Delay_Life_Grimoire matches 1.. run return 1
execute if score @s Energy matches ..249 run return 1 
scoreboard players remove @s Energy 250

playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.5

# 3 sec delay
scoreboard players set @s Delay_Life_Grimoire 3
scoreboard players operation @s Delay_Life_Grimoire += time Variables
schedule function slashing_bee:process/clickable_items/life_grimoire/delay_loop 1s
