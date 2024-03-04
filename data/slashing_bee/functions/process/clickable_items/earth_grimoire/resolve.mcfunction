
scoreboard players set @s Delay_Earth_Grimoire 0

playsound minecraft:entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1

execute align y run summon marker ~ ~ ~ {Tags:["Earth_Grimoire_Marker"]}

function slashing_bee:process/clickable_items/earth_grimoire/resolve_loop
