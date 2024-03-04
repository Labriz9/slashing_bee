
# Quick recovery
execute as @e[type=minecraft:interaction,tag=Quick_Recovery] at @s on target run setblock ~-1 ~ ~0.9 chest[facing=south] destroy
execute as @e[type=minecraft:interaction,tag=Quick_Recovery] at @s on target run tp @e[type=item,distance=..2] @s
execute as @e[type=minecraft:interaction,tag=Quick_Recovery] at @s on target run kill @e[tag=Quick_Recovery,distance=..1]

execute unless entity @e[type=minecraft:interaction,tag=Normal_Summon] positioned 744 70 -407 unless data block ~ ~ ~ Items[0].Count run function slashing_bee:preparation/summon/chest/reset_normal_chest

execute unless entity @e[type=minecraft:interaction,tag=Special_Summon] positioned 755 70 -406 unless data block ~ ~ ~ Items[0].Count run function slashing_bee:preparation/summon/chest/reset_special_chest

execute unless data block 744 70 -407 Items[0].Count unless data block 755 70 -406 Items[0].Count run return 0
schedule function slashing_bee:preparation/summon/chest/empty_chest_detect 2t
