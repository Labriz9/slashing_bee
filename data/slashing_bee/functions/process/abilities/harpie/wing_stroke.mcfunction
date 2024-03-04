
execute if score @s[tag=!Wing_Stroke_Up] Energy matches ..199 run return 1 
scoreboard players remove @s[tag=!Wing_Stroke_Up] Energy 200
tag @s remove Wing_Stroke_Up

summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Wing_Stroke"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}

schedule function slashing_bee:process/abilities/harpie/wing_stroke_clear 3t
