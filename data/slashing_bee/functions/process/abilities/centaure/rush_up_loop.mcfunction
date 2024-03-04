
execute as @e[tag=Rush_Up] at @s run particle minecraft:block minecraft:dirt ~ ~0.2 ~ 0.5 0 0.5 0 10
execute as @e[tag=Rush_Up] at @s as @e[distance=..2,team=Enemy] at @s run damage @s 10 minecraft:player_attack by @p[tag=Rush_Up] from @p[tag=Rush_Up]

execute if entity @a[tag=Rush_Up] run schedule function slashing_bee:process/abilities/centaure/rush_up_loop 1t
