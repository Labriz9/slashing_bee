
execute if score @s Energy matches ..599 run return 1 
scoreboard players remove @s Energy 600

effect give @s regeneration 5 1 false
# Disable movement
effect give @s jump_boost 5 200 true
attribute @s minecraft:generic.movement_speed modifier add f8bdda8d-cc36-424c-b655-398accc29008 "heal" -1 add
attribute @s minecraft:generic.knockback_resistance modifier add bcfee054-cefe-40ac-8dd8-0c70d172ef23 "heal" 10 add

tag @s add Heal
scoreboard players set @s Heal_Duration 0

function slashing_bee:process/abilities/humain/heal_loop
