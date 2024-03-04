
execute if score @s Energy matches ..199 run return 1 
scoreboard players remove @s Energy 200

tag @s add Life_Projectile_Sender

playsound minecraft:block.azalea_leaves.step ambient @a ~ ~ ~ 0.5
playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 1 0.5

summon marker ~ ~ ~ {Tags:["Life_Projectile","Setup_Life_Projectile"]}

execute rotated as @s as @e[type=marker,tag=Setup_Life_Projectile] run tp ~ ~1.7 ~
tag @e[type=marker,tag=Setup_Life_Projectile] remove Setup_Life_Projectile

function slashing_bee:process/clickable_items/life_wand/loop
schedule function slashing_bee:process/clickable_items/life_wand/use_clear 2t
