
execute as @e[type=minecraft:block_display,tag=Earth_Wand,tag=Earth_Wand_Immobile] at @s run particle block stone ~0.5 ~10.5 ~0.5 0.25 0.25 0.25 0 10
execute at @e[type=block_display,tag=Earth_Wand,tag=Earth_Wand_Immobile] positioned ~ ~10 ~ align xyz run fill ~ ~ ~ ~ ~ ~ air replace barrier
kill @e[type=minecraft:block_display,tag=Earth_Wand,tag=Earth_Wand_Immobile]
kill @e[type=minecraft:marker,tag=Earth_Wand]
