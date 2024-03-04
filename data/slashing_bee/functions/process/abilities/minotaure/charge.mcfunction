
execute if score @s[tag=!Charge_Up] Energy matches ..299 run return 1 
scoreboard players remove @s[tag=!Charge_Up] Energy 300
tag @s remove Charge_Up

tag @s add Charge
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon cow ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["Charge"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}

schedule function slashing_bee:process/abilities/minotaure/charge_clear 3t
schedule function slashing_bee:process/abilities/minotaure/charge_detect 3t
