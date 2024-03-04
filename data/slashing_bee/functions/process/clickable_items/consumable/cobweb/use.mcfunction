
execute anchored eyes positioned ^ ^ ^3 unless block ~ ~ ~ air run return 1

item replace entity @s weapon.mainhand with air
execute anchored eyes positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["Cobweb"]}
execute at @e[type=marker,tag=Cobweb] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 cobweb replace air

function slashing_bee:process/clickable_items/consumable/cobweb/loop
