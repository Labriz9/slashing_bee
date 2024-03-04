
execute if score magic_projectile_launch_i Variables matches ..0 run return 0

function slashing_bee:process/abilities/a_magic_projectile/launch

scoreboard players operation magic_projectile_launch_i Variables -= 1 Variables
function slashing_bee:process/abilities/a_magic_projectile/launch_n_loop
