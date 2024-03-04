
scoreboard players add @e[team=Enemy,scores={Dark_Projectile_Touched=1..}] Dark_Projectile_Touched 1
scoreboard players set @e[team=Enemy,scores={Dark_Projectile_Touched=7..}] Dark_Projectile_Touched 0

execute if entity @e[team=Enemy,scores={Dark_Projectile_Touched=1..}] run schedule function slashing_bee:process/clickable_items/dark_wand/touch_clear_loop 2t
