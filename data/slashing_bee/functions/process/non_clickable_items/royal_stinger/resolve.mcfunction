
execute store result score royal_stinger Variables run random value 1..5

execute unless score royal_stinger Variables matches 1 run return 1

particle dust 0 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 20
particle dust 1 1 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 20

summon minecraft:bee ~ ~1 ~ {Tags:["Bee_Soldier","Setup_Bee_Soldier"],DeathLootTable:"slashing_bee:entities/empty",Invulnerable:1b}
summon minecraft:bee ~ ~1 ~ {Tags:["Bee_Soldier","Setup_Bee_Soldier"],DeathLootTable:"slashing_bee:entities/empty",Invulnerable:1b}
summon minecraft:bee ~ ~1 ~ {Tags:["Bee_Soldier","Setup_Bee_Soldier"],DeathLootTable:"slashing_bee:entities/empty",Invulnerable:1b}
team join Player @e[type=bee,tag=Setup_Bee_Soldier]
tag @e[type=bee,tag=Setup_Bee_Soldier] remove Setup_Bee_Soldier
