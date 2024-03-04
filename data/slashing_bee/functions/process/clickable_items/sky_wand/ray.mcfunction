
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run function slashing_bee:process/clickable_items/sky_wand/resolve
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Sky_Ray,distance=..100] positioned ^ ^ ^1 run function slashing_bee:process/clickable_items/sky_wand/ray
particle angry_villager
