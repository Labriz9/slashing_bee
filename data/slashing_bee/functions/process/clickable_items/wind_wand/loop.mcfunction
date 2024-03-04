
# Projectiles
execute as @e[type=marker,tag=Wind_Projectile] at @s unless block ^ ^ ^1 air run kill @s
execute as @e[type=marker,tag=Wind_Projectile] at @s run tp @s ^ ^ ^1

# Projectile Effect
execute at @e[type=marker,tag=Wind_Projectile] run particle dust 0 0.584 0.282 2.5 ~ ~ ~ 0.3 0.3 0.3 0 2
execute as @e[type=marker,tag=Wind_Projectile] at @s positioned ~ ~-1.35 ~ if entity @e[team=Enemy,distance=..1] run function slashing_bee:process/clickable_items/wind_wand/touch

# Projectile Lifetime
scoreboard players add @e[type=marker,tag=Wind_Projectile] LifeTime 1
kill @e[type=marker,tag=Wind_Projectile,scores={LifeTime=50..}]

execute if entity @e[type=marker,tag=Wind_Projectile] run schedule function slashing_bee:process/clickable_items/wind_wand/loop 1t
