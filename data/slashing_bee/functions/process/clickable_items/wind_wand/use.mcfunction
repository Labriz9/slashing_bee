
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:ui.toast.in ambient @a ~ ~ ~ 5 1.5

summon marker ~ ~ ~ {Tags:["Wind_Projectile","Setup_Wind_Projectile"]}

execute rotated as @s as @e[type=marker,tag=Setup_Wind_Projectile] run tp ~ ~1.7 ~
tag @e[type=marker,tag=Setup_Wind_Projectile] remove Setup_Wind_Projectile

function slashing_bee:process/clickable_items/wind_wand/loop
