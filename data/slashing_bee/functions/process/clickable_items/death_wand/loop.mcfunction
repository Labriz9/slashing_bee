
# Projectiles
execute as @e[type=armor_stand,tag=Death_Projectile] at @s positioned ~ ~1.7 ~ unless block ^ ^ ^0.5 air unless block ^ ^ ^0.5 water run kill @s
execute as @e[type=armor_stand,tag=Death_Projectile] at @s run tp @s ^ ^ ^0.5

# Projectile Effect
execute at @e[type=armor_stand,tag=Death_Projectile] run particle dust 0.5 0 0.5 1 ~ ~1.7 ~ 0.1 0.1 0.1 0 5
execute as @e[type=armor_stand,tag=Death_Projectile] at @s positioned ~ ~0.35 ~ if entity @e[team=Enemy,distance=..0.75] run function slashing_bee:process/clickable_items/death_wand/touch

# Projectile Lifetime
scoreboard players add @e[type=armor_stand,tag=Death_Projectile] LifeTime 1
kill @e[type=armor_stand,tag=Death_Projectile,scores={LifeTime=50..}]

execute if entity @e[type=armor_stand,tag=Death_Projectile] run schedule function slashing_bee:process/clickable_items/death_wand/loop 2t
