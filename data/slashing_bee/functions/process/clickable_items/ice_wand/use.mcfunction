
execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

playsound minecraft:entity.snowball.throw ambient @a ~ ~ ~ 0.5 0.7

summon armor_stand ~ ~ ~ {Marker:1b,Tags:["Ice_Projectile","Setup_Ice_Projectile"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:1}}]}

execute rotated as @s as @e[type=armor_stand,tag=Setup_Ice_Projectile] run tp ~ ~ ~
tag @e[type=armor_stand,tag=Setup_Ice_Projectile] remove Setup_Ice_Projectile

function slashing_bee:process/clickable_items/ice_wand/loop
