
execute if score @s Energy matches ..699 run return 1 
scoreboard players remove @s Energy 700

tag @s add Unleash
effect give @s strength 3 1 false
effect give @s speed 3 1 true
effect give @s regeneration 1 2 false

playsound minecraft:entity.wolf.howl player @a ~ ~ ~ 10

schedule function slashing_bee:process/abilities/loup_garou/unleash_loop 2s
