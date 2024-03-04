
execute if score @s Energy matches ..99 run return 1 
scoreboard players remove @s Energy 200

playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 1

effect give @s absorption 10 1 true
