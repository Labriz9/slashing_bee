
scoreboard players set @s Earth_Shield_Block 0

execute if score @s Energy matches ..49 run return 1 
scoreboard players remove @s Energy 50

particle block cobblestone ~ ~1 ~ 1 0.3 1 0 20

execute as @e[team=Enemy,distance=..3] run damage @s 1 magic by @p[tag=Earth_Shield] from @p[tag=Earth_Shield]
