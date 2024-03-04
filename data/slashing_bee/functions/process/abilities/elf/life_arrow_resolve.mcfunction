
execute as @e[team=Enemy,distance=..2] at @s run damage @s 7 generic by @p[tag=Life_Arrow]
particle happy_villager ~ ~1 ~ 1 1 1 0 50
particle block oak_leaves ~ ~1 ~ 1 1 1 0 20
playsound block.vine.step ambient @a ~ ~ ~ 1
effect clear @s luck
