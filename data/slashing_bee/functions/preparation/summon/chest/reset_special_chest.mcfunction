
execute positioned ~1 ~1.2 ~0.3 run kill @e[tag=Quick_Recovery,distance=..1]

execute store result storage chest number int 1 run scoreboard players get special_summon_number Variables
execute store result storage chest cost int 1 run scoreboard players get special_summon_number Variables
data merge storage chest {summon_type:"Special",color_cost:"#B500ED"}
function slashing_bee:preparation/summon/chest/macro_empty_chest_detect with storage chest

data merge block ~ ~ ~ {Lock:"summon"}
