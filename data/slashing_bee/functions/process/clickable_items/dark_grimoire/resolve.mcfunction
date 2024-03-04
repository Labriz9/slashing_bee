
scoreboard players set @s Delay_Dark_Grimoire 0

playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 0.7 1

effect give @s blindness 3 0 true

tag @e[team=Enemy,distance=..10,limit=5,sort=random] add Dark_Grimoire_Touched
execute as @e[team=Enemy,tag=Dark_Grimoire_Touched] store result score @s Mob_Health run data get entity @s Health 100
execute as @e[team=Enemy,tag=Dark_Grimoire_Touched] at @s if score @s Mob_Health matches ..1800 run summon marker ~ ~ ~ {Tags:["Dark_Grimoire_Marker"]}
execute as @e[team=Enemy,tag=Dark_Grimoire_Touched] if score @s Mob_Health matches ..1800 run function slashing_bee:process/clickable_items/dark_grimoire/end_loop
execute as @e[team=Enemy,tag=Dark_Grimoire_Touched] run damage @s 18 magic

