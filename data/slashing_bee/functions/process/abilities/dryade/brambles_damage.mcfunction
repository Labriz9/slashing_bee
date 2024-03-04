
execute at @e[tag=Brambles_Touched] run playsound minecraft:block.vine.step player @a ~ ~ ~ 10
execute at @e[tag=Brambles_Touched] run effect give @e[team=Enemy,distance=..1] slowness 5 20 true
execute at @e[tag=Brambles_Touched] as @e[team=Enemy,distance=..1] run damage @s 4 generic
tag @e[tag=Brambles_Touched] remove Brambles_Touched
