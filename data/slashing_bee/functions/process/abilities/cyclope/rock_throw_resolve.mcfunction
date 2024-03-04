
scoreboard players set @s Rock_Throw 0

tag @e[type=snowball,limit=1,sort=nearest,nbt={Item:{tag:{Cyclops:1b}}}] add Rock_Throw
data modify entity @e[type=snowball,tag=Rock_Throw,limit=1,sort=nearest] Item.tag.CustomModelData set value 1

summon block_display ~ ~ ~ {block_state:{Name:"minecraft:andesite"},Tags:["Rock_Throw","Setup_Rock_Throw"]}
data merge entity @e[type=minecraft:block_display,tag=Setup_Rock_Throw,limit=1,sort=nearest] {transformation:{translation:[-0.5f,-0.5f,-0.5f]}}
function slashing_bee:process/abilities/cyclope/rock_throw_loop

# 5 sec recharge
scoreboard players set @s Reload_Rock_Throw 5
scoreboard players operation @s Reload_Rock_Throw += time Variables
schedule function slashing_bee:process/abilities/cyclope/rock_throw_reload 1s
