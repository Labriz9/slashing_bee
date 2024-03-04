
scoreboard players set @s Delay_Life_Grimoire 0

playsound minecraft:entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1

execute align y run summon marker ~ ~ ~ {Tags:["Life_Grimoire_Marker"]}

summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Life_Grimoire"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Life_Grimoire"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Life_Grimoire"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Life_Grimoire"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
summon bat ~ ~1 ~ {Invulnerable:1b,Tags:["Life_Grimoire"],Silent:1b,DeathLootTable:"slashing_bee:entities/other/empty"}

function slashing_bee:process/clickable_items/life_grimoire/resolve_loop
