
execute as @a[tag=Rock_Throw,scores={Reload_Rock_Throw=1..,Energy=200..}] if score @s Reload_Rock_Throw <= time Variables run function slashing_bee:process/abilities/cyclope/rock_throw_give

execute if entity @a[tag=Rock_Throw,scores={Reload_Rock_Throw=1..}] run schedule function slashing_bee:process/abilities/cyclope/rock_throw_reload 1s
