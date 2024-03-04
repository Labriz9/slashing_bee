
execute as @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] if score @s Dark_Projectile_Touched matches 1.. run return 1 

damage @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] 4 magic
scoreboard players add @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] Dark_Projectile_Touched 1
schedule function slashing_bee:process/clickable_items/dark_wand/touch_clear_loop 2t

scoreboard players add @s Dark_Target_Hit 1
kill @s[scores={Dark_Target_Hit=5..}]
