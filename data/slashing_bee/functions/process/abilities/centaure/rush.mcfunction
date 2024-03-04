
execute if score @s Energy matches ..299 run return 1 
scoreboard players remove @s Energy 300

tag @s add Rush
effect give @s resistance 1 5 true
execute on vehicle run attribute @s generic.movement_speed modifier add 27fa453a-48eb-4d37-8e6e-21e8c542b000 "rush" 5 multiply_base

schedule function slashing_bee:process/abilities/centaure/rush_clear 5t
function slashing_bee:process/abilities/centaure/rush_loop
