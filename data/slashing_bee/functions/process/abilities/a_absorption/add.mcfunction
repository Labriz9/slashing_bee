
#   Use
#   input in input_add_absorption from scoreboard Variables
#

execute store result score add_absorption Variables run data get entity @s AbsorptionAmount
scoreboard players operation add_absorption Variables += input_add_absorption Variables
# Max absorption = 20
execute if score add_absorption Variables matches 20.. run scoreboard players set add_absorption Variables 20
scoreboard players operation input_set_absorption Variables = add_absorption Variables
function slashing_bee:process/abilities/a_absorption/set
