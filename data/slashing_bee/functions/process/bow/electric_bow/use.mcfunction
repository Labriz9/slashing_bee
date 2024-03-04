
tag @e[type=arrow,limit=1,sort=nearest] add Electric_Bow_Arrow

summon arrow ~ ~ ~ {Tags:["Electric_Bow_Tipped_Arrow"],custom_potion_effects:[{amplifier:2,duration:100,id:"luck",show_particles:0b}],Color:16770560}
tp @e[type=minecraft:arrow,tag=Electric_Bow_Tipped_Arrow,limit=1,sort=nearest] @e[type=minecraft:arrow,tag=Electric_Bow_Arrow,limit=1,sort=nearest]
data modify entity @e[type=minecraft:arrow,tag=Electric_Bow_Tipped_Arrow,limit=1,sort=nearest] Motion set from entity @e[type=minecraft:arrow,tag=Electric_Bow_Arrow,limit=1,sort=nearest] Motion
kill @e[type=minecraft:arrow,tag=Electric_Bow_Arrow,limit=1,sort=nearest]

function slashing_bee:process/bow/electric_bow/detect


# 2 sec recharge
scoreboard players set @s Reload_Electric_Bow 2 
scoreboard players operation @s Reload_Electric_Bow += time Variables
tag @s add Reload
