
execute at @e[tag=Rock_Prison_Up_Touched] run playsound minecraft:block.grindstone.use player @a ~ ~ ~ 10
execute at @e[tag=Rock_Prison_Up_Touched] run effect give @e[team=Enemy,distance=..2] slowness 3 20 true
execute at @e[tag=Rock_Prison_Up_Touched] as @e[team=Enemy,distance=..2] run damage @s 4 generic
tag @e[tag=Rock_Prison_Up_Touched] remove Rock_Prison_Up_Touched
