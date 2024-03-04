
execute if score @s Energy matches ..399 run return 1 
scoreboard players remove @s Energy 400

tag @s add Frenzy
effect give @s speed 3 1 false

schedule function slashing_bee:process/abilities/goblin/frenzy_loop 3s
