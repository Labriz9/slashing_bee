
# Projectiles
execute as @e[type=marker,tag=Life_Projectile] at @s run tp @s ^ ^ ^0.75

# Projectile Effect
execute at @e[type=marker,tag=Life_Projectile] run particle totem_of_undying ~ ~ ~ 0.1 0.1 0.1 0 5
execute as @e[type=marker,tag=Life_Projectile] at @s positioned ~ ~-1.35 ~ if entity @e[team=Player,tag=!Life_Projectile_Sender,distance=..0.75] run function slashing_bee:process/clickable_items/life_wand/touch

# Projectile Lifetime
scoreboard players add @e[type=marker,tag=Life_Projectile] LifeTime 1
kill @e[type=marker,tag=Life_Projectile,scores={LifeTime=50..}]

execute if entity @e[tag=Life_Projectile] run schedule function slashing_bee:process/clickable_items/life_wand/loop 1t
