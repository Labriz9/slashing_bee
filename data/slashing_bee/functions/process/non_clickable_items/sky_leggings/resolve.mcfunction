
execute store result score sky_leggings Variables run random value 1..5

execute unless score sky_leggings Variables matches 1 run return 1

playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 2 1.5

particle minecraft:angry_villager ~ ~1 ~ 1 0.6 1 1 20

tag @s add Sky_Leggings_Resolve

tag @e[team=Enemy,distance=..5] add Sky_Leggings_Touched

effect give @e[team=Enemy,tag=Sky_Leggings_Touched] levitation 1 40 true

execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
execute as @e[team=Enemy,tag=Sky_Leggings_Touched] at @s facing entity @p[tag=Sky_Leggings_Resolve] eyes positioned ~ ~1 ~ run summon cow ^ ^ ^0.3 {NoAI:1b,Invulnerable:1b,Tags:["Sky_Leggings"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}

tag @s remove Sky_Leggings_Resolve


schedule function slashing_bee:process/non_clickable_items/sky_leggings/resolve_clear 2t
