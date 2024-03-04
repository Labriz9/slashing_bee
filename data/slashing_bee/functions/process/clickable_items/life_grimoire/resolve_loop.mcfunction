
execute at @e[type=marker,tag=Life_Grimoire_Marker] run particle totem_of_undying ~ ~0.5 ~ 0 0 0 1 20

# Bats
execute at @e[type=bat,tag=Life_Grimoire] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=Life_Grimoire,distance=..0.5] run summon marker ~ ~ ~ {Tags:["Life_Grimoire"]}

# Block Markers
scoreboard players add @e[type=marker,tag=Life_Grimoire] LifeTime 1
execute at @e[type=marker,tag=Life_Grimoire,scores={LifeTime=5}] run setblock ~ ~ ~ oak_leaves keep
execute at @e[type=marker,tag=Life_Grimoire,scores={LifeTime=5..}] positioned ~ ~-1.35 ~ as @e[team=Enemy,distance=..1.5,tag=!Life_Grimoire_Touched] run damage @s 5 magic 
execute at @e[type=marker,tag=Life_Grimoire,scores={LifeTime=5..}] positioned ~ ~-1.35 ~ run effect give @e[team=Enemy,distance=..1.5] slowness 1 20 true
execute at @e[type=marker,tag=Life_Grimoire,scores={LifeTime=5..}] positioned ~ ~-1.35 ~ run tag @e[team=Enemy,distance=..1.5,tag=!Life_Grimoire_Touched] add Life_Grimoire_Touched

# Main Marker
scoreboard players add @e[type=marker,tag=Life_Grimoire_Marker] LifeTime 1
execute if entity @e[type=marker,tag=Life_Grimoire_Marker,scores={LifeTime=100..}] at @e[type=marker,tag=Life_Grimoire] run fill ~ ~ ~ ~ ~ ~ air replace oak_leaves
execute if entity @e[type=marker,tag=Life_Grimoire_Marker,scores={LifeTime=100..}] run kill @e[type=marker,tag=Life_Grimoire]
execute if entity @e[type=marker,tag=Life_Grimoire_Marker,scores={LifeTime=100..}] run kill @e[type=bat,tag=Life_Grimoire]
kill @e[type=marker,tag=Life_Grimoire_Marker,scores={LifeTime=100..}]

execute if entity @e[type=marker,tag=Life_Grimoire_Marker] run schedule function slashing_bee:process/clickable_items/life_grimoire/resolve_loop 2t
