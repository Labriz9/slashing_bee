
# Not enough Gold
execute if score @s Money matches ..99 as @e[type=interaction,tag=Item_Recover] run data remove entity @s interaction 
execute if score @s Money matches ..99 run function slashing_bee:preparation/cant_afford_title
execute if score @s Money matches ..99 run return 1
scoreboard players remove @s Money 100

# Interaction and Display entity
kill @e[tag=Item_Recover]

execute positioned 356 -58.5 222 run tp @e[type=item,distance=..2] @s

