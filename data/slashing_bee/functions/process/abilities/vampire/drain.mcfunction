
execute if score @s Energy matches ..499 run return 1 
scoreboard players remove @s Energy 500

damage @s 4

tag @s add Drain
execute as @e[team=!Player,distance=..4,limit=10] run scoreboard players add @p[tag=Drain] Drain 1
execute as @e[team=!Player,distance=..4] run damage @s 4 magic by @p[tag=Drain] from @p[tag=Drain]
particle minecraft:dust 0.75 0 0 1 ~ ~1 ~ 2 0 2 1 50

execute store result storage variables drain byte 1 run scoreboard players get @s Drain
# Drain_Up
execute as @s[tag=Drain_Up] store result storage variables drain byte 1.5 run scoreboard players get @s Drain
scoreboard players set @s Drain 0
function slashing_bee:process/abilities/vampire/macro_drain with storage variables

tag @s remove Drain
