
execute if score @s Energy matches ..399 run return 1 
scoreboard players remove @s Energy 400

tag @s add Hellish_Liberation

playsound entity.generic.explode ambient @a ~ ~ ~

execute if entity @s[tag=!Hellish_Liberation_Up] store result storage variables hellish_liberation byte 3 run scoreboard players get @s Demonic_Fury_Level
execute if entity @s[tag=Hellish_Liberation_Up] store result storage variables hellish_liberation byte 4.5 run scoreboard players get @s Demonic_Fury_Level
function slashing_bee:process/abilities/demon/macro_hellish_liberation with storage variables

function slashing_bee:process/abilities/demon/demonic_fury_stop

tag @s remove Hellish_Liberation
