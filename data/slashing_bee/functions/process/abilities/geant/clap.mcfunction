
execute if score @s Energy matches ..199 run return 1
scoreboard players remove @s Energy 200

tag @s add Clap

execute positioned ~ ~1.7 ~ rotated ~-30 ~ run function slashing_bee:process/abilities/geant/clap_ray
execute positioned ~ ~1.7 ~ rotated ~-20 ~ run function slashing_bee:process/abilities/geant/clap_ray
execute positioned ~ ~1.7 ~ rotated ~-10 ~ run function slashing_bee:process/abilities/geant/clap_ray
execute positioned ~ ~1.7 ~ run function slashing_bee:process/abilities/geant/clap_ray
execute positioned ~ ~1.7 ~ rotated ~10 ~ run function slashing_bee:process/abilities/geant/clap_ray
execute positioned ~ ~1.7 ~ rotated ~20 ~ run function slashing_bee:process/abilities/geant/clap_ray
execute positioned ~ ~1.7 ~ rotated ~30 ~ run function slashing_bee:process/abilities/geant/clap_ray
playsound block.fence_gate.open player @a ~ ~ ~ 2 2
playsound entity.firework_rocket.blast player @a ~ ~ ~

tag @s remove Clap
