
$execute if score @s $(currency) matches ..$(cost_minus_1) as @e[type=interaction,tag=$(summon_type)_Summon] if data entity @s interaction run function slashing_bee:preparation/summon/macro_pay_summon_2 with entity @s interaction
$execute if score @s $(currency) matches ..$(cost_minus_1) as @e[type=interaction,tag=$(summon_type)_Summon] run data remove entity @s interaction
$execute if score @s $(currency) matches ..$(cost_minus_1) run return 1
$scoreboard players remove @s $(currency) $(cost)
