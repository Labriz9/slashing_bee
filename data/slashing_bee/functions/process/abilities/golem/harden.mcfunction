
execute if score @s Energy matches ..399 run return 1 
scoreboard players remove @s Energy 400

playsound minecraft:block.grindstone.use player @a ~ ~ ~ 1 0.1

effect give @s resistance 4 30 false
