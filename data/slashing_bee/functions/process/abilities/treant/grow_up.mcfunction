
execute if score @s Energy matches ..499 run return 1 
scoreboard players remove @s Energy 500

playsound minecraft:block.azalea_leaves.break player @a ~ ~ ~ 2

scoreboard players operation input_add_absorption Variables = 2 Variables
function slashing_bee:process/abilities/a_absorption/add
