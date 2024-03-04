
# Projectiles
execute as @e[type=marker,tag=Dark_Projectile] at @s unless block ^ ^ ^0.25 air unless block ^ ^ ^0.25 water run kill @s
execute as @e[type=marker,tag=Dark_Projectile] at @s run tp @s ^ ^ ^0.25

# Projectile Effect
execute at @e[type=marker,tag=Dark_Projectile] run particle dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute as @e[type=marker,tag=Dark_Projectile] at @s positioned ~ ~-1.35 ~ if entity @e[team=Enemy,distance=..0.75] run function slashing_bee:process/clickable_items/dark_wand/touch

# Projectile Lifetime
scoreboard players add @e[type=marker,tag=Dark_Projectile] LifeTime 1
kill @e[type=marker,tag=Dark_Projectile,scores={LifeTime=100..}]

execute if entity @e[type=marker,tag=Dark_Projectile] run schedule function slashing_bee:process/clickable_items/dark_wand/loop 2t
