
execute at @e[type=marker,tag=Venom,tag=!Venom_Up] run effect give @e[team=Enemy,distance=..3] minecraft:wither 1 1 false
execute at @e[type=marker,tag=Venom_Up] run effect give @e[team=Enemy,distance=..3] minecraft:wither 1 2 false
execute at @e[type=marker,tag=Venom] run particle minecraft:dust 0.5 0 0.5 1 ~ ~0.1 ~ 1.5 0 1.5 1 100

scoreboard players add @e[type=marker,tag=Venom] LifeTime 1
kill @e[type=marker,tag=Venom,scores={LifeTime=15..}]

execute if entity @e[type=marker,tag=Venom] run schedule function slashing_bee:process/abilities/gorgone/venom_loop 1s
