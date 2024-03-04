
execute if score special_summon_number Variables matches 27.. run scoreboard players set special_summon_number Variables 0

scoreboard players operation special_summon_number Variables += 1 Variables

kill @e[tag=Special_Summon]
execute positioned 755 70 -406 run function slashing_bee:preparation/summon/chest/reset_special_chest
