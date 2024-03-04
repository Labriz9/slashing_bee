
# Time
scoreboard players add time Variables 1

# Reload
execute as @a[tag=Reload] run function slashing_bee:process/reload/reload_find

# Energy recover
scoreboard players add @a[scores={Energy=..999}] Energy 10
scoreboard players add @a[tag=More_Energy1,scores={Energy=..999}] Energy 3
scoreboard players add @a[tag=More_Energy2,scores={Energy=..999}] Energy 6
scoreboard players add @a[tag=More_Energy3,scores={Energy=..999}] Energy 10
scoreboard players add @a[tag=Arcane_Helmet,scores={Energy=..999}] Energy 10
scoreboard players set @a[scores={Energy=1001..}] Energy 1000
execute store result bossbar energy_player_1 value run scoreboard players get @r[tag=Player1] Energy
execute store result bossbar energy_player_2 value run scoreboard players get @r[tag=Player2] Energy

# Death detect / End game
tag @a[scores={Dead=1..}] add Dead
tp @a[scores={Dead=1..}] @p[tag=!Dead]
gamemode spectator @a[scores={Dead=1..}]
scoreboard players set @a[scores={Dead=1..}] Dead 0 
execute unless entity @a[tag=!Dead] run schedule function slashing_bee:end 1t
execute unless entity @a[tag=!Dead] run return 0

schedule function slashing_bee:process/loop_1s 1s
