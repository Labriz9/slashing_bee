
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.5 1

summon marker ~ ~ ~ {Tags:["Dark_Projectile","Setup_Dark_Projectile"]}

execute rotated as @s as @e[type=marker,tag=Setup_Dark_Projectile] run tp ~ ~1.7 ~
tag @e[type=marker,tag=Setup_Dark_Projectile] remove Setup_Dark_Projectile

function slashing_bee:process/clickable_items/dark_wand/loop
