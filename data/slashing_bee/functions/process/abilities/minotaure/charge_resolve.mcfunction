
playsound minecraft:block.stone.break player @a ~ ~ ~ 1 .3
particle minecraft:block minecraft:stone ~ ~0.5 ~ 2 0 2 0 300
effect give @e[distance=..3,team=Enemy] minecraft:levitation 1 40 true
schedule function slashing_bee:process/abilities/minotaure/charge_resolve_clear 2t
execute as @e[distance=..3,team=Enemy] at @s run damage @s 4 minecraft:player_attack by @p[tag=Charge] from @p[tag=Charge]

effect clear @s resistance

schedule clear slashing_bee:process/abilities/minotaure/charge_detect
tag @a[tag=Charge] remove Charge
