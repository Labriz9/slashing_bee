
advancement revoke @a from slashing_bee:root

# Clear scoreboard sidebar
scoreboard objectives add Temp dummy
scoreboard objectives setdisplay sidebar Temp
scoreboard objectives remove Temp

# Clear interaction and text_display entity
kill @e[tag=Map_Select]
kill @e[tag=Normal_Summon]
kill @e[tag=Special_Summon]
