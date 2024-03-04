
execute store result score @s Overheal_Amount run data get entity @s active_effects[{id:"minecraft:regeneration"}].amplifier 1

execute if score @s Overheal_Amount matches ..1 run scoreboard players operation input_add_absorption Variables = 0 Variables
execute if score @s Overheal_Amount matches 2 run scoreboard players operation input_add_absorption Variables = 1 Variables
execute if score @s Overheal_Amount matches 3 run scoreboard players operation input_add_absorption Variables = 3 Variables
execute if score @s Overheal_Amount matches 4.. run scoreboard players operation input_add_absorption Variables = 6 Variables

function slashing_bee:process/abilities/a_absorption/add

playsound block.amethyst_block.chime player @s ~ ~ ~
