
execute as @a[tag=Petrification] at @s positioned ~ ~1.7 ~ run function slashing_bee:process/abilities/gorgone/petrification_ray

execute if entity @a[tag=Petrification] run schedule function slashing_bee:process/abilities/gorgone/petrification_detect 1s
