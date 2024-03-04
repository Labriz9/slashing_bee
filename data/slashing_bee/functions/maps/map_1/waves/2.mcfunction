
# Max Simultaneous Mobs = 50
execute if score mob_number Variables matches 50.. run return 0

execute store result score random_enemy Variables run random value 1..1000
execute if score random_enemy Variables matches 1..800 run function slashing_bee:maps/enemy_summon/zombie
execute if score random_enemy Variables matches 801..999 run function slashing_bee:maps/enemy_summon/skeleton
execute if score random_enemy Variables matches 1000 run function slashing_bee:maps/enemy_summon/enderman

# Mob summoned for this wave, max = 100
scoreboard players add wave_mob_summoned Variables 1
scoreboard players set Ennemis_Restants Ennemis 101
scoreboard players operation Ennemis_Restants Ennemis -= wave_mob_summoned Variables

execute if score wave_mob_summoned Variables matches ..100 run return 1
effect give @a night_vision infinite 0 true
time set 18000
scoreboard players add Vague Ennemis 1
scoreboard players set wave_mob_summoned Variables 0
