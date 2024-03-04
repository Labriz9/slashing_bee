
effect give @e[distance=..5,team=Player] minecraft:resistance 5 1

effect give @s invisibility infinite 0 true
data merge entity @s {Silent:1b}
particle minecraft:dust 0 0.875 0.306 1 ~ ~1 ~ 0.5 0.5 0.5 1 30
summon turtle ~ ~ ~ {Tags:["Witch_Cat"],DeathLootTable:"slashing_bee:entities/empty"}
ride @s mount @e[type=turtle,tag=Witch_Cat,limit=1,sort=nearest]

schedule function slashing_bee:process/abilities/sorciere/witch_cat_back 5s
