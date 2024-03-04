
execute at @e[tag=Earth_Wand_Damage] run playsound minecraft:block.stone.break block @a ~ ~ ~ 10
execute at @e[tag=Earth_Wand_Damage] run tag @e[team=Enemy,distance=..2] add Earth_Wand_Touched
execute at @e[tag=Earth_Wand_Damage] run effect give @e[team=Enemy,tag=Earth_Wand_Touched,distance=..2] levitation 1 50 true
tag @e[type=marker,tag=Earth_Wand_Damage] remove Earth_Wand_Damage

# Clear and Hitbox
schedule function slashing_bee:process/clickable_items/earth_wand/damage_clear 2t
