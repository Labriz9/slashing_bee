
execute as @e[nbt={active_effects:[{id:"minecraft:luck",amplifier:2b}]}] at @s run function slashing_bee:process/bow/electric_bow/resolve

execute if entity @e[type=minecraft:arrow,tag=Electric_Bow_Tipped_Arrow,limit=1,sort=nearest] run schedule function slashing_bee:process/bow/electric_bow/detect 2t
