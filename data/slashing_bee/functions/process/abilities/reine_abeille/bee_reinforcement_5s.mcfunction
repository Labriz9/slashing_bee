
particle minecraft:dust_color_transition 0 0 0 1 1 1 0 ~ ~1 ~ 0.5 0.5 0.5 1 50

execute at @a[tag=Bee_Reinforcement3] run summon minecraft:bee ~ ~1 ~ {Tags:["Bee_Soldier","Setup_Bee_Soldier"],DeathLootTable:"slashing_bee:entities/empty",Invulnerable:1b}
execute at @a[tag=Bee_Reinforcement3] run summon minecraft:bee ~ ~1 ~ {Tags:["Bee_Soldier","Setup_Bee_Soldier"],DeathLootTable:"slashing_bee:entities/empty",Invulnerable:1b}
execute at @a[tag=Bee_Reinforcement3] run summon minecraft:bee ~ ~1 ~ {Tags:["Bee_Soldier","Setup_Bee_Soldier"],DeathLootTable:"slashing_bee:entities/empty",Invulnerable:1b}
team join Player @e[type=bee,tag=Setup_Bee_Soldier]
tag @e[type=bee,tag=Setup_Bee_Soldier] remove Setup_Bee_Soldier

execute if entity @a[tag=Bee_Reinforcement3] run schedule function slashing_bee:process/abilities/reine_abeille/bee_reinforcement_5s 5s
