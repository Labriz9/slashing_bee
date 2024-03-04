
execute at @e[tag=Rock_Prison_Touched] run playsound minecraft:block.grindstone.use player @a ~ ~ ~ 10
execute at @e[tag=Rock_Prison_Touched] run effect give @e[team=Enemy,distance=..1] slowness 3 20 true
execute at @e[tag=Rock_Prison_Touched] as @e[team=Enemy,distance=..1] run damage @s 4 generic
tag @e[tag=Rock_Prison_Touched] remove Rock_Prison_Touched
