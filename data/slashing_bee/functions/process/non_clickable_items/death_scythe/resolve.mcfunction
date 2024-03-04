
scoreboard players set @s Death_Scythe_Kill 0

execute store result score death_scythe Variables run random value 1..5
execute unless score death_scythe Variables matches 1 run return 1

particle minecraft:dust_color_transition 0.3 0 0.5 1 1 0 0 ~ ~1.7 ~ 0.3 0.3 0.3 0 20

effect give @s regeneration 1 2 false
