
effect clear @e[team=Enemy,tag=Earth_Wand_Touched] levitation
tag @e[team=Enemy,tag=Earth_Wand_Touched] remove Earth_Wand_Touched

# Hitbox
execute at @e[type=block_display,tag=Earth_Wand,tag=Earth_Wand_Immobile] positioned ~ ~10 ~ align xyz run setblock ~ ~ ~ barrier keep
