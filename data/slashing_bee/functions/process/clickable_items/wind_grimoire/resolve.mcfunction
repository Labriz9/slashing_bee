
scoreboard players set @s Delay_Wind_Grimoire 0

playsound minecraft:entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1

execute align y run summon marker ~ ~ ~ {Tags:["Wind_Grimoire_Marker"]}

function slashing_bee:process/clickable_items/wind_grimoire/resolve_loop
