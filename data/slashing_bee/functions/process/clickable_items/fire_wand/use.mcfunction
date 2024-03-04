
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:item.firecharge.use ambient @a ~ ~ ~ 0.5

summon marker ~ ~ ~ {Tags:["Fire_Projectile","Setup_Fire_Projectile"]}

execute rotated as @s as @e[type=marker,tag=Setup_Fire_Projectile] run tp ~ ~1.7 ~
tag @e[type=marker,tag=Setup_Fire_Projectile] remove Setup_Fire_Projectile

function slashing_bee:process/clickable_items/fire_wand/loop
