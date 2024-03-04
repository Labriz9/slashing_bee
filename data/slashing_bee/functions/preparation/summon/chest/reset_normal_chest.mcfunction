
execute positioned ~1 ~1.2 ~0.3 run kill @e[tag=Quick_Recovery,distance=..1]

execute store result storage chest number int 1 run scoreboard players get normal_summon_number Variables
scoreboard players operation normal_summon_cost Variables = normal_summon_number Variables
scoreboard players operation normal_summon_cost Variables *= 50 Variables
execute store result storage chest cost int 1 run scoreboard players get normal_summon_cost Variables
data merge storage chest {summon_type:"Normal",color_cost:"gold"}
function slashing_bee:preparation/summon/chest/macro_empty_chest_detect with storage chest

data merge block ~ ~ ~ {Lock:"summon"}
