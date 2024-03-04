
tag @s remove Target_Backstab
execute unless block ^ ^1 ^-3 air run return 1
scoreboard players remove @a[tag=Backstab] Energy 300

execute at @a[tag=Backstab] run particle minecraft:spit ~ ~0.5 ~ 0.2 0.7 0.2 0 20

tp @a[tag=Backstab] ^ ^1 ^-3 facing entity @s

effect give @a[tag=Backstab] strength 2 2 false
effect give @a[tag=Backstab_Up] strength 2 5 false
