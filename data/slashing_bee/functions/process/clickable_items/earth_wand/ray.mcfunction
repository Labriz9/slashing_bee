
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run function slashing_bee:process/clickable_items/earth_wand/resolve
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Earth_Wand,distance=..10] positioned ^ ^ ^1 run function slashing_bee:process/clickable_items/earth_wand/ray
particle block stone
