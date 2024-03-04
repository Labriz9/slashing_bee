
kill @e[type=armor_stand,tag=Summon]

playsound minecraft:block.amethyst_block.chime ambient @a ~ ~ ~ 10 1


# Best rarity display
execute if score rarity_max Variables matches 5 run function slashing_bee:preparation/summon/animation/legendary_particles
execute if score rarity_max Variables matches 5 run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0 50
execute if score rarity_max Variables matches 5 run particle minecraft:flame ~ ~-0.5 ~ 0.5 0.5 0.5 0 50
execute if score rarity_max Variables matches 5 run particle minecraft:crimson_spore ~ ~-0.5 ~ 0.5 0.5 0.5 0 50
execute if score rarity_max Variables matches 5 run particle minecraft:ash ~ ~ ~ 4 3 4 0.1 300
execute if score rarity_max Variables matches 5 run playsound minecraft:ui.toast.challenge_complete player @a
execute if score rarity_max Variables matches 4 run particle dust 0.710 0.090 0.929 1.0 ~ ~ ~ 0.5 0.7 0.5 0 100
execute if score rarity_max Variables matches 4 run particle minecraft:reverse_portal ~ ~ ~ 1.7 1.7 1.7 0 400
execute if score rarity_max Variables matches 4 run particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.1 30
execute if score rarity_max Variables matches 4 run playsound minecraft:block.enchantment_table.use player @a
execute if score rarity_max Variables matches 4 run playsound minecraft:entity.firework_rocket.twinkle_far player @a
execute if score rarity_max Variables matches 4 run playsound minecraft:entity.firework_rocket.large_blast player @a
execute if score rarity_max Variables matches 3 run particle dust 0 0.569 0.996 1.0 ~ ~ ~ 1 1 1 0 200
execute if score rarity_max Variables matches 3 run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 0.6 0.9
execute if score rarity_max Variables matches 3 run playsound minecraft:block.note_block.chime ambient @a ~ ~ ~ 0.6 1.8
execute if score rarity_max Variables matches 2 run particle dust 0 0.8 0.4 1.0 ~ ~ ~ 0.5 0.7 0.5 0 50
execute if score rarity_max Variables matches 1 run particle dust 1 1 1 1.0 ~ ~ ~ 0.5 0.7 0.5 0 50

summon minecraft:interaction ~1 ~ ~-0.9 {Tags:["Quick_Recovery"],height:0.275f}
summon minecraft:text_display ~1 ~ ~-0.4 {Tags:["Quick_Recovery"],text:'{"text":"[Récup]"}'}

data merge block ~ ~ ~ {Lock:""}
function slashing_bee:preparation/summon/chest/empty_chest_detect
