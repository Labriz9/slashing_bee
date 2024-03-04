
execute store result score magic_projectile_rot1 Variables run random value 0..360
scoreboard players operation magic_projectile_rot1 Variables -= 180 Variables
execute store result storage variables magic_projectile_rot1 byte 1 run scoreboard players get magic_projectile_rot1 Variables

execute store result score magic_projectile_rot2 Variables run random value 0..180
scoreboard players operation magic_projectile_rot2 Variables -= 90 Variables
execute store result storage variables magic_projectile_rot2 byte 1 run scoreboard players get magic_projectile_rot2 Variables

function slashing_bee:process/abilities/a_magic_projectile/macro_launch with storage variables
