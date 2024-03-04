
execute if score @s Energy matches ..299 run return 1 
scoreboard players remove @s Energy 300

playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 1

summon marker ~ ~ ~ {Tags:["Venom"]}

function slashing_bee:process/abilities/gorgone/venom_loop
