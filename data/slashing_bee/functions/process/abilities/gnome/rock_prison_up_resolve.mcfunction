
tag @s remove Target_Rock_Prison_Up
tag @s add Rock_Prison_Up_Touched
scoreboard players remove @a[tag=Rock_Prison_Up] Energy 100

schedule function slashing_bee:process/abilities/gnome/rock_prison_up_damage 6t

# Rock_Prison_Up
execute align xyz run summon minecraft:block_display ~-1 ~-10 ~2 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-10 ~2 {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-10 ~2 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~2 ~-10 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~2 ~-10 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~2 ~-10 ~-1 {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~2 ~-10 ~-1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-10 ~-2 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-10 ~-2 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-1 ~-10 ~-1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-2 ~-10 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-2 ~-10 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}

execute align xyz run summon minecraft:block_display ~ ~-9 ~-2 {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-9 ~-2 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-9 ~-1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~2 ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-9 ~1 {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-9 ~2 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-1 ~-9 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-2 ~-9 ~ {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-1 ~-9 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-9 ~-1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}

execute align xyz run summon minecraft:block_display ~ ~-8 ~-1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-8 ~-1 {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-8 ~0 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~1 ~-8 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-8 ~1 {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-1 ~-8 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-1 ~-8 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}

execute align xyz run summon minecraft:block_display ~ ~-7 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-7 ~-1 {block_state:{Name:"minecraft:andesite"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~ ~-7 ~1 {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}
execute align xyz run summon minecraft:block_display ~-1 ~-7 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}

execute align xyz run summon minecraft:block_display ~ ~-6 ~ {block_state:{Name:"minecraft:stone"},brightness:{sky:15,block:10},Tags:["Rock_Prison"]}

schedule function slashing_bee:process/abilities/gnome/rock_prison_animation 1t

schedule function slashing_bee:process/abilities/gnome/rock_prison_clear 3s append
