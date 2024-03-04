
# Projectiles
execute as @e[type=armor_stand,tag=Ice_Projectile] at @s positioned ~ ~1.7 ~ unless block ^ ^ ^0.75 air run kill @s
execute as @e[type=armor_stand,tag=Ice_Projectile] at @s run tp @s ^ ^ ^0.75

# Projectile Effect
execute as @e[type=armor_stand,tag=Ice_Projectile] at @s positioned ~ ~1.7 ~ run particle snowflake ^ ^ ^-2 0 0 0 0 1
execute as @e[type=armor_stand,tag=Ice_Projectile] at @s positioned ~ ~0.35 ~ if entity @e[team=Enemy,distance=..0.75] run function slashing_bee:process/clickable_items/ice_wand/touch

# Projectile Lifetime
scoreboard players add @e[type=armor_stand,tag=Ice_Projectile] LifeTime 1
kill @e[type=armor_stand,tag=Ice_Projectile,scores={LifeTime=50..}]

execute if entity @e[type=armor_stand,tag=Ice_Projectile] run schedule function slashing_bee:process/clickable_items/ice_wand/loop 1t
