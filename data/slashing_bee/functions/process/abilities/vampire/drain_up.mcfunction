
execute if score @s Energy matches ..499 run return 1

tag @s add Drain_Up

function slashing_bee:process/abilities/vampire/drain

tag @s remove Drain_Up
