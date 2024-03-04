
execute as @e[type=cat,tag=Witch_Cat] run ride @s dismount
kill @e[type=!cat,tag=Witch_Cat]
execute at @e[type=cat,tag=Witch_Cat] run particle minecraft:dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 30
execute as @e[type=cat,tag=Witch_Cat] run data merge entity @s {Silent:0b}
effect clear @e[type=cat,tag=Witch_Cat] invisibility
