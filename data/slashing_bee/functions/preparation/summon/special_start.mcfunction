
# Pay
data modify storage summon pay set value {currency:"Elite_Key",summon_type:"Special"}
execute store result storage summon pay.cost int 1 run scoreboard players get special_summon_number Variables
scoreboard players operation special_summon_cost_minus_1 Variables = special_summon_number Variables
scoreboard players operation special_summon_cost_minus_1 Variables -= 1 Variables
execute store result storage summon pay.cost_minus_1 int 1 run scoreboard players get special_summon_cost_minus_1 Variables
scoreboard players set cancel_summon Variables 0
execute store result score cancel_summon Variables run function slashing_bee:preparation/summon/macro_pay_summon with storage summon pay
execute if score cancel_summon Variables matches 1 run return 1

# Interaction and Display entity
kill @e[tag=Normal_Summon]
kill @e[tag=Special_Summon]

scoreboard players operation i_item_number Variables = special_summon_number Variables
scoreboard players operation i_item_number Variables -= 1 Variables
scoreboard players set rarity_max Variables 3
data modify storage minecraft:summon x set value 755
data modify storage minecraft:summon y set value 70
data modify storage minecraft:summon z set value -406
function slashing_bee:preparation/summon/special_rarity_select

function slashing_bee:preparation/summon/animation/special_start
