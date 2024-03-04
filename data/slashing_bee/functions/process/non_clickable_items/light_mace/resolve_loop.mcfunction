
scoreboard players add @e[team=Enemy,tag=Light_Mace_Touched] Light_Mace_Duration 1
execute as @e[team=Enemy,tag=Light_Mace_Touched,scores={Light_Mace_Duration=..100}] at @s run tp @s
tag @e[team=Enemy,tag=Light_Mace_Touched,scores={Light_Mace_Duration=101..}] remove Light_Mace_Touched

execute if entity @e[team=Enemy,tag=Light_Mace_Touched] run schedule function slashing_bee:process/non_clickable_items/light_mace/resolve_loop 1t
