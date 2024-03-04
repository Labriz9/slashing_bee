
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:particle.soul_escape ambient @a ~ ~ ~ 5 1

summon armor_stand ~ ~ ~ {Marker:1b,Tags:["Death_Projectile","Setup_Death_Projectile"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}

execute rotated as @s as @e[type=armor_stand,tag=Setup_Death_Projectile] run tp ~ ~ ~
tag @e[type=armor_stand,tag=Setup_Death_Projectile] remove Setup_Death_Projectile

function slashing_bee:process/clickable_items/death_wand/loop
