
execute if score @s Energy matches ..299 run return 1 
scoreboard players remove @s Energy 300

tag @s add Intangible_Up

scoreboard players set @s Intangible_Time 5
function slashing_bee:process/abilities/spectre/intangible

tag @s remove Intangible_Up
