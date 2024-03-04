
execute store result score ice_boots Variables run random value 1..5

execute unless score ice_boots Variables matches 1 run return 1

playsound minecraft:block.glass.break player @a ~ ~ ~ 1
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 0.5

particle snowflake ~ ~1 ~ 0 0 0 0.1 100
particle dust_color_transition 1 1 1 1 0.21 0.62 1 ~ ~1 ~ 1 0.5 1 0 100

effect give @e[team=Enemy,distance=..3] slowness 10 1 false
effect give @e[team=Enemy,distance=..3] weakness 10 0 true
