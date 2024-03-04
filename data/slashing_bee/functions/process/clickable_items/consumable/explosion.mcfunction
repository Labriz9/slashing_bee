
item replace entity @s weapon.mainhand with air

particle flame ~ ~1 ~ 0 0 0 0.7 300
particle explosion ~ ~1 ~ 5 2 5 0 300
playsound entity.generic.explode player @a ~ ~ ~ 3

execute as @e[team=Enemy,distance=..15] run damage @s 8 magic
execute as @e[team=Enemy,distance=..15] run data modify entity @s Fire set value 100
