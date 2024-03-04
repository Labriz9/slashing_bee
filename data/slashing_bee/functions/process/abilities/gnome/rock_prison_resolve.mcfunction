
tag @s remove Target_Rock_Prison
tag @s add Rock_Prison_Touched
scoreboard players remove @a[tag=Rock_Prison] Energy 100

schedule function slashing_bee:process/abilities/gnome/rock_prison_damage 6t

# Rock_Prison
execute align xyz run summon minecraft:block_display ~ ~-10 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-10 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-10 ~-1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-1 ~-10 ~ {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-9 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-9 ~ {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-8 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
schedule function slashing_bee:process/abilities/gnome/rock_prison_animation 1t

schedule function slashing_bee:process/abilities/gnome/rock_prison_clear 3s append
