
execute as @e[team=Enemy,distance=..5] run damage @s 5 magic
particle explosion ~ ~ ~ 2.5 1 2.5 0 50
playsound entity.generic.explode player @a
kill @s
