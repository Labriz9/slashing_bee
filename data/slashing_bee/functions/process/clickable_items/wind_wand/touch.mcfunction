
execute at @e[type=marker,tag=Wind_Projectile] run particle dust 0 0.584 0.282 2 ~ ~1 ~ 0.5 0.5 0.5 0 20
effect give @e[team=Enemy,distance=..2] levitation 2 4
kill @s
