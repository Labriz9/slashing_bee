
execute as @a[tag=Unleash] at @s run function slashing_bee:process/abilities/loup_garou/unleash_end_detect

execute if entity @a[tag=Unleash] run schedule function slashing_bee:process/abilities/loup_garou/unleash_loop 2s
