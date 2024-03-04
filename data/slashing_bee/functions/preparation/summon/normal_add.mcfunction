
execute if score normal_summon_number Variables matches 27.. run scoreboard players set normal_summon_number Variables 0

scoreboard players operation normal_summon_number Variables += 1 Variables

kill @e[tag=Normal_Summon]
execute positioned 744 70 -407 run function slashing_bee:preparation/summon/chest/reset_normal_chest
