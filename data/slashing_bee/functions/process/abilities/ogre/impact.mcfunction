
execute if score @s Energy matches ..399 run return 1 
scoreboard players remove @s Energy 400

tag @s add Impact
effect give @s minecraft:levitation 1 20 true

schedule function slashing_bee:process/abilities/ogre/impact_clear 10t
schedule function slashing_bee:process/abilities/ogre/impact_detect 10t
