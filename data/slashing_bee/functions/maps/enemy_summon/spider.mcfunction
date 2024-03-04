
summon minecraft:spider ~ ~1 ~ {DeathLootTable:"slashing_bee:entities/common",Team:"Enemy",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Tags:["Setup_Summon"]}
execute as @e[type=spider,tag=Setup_Summon] run data merge entity @s {Attributes:[{Base:5.0d,Name:"minecraft:generic.max_health"},{Base:0.4d,Name:"minecraft:generic.movement_speed"},{Base:450.0d,Name:"minecraft:generic.follow_range"}],PersistenceRequired:1b}
tag @e[type=spider,tag=Setup_Summon] remove Setup_Summon
