
playsound minecraft:block.stone.break player @a ~ ~ ~ 1 .3
particle minecraft:block minecraft:stone ~ ~0.5 ~ 2 0 2 0 300
effect give @e[distance=..3,team=Enemy] minecraft:slowness 5 2 true
execute as @e[distance=..3,team=Enemy] at @s run damage @s 6 minecraft:player_attack by @p[tag=Impact] from @p[tag=Impact]

effect clear @s resistance

schedule clear slashing_bee:process/abilities/ogre/impact_detect
tag @a[tag=Impact] remove Impact
