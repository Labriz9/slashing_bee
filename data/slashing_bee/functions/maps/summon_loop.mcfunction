
execute store result score mob_number Variables run execute if entity @e[team=Enemy]

# Enemy Chase0
tag @a[tag=Adv_player_hurt_entity] add Temp_Adv_player_hurt_entity
tag @a[tag=Adv_player_hurt_entity] remove Adv_player_hurt_entity
execute as @e[team=Enemy,tag=!Chasing_Player] at @s run damage @s 0 minecraft:magic by @p from @p
tag @a[tag=Temp_Adv_player_hurt_entity] add Adv_player_hurt_entity
tag @a[tag=Temp_Adv_player_hurt_entity] remove Temp_Adv_player_hurt_entity
tag @e[team=Enemy,tag=!Chasing_Player] add Chasing_Player

execute store result storage map wave_number int 1 run scoreboard players get Vague Ennemis
function slashing_bee:maps/macro_summon with storage map

schedule function slashing_bee:maps/summon_loop 3t
