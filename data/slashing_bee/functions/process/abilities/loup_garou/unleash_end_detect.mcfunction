
execute if score @s Unleash matches ..0 run tag @s remove Unleash
execute if score @s Unleash matches ..0 run tag @s remove Unleash_Up
execute if score @s Unleash matches ..0 run return 0 

scoreboard players set @s Unleash 0

effect give @s[tag=Unleash,tag=!Unleash_Up] strength 3 1 false
effect give @s[tag=Unleash_Up] strength 3 3 false
effect give @s[tag=Unleash] speed 3 1 true
effect give @s[tag=Unleash] regeneration 1 2 false

playsound minecraft:entity.wolf.growl player @s ~ ~ ~ 0.2
