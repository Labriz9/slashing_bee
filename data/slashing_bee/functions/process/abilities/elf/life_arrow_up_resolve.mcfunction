
execute as @e[team=Enemy,distance=..5] at @s run damage @s 7 generic by @p[tag=Life_Arrow]
particle happy_villager ~ ~1 ~ 2 2 2 0 100
particle block oak_leaves ~ ~1 ~ 2 2 2 0 50
playsound block.vine.step ambient @a ~ ~ ~ 1
playsound block.wood.break ambient @a ~ ~ ~ 1
effect clear @s luck
