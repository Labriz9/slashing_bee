
summon minecraft:zombie ~ ~1 ~ {ArmorItems:[{},{},{},{id:carved_pumpkin,Count:1b}],DeathLootTable:"slashing_bee:entities/unusual",Team:"Enemy",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Tags:["Setup_Summon"],IsBaby:1b}
execute as @e[type=zombie,tag=Setup_Summon] run data merge entity @s {Attributes:[{Base:10.0d,Name:"minecraft:generic.max_health"},{Base:450.0d,Name:"minecraft:generic.follow_range"}],PersistenceRequired:1b}
tag @e[type=zombie,tag=Setup_Summon] remove Setup_Summon
