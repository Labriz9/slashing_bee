
kill @s
particle block cobblestone ~ ~ ~ 2 2 2 0.5 50
playsound block.stone.break ambient @a
execute as @e[team=Enemy,distance=..5] run damage @s 6 player_attack by @p[tag=Rock_Throw_Up] from @p[tag=Rock_Throw_Up]
