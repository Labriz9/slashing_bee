
execute at @a[tag=Soul_Penetration] run effect give @e[team=Enemy,distance=..0.5] wither 1 3

execute if entity @a[tag=Soul_Penetration] run schedule function slashing_bee:process/abilities/spectre/soul_penetration_detect 1t
