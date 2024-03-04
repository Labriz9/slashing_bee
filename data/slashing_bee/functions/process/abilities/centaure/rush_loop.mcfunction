
execute as @e[tag=Rush] at @s run particle minecraft:block minecraft:dirt ~ ~0.2 ~ 0.5 0 0.5 0 10
execute as @e[tag=Rush] at @s as @e[distance=..2,team=Enemy] at @s run damage @s 6 minecraft:player_attack by @p[tag=Rush] from @p[tag=Rush]

execute if entity @a[tag=Rush] run schedule function slashing_bee:process/abilities/centaure/rush_loop 1t
