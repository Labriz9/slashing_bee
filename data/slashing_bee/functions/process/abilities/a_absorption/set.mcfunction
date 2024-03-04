
#   Use
#   input in input_absorption from scoreboard Variables
#

#   effect absorption
#   $(plus) + input/4
#   * 4 
#   damage
#   $(minus) - [(input/4 + 1) * 4 - input]

scoreboard players operation var_absorption Variables = input_set_absorption Variables
scoreboard players operation var_absorption Variables /= 4 Variables
execute store result storage minecraft:absorption plus byte 1 run scoreboard players get var_absorption Variables

scoreboard players operation var_absorption Variables += 1 Variables
scoreboard players operation var_absorption Variables *= 4 Variables
scoreboard players operation var_absorption Variables -= input_set_absorption Variables
execute store result storage minecraft:absorption minus byte 1 run scoreboard players get var_absorption Variables

function slashing_bee:process/abilities/a_absorption/macro_set with storage minecraft:absorption
