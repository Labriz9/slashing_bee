
execute if score @s Energy matches ..199 run return 1 
scoreboard players remove @s Energy 200

schedule function slashing_bee:process/abilities/dryade/brambles_damage 6t

tag @e[team=Enemy,distance=..10] add Brambles_Touched
execute at @e[team=Enemy,distance=..10] align xyz unless entity @e[type=block_display,tag=Brambles,distance=..0.5] run summon minecraft:block_display ~ ~-10 ~ {block_state:{Name:"minecraft:spruce_leaves"},brightness:{sky:15,block:10},Tags:["Brambles"]}
execute at @e[team=Enemy,distance=..10] align xyz unless entity @e[type=block_display,tag=Brambles,distance=..0.5] run summon minecraft:block_display ~ ~-9 ~ {block_state:{Name:"minecraft:spruce_leaves"},brightness:{sky:15,block:10},Tags:["Brambles"]}
schedule function slashing_bee:process/abilities/dryade/brambles_animation 1t

schedule function slashing_bee:process/abilities/dryade/brambles_clear 2s append
