
# Passive
attribute @s minecraft:generic.movement_speed modifier add 1-2-3-4-5 "gnoll" 0.03 add
attribute @s minecraft:generic.attack_speed modifier add 1-2-3-4-5 "gnoll" 1.5 add
item replace entity @s hotbar.2 with arrow
tag @s add More_Money
# Ability
tag @s add Add_Bolt2
function slashing_bee:process/abilities/gnoll/add_bolt_loop
