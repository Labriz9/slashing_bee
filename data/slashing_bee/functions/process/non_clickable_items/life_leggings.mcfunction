
execute store result score life_leggings Variables run random value 1..10

execute unless score life_leggings Variables matches 1 run return 1

playsound minecraft:block.azalea_leaves.step ambient @a ~ ~ ~ 0.5
playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 1 0.5

particle totem_of_undying ~ ~1 ~ 0.1 0.1 0.1 0.4 100

effect give @s regeneration 5 1 false
