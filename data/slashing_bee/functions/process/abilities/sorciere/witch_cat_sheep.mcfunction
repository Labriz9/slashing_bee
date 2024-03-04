
tag @e[team=Enemy,limit=1,sort=random,distance=..5,type=!sheep] add Witch_Cat_Sheeped
execute as @e[tag=Witch_Cat_Sheeped] at @s run summon sheep ~ ~ ~ {Color:0b,Team:"Enemy"}
execute as @e[tag=Witch_Cat_Sheeped] at @s run data modify entity @e[type=sheep,team=Enemy,sort=nearest,limit=1] DeathLootTable set from entity @s DeathLootTable
execute as @e[tag=Witch_Cat_Sheeped] at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.7 0.7 0.7 1 50
tp @e[tag=Witch_Cat_Sheeped] ~ ~-1000 ~

effect give @s invisibility infinite 0 true
data merge entity @s {Silent:1b}
particle minecraft:dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 30
summon sheep ~ ~ ~ {Color:15b,Tags:["Witch_Cat"],DeathLootTable:"slashing_bee:entities/empty"}
ride @s mount @e[type=sheep,tag=Witch_Cat,limit=1,sort=nearest]

schedule function slashing_bee:process/abilities/sorciere/witch_cat_back 5s
