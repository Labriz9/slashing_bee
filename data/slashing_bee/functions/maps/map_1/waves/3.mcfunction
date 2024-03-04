
# Max Simultaneous Mobs = 70
execute if score mob_number Variables matches 70.. run return 0

execute store result score random_enemy Variables run random value 1..1000
execute if score random_enemy Variables matches 1..500 run function slashing_bee:maps/enemy_summon/zombie
execute if score random_enemy Variables matches 501..1000 run function slashing_bee:maps/enemy_summon/spider
execute if score random_enemy Variables matches 501..1000 run function slashing_bee:maps/enemy_summon/spider

# Mob summoned for this wave, max = 100
scoreboard players add wave_mob_summoned Variables 1
scoreboard players set Ennemis_Restants Ennemis 101
scoreboard players operation Ennemis_Restants Ennemis -= wave_mob_summoned Variables

execute if score wave_mob_summoned Variables matches ..100 run return 1
scoreboard players add Vague Ennemis 1
scoreboard players set wave_mob_summoned Variables 0
