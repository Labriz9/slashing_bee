
kill @s
particle block andesite ~ ~ ~ 1 1 1 0.5 20
playsound block.stone.break ambient @a
execute as @e[team=Enemy,distance=..3] run damage @s 6 player_attack by @p[tag=Rock_Throw] from @p[tag=Rock_Throw]
