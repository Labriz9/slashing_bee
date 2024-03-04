
# Projectiles
execute as @e[type=armor_stand,tag=Magic_Projectile] at @s anchored eyes facing entity @e[team=Enemy,tag=!Magic_Projectile,limit=1,sort=nearest] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~

# Projectile Effect
execute at @e[type=armor_stand,tag=Magic_Projectile] run particle end_rod ~ ~ ~ 0 0 0 0 1
execute at @e[type=armor_stand,tag=Magic_Projectile] run particle dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute as @e[type=armor_stand,tag=Magic_Projectile] at @s positioned ~ ~-1.35 ~ run tag @e[team=Enemy,tag=!Magic_Projectile,distance=..0.75,limit=1,sort=nearest] add Magic_Projectile_Touched
execute as @e[type=armor_stand,tag=Magic_Projectile] at @s positioned ~ ~-1.35 ~ if entity @e[team=Enemy,tag=!Magic_Projectile,distance=..0.75,tag=Magic_Projectile_Touched] run function slashing_bee:process/abilities/a_magic_projectile/touch

# Projectile Lifetime
scoreboard players add @e[type=armor_stand,tag=Magic_Projectile] LifeTime 1
kill @e[type=armor_stand,tag=Magic_Projectile,scores={LifeTime=300..}]

execute if entity @e[tag=Magic_Projectile] run schedule function slashing_bee:process/abilities/a_magic_projectile/loop 1t
