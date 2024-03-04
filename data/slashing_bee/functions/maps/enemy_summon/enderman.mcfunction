
summon minecraft:enderman ~ ~1 ~ {DeathLootTable:"slashing_bee:entities/elite",Team:"Enemy",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Tags:["Setup_Summon","Chasing_Player"]}
execute as @e[type=enderman,tag=Setup_Summon] run data merge entity @s {PersistenceRequired:1b,Attributes:[{Base:450.0d,Name:"minecraft:generic.follow_range"}]}
tag @e[type=enderman,tag=Setup_Summon] remove Setup_Summon
