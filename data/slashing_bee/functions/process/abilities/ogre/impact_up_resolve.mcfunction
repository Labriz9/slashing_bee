
playsound minecraft:block.stone.break player @a ~ ~ ~ 1 .3
particle minecraft:block minecraft:stone ~ ~0.5 ~ 5 0 5 0 300
effect give @e[distance=..6,team=Enemy] minecraft:slowness 5 2 true
execute as @e[distance=..6,team=Enemy] at @s run damage @s 9 minecraft:player_attack by @p[tag=Impact_Up] from @p[tag=Impact_Up]

schedule clear slashing_bee:process/abilities/ogre/impact_detect
tag @a[tag=Impact] remove Impact
tag @a[tag=Impact_Up] remove Impact_Up
