
# Less Energy than normal Wing_Stroke
execute if score @s Energy matches ..99 run return 1
scoreboard players remove @s Energy 100

tag @s add Wing_Stroke_Up

function slashing_bee:process/abilities/harpie/wing_stroke
