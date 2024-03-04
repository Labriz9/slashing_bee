
# Projectiles
execute as @e[type=marker,tag=Fire_Projectile] at @s unless block ^ ^ ^0.5 air run kill @s
execute as @e[type=marker,tag=Fire_Projectile] at @s run tp @s ^ ^ ^0.5

# Projectile Effect
execute at @e[type=marker,tag=Fire_Projectile] run particle flame ~ ~ ~ 0.1 0.1 0.1 0 5
execute as @e[type=marker,tag=Fire_Projectile] at @s positioned ~ ~-1.35 ~ if entity @e[team=Enemy,distance=..0.75] run function slashing_bee:process/clickable_items/fire_wand/touch

# Projectile Lifetime
scoreboard players add @e[type=marker,tag=Fire_Projectile] LifeTime 1
kill @e[type=marker,tag=Fire_Projectile,scores={LifeTime=50..}]

execute if entity @e[type=marker,tag=Fire_Projectile] run schedule function slashing_bee:process/clickable_items/fire_wand/loop 2t
