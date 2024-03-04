
scoreboard players set @s Delay_Ice_Grimoire 0

playsound minecraft:block.glass.break player @a ~ ~ ~ 1
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 0.5

particle explosion ~ ~1 ~ 2 2 2 0 10
particle snowflake ~ ~1 ~ 0 0 0 0.5 200
particle dust_color_transition 1 1 1 1 0.21 0.62 1 ~ ~1 ~ 2 1 2 0 200

execute as @e[team=Enemy,distance=..10] run damage @s 4 magic
effect give @e[team=Enemy,distance=..10] slowness 10 2 false
effect give @e[team=Enemy,distance=..10] weakness 10 0 true
