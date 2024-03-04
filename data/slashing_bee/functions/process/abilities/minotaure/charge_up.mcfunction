
# Less Energy than normal Charge
execute if score @s Energy matches ..99 run return 1
scoreboard players remove @s Energy 100

tag @s add Charge_Up

function slashing_bee:process/abilities/minotaure/charge
