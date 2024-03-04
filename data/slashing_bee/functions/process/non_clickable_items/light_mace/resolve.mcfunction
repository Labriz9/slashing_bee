
execute store result score light_mace Variables run random value 1..20
execute unless score light_mace Variables matches 1 run return 1

particle flash ~ ~ ~ 1 1 1 0 10
tag @e[team=Enemy,distance=..5] add Light_Mace_Touched
scoreboard players set @e[team=Enemy,distance=..5,tag=Light_Mace_Touched] Light_Mace_Duration 0
execute if entity @e[team=Enemy,distance=..5,tag=Light_Mace_Touched] run function slashing_bee:process/non_clickable_items/light_mace/resolve_loop
