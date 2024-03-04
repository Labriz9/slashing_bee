
execute store result score earth_grimoire Variables run random value 1..10
execute if score earth_grimoire Variables matches 1 at @e[type=marker,tag=Earth_Grimoire_Marker] run tag @e[team=Enemy,distance=..5,limit=1,sort=random,nbt={OnGround:1b}] add Earth_Grimoire_Touched
execute if score earth_grimoire Variables matches 1 at @e[type=marker,tag=Earth_Grimoire_Marker] as @e[team=Enemy,tag=Earth_Grimoire_Touched] at @s run tp ~ ~-0.75 ~
execute as @e[team=Enemy,tag=Earth_Grimoire_Touched] at @s run tp @s

execute at @e[type=marker,tag=Earth_Grimoire_Marker] run particle block dirt ~ ~0.5 ~ 2 0 2 0 20

scoreboard players add @e[type=marker,tag=Earth_Grimoire_Marker] LifeTime 1
execute if entity @e[type=marker,tag=Earth_Grimoire_Marker,scores={LifeTime=100..}] run tag @e[team=Enemy,tag=Earth_Grimoire_Touched] remove Earth_Grimoire_Touched
kill @e[type=marker,tag=Earth_Grimoire_Marker,scores={LifeTime=100..}]

execute if entity @e[type=marker,tag=Earth_Grimoire_Marker] run schedule function slashing_bee:process/clickable_items/earth_grimoire/resolve_loop 1t
