
execute as @e[type=block_display,tag=Rock_Throw] at @s run tp @e[type=snowball,limit=1,sort=nearest,tag=Rock_Throw]
execute as @e[type=block_display,tag=Rock_Throw_Up] at @s unless entity @e[type=snowball,limit=1,sort=nearest,tag=Rock_Throw_Up,distance=..0.5] run function slashing_bee:process/abilities/cyclope/rock_throw_up_loop_end
execute as @e[type=block_display,tag=Rock_Throw] at @s unless entity @e[type=snowball,limit=1,sort=nearest,tag=Rock_Throw,distance=..0.5] run function slashing_bee:process/abilities/cyclope/rock_throw_loop_end

execute if entity @e[type=snowball,tag=Rock_Throw] run schedule function slashing_bee:process/abilities/cyclope/rock_throw_loop 1t
