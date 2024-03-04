
execute unless score i_animation Variables matches 0..49 run return 0

# Visual
# General
execute if score i_animation Variables matches ..37 at @e[type=armor_stand,tag=Summon] align y run particle minecraft:enchant ~ ~ ~ 0 0.5 0 0.5 10
execute if score i_animation Variables matches ..37 at @e[type=armor_stand,tag=Summon] align y run particle minecraft:firework ~ ~1 ~ 1 3 1 0 1
# Legendary
execute if score i_animation Variables matches 40.. if score rarity_max Variables matches 5 as @e[type=armor_stand,tag=Summon] at @s run function slashing_bee:preparation/summon/animation/macro_summoning_particles {"red":0.996,"green":0.686,"blue":0}
execute if score i_animation Variables matches 40.. if score rarity_max Variables matches 5 run scoreboard players set stop_common_particles Variables 1
# Epic
execute if score i_animation Variables matches 30.. if score rarity_max Variables matches 4 as @e[type=armor_stand,tag=Summon] at @s run function slashing_bee:preparation/summon/animation/macro_summoning_particles {"red":0.710,"green":0.090,"blue":0.929}
execute if score i_animation Variables matches 30.. if score rarity_max Variables matches 4 run scoreboard players set stop_common_particles Variables 1
# Rare
execute if score i_animation Variables matches 20.. if score rarity_max Variables matches 3 as @e[type=armor_stand,tag=Summon] at @s run function slashing_bee:preparation/summon/animation/macro_summoning_particles {"red":0,"green":0.569,"blue":0.996}
execute if score i_animation Variables matches 20.. if score rarity_max Variables matches 3 run scoreboard players set stop_common_particles Variables 1
# Unusual
execute if score i_animation Variables matches 10.. if score rarity_max Variables matches 2 as @e[type=armor_stand,tag=Summon] at @s run function slashing_bee:preparation/summon/animation/macro_summoning_particles {"red":0,"green":0.8,"blue":0.4}
execute if score i_animation Variables matches 10.. if score rarity_max Variables matches 2 run scoreboard players set stop_common_particles Variables 1
# Common
execute unless score stop_common_particles Variables matches 1 if score i_animation Variables matches 0..49 as @e[type=armor_stand,tag=Summon] at @s run function slashing_bee:preparation/summon/animation/macro_summoning_particles {"red":1,"green":1,"blue":1}
execute as @e[type=armor_stand,tag=Summon] at @s run tp @s ~ ~0.02 ~ ~20 ~


# Sound
# General
execute at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.azalea_leaves.fall ambient @a ~ ~ ~ 0.1 0.3
scoreboard players add summon_sound Variables 1
execute if score summon_sound Variables matches 3.. at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 0.1 1
execute if score summon_sound Variables matches 3.. at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 0.1 1
execute if score summon_sound Variables matches 3.. at @e[type=armor_stand,tag=Summon] run scoreboard players set summon_sound Variables 0
# Conditionnal pitch : 0.9 1.1 1.3 1.7 1.8
# Legendary
execute if score i_animation Variables matches 40 if score rarity_max Variables matches 5 at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 1.6 0.9
execute if score i_animation Variables matches 40 if score rarity_max Variables matches 5 at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 2 1.8
# Epic
execute if score i_animation Variables matches 30 if score rarity_max Variables matches 4.. at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 1.6 1.4
execute if score i_animation Variables matches 30 if score rarity_max Variables matches 4.. at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 2 1.7
# Rare
execute if score i_animation Variables matches 20 if score rarity_max Variables matches 3.. at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 2 1.4
# Unusual
execute if score i_animation Variables matches 10 if score rarity_max Variables matches 2.. at @e[type=armor_stand,tag=Summon] run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 2 1.15


scoreboard players operation i_animation Variables += 1 Variables
execute if score i_animation Variables matches 50 as @e[type=armor_stand,tag=Summon] at @s positioned ~ ~-1 ~ run function slashing_bee:preparation/summon/animation/end
schedule function slashing_bee:preparation/summon/animation/loop 3t
