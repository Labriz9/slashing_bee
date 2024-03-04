
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:ui.toast.in ambient @a ~ ~ ~ 5 1.5

tag @s add Wind_Spear
attribute @s generic.movement_speed modifier add 36f22aab-774d-47f1-b184-378938bc178d "wind_spear" 5 multiply_base

schedule function slashing_bee:process/clickable_items/wind_spear/end 5t
