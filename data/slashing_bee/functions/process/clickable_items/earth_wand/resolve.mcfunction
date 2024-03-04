
execute align y run summon marker ~ ~1 ~ {Tags:["Earth_Wand","Earth_Wand_Damage"]}

scoreboard players remove @a[tag=Earth_Wand] Energy 100

# Damage and block hitbox
schedule function slashing_bee:process/clickable_items/earth_wand/damage 6t

execute positioned ^-1 ^ ^ align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^ ^ ^ align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^1 ^ ^ align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^-1 ^0.90 ^-0.2 align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^ ^0.90 ^-0.2 align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^1 ^0.90 ^-0.2 align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^-1 ^1.90 ^-0.4 align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^ ^1.90 ^-0.4 align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
execute positioned ^1 ^1.90 ^-0.4 align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Earth_Wand"]}
schedule function slashing_bee:process/clickable_items/earth_wand/animation 1t

execute unless entity @e[type=block_display,tag=Earth_Wand_Immobile] run schedule function slashing_bee:process/clickable_items/earth_wand/clear 7s
