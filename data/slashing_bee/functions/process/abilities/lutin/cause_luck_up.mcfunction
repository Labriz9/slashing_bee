
# Less Energy than normal Cause_Luck
execute if score @s Energy matches ..499 run return 1

tag @s add Cause_Luck_Up

function slashing_bee:process/abilities/lutin/cause_luck

tag @s remove Cause_Luck_Up
