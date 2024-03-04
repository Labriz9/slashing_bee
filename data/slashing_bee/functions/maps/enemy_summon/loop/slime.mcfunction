
execute as @e[type=slime,tag=!Slime_Set] run data merge entity @s {PersistenceRequired:1b,Attributes:[{Base:450.0d,Name:"minecraft:generic.follow_range"}]}
execute as @e[type=slime,tag=!Slime_Set,nbt={Size:0}] run data merge entity @s {DeathLootTable:"slashing_bee:entities/empty"}
execute as @e[type=slime,tag=!Slime_Set,nbt={Size:1}] run data merge entity @s {DeathLootTable:"slashing_bee:entities/common"}
execute as @e[type=slime,tag=!Slime_Set,nbt={Size:3}] run data merge entity @s {DeathLootTable:"slashing_bee:entities/unusual"}
execute as @e[type=slime,tag=!Slime_Set,nbt={Size:7}] run data merge entity @s {DeathLootTable:"slashing_bee:entities/elite"}
team join Enemy @e[type=slime,tag=!Slime_Set]
tag @e[type=slime,tag=!Slime_Set] add Slime_Set

execute if entity @e[type=slime] run schedule function slashing_bee:maps/enemy_summon/loop/slime 5t
