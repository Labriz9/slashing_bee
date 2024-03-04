
execute if score @s Energy matches ..399 run return 1 
scoreboard players remove @s Energy 400

playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1

summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Fairy_Dust"],Silent:1b,DeathLootTable:"slashing_bee:entities/empty"}

function slashing_bee:process/abilities/fee/fairy_dust_loop
