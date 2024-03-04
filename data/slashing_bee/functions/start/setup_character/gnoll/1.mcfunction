
# Passive
attribute @s minecraft:generic.movement_speed modifier add 1-2-3-4-5 "gnoll" 0.01 add
attribute @s minecraft:generic.attack_speed modifier add 1-2-3-4-5 "gnoll" 0.5 add
item replace entity @s hotbar.2 with arrow
# Ability
tag @s add Add_Bolt1
function slashing_bee:process/abilities/gnoll/add_bolt_loop
