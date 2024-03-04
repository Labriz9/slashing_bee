
tag @s add Royal_Stinger_Ray

scoreboard players set display_particle_royal_stinger_ray Variables 0
execute positioned ~ ~1.7 ~ run function slashing_bee:process/clickable_items/royal_stinger/ray

tag @s remove Royal_Stinger_Ray
