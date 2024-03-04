
execute positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..0.75,limit=1,sort=nearest] add Target_Clap
execute unless block ~ ~ ~ air unless block ~ ~ ~ water run return 0
execute if entity @a[tag=Clap,distance=..10] positioned ^ ^ ^1 run function slashing_bee:process/abilities/geant/clap_ray
execute as @e[tag=Target_Clap] at @s run function slashing_bee:process/abilities/geant/clap_resolve
particle sweep_attack ~ ~ ~ 0 0 0 0 1
