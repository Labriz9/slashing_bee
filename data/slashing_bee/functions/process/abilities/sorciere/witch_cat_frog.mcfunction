
effect give @e[distance=..5,team=Enemy] minecraft:levitation 1 25 true

effect give @s invisibility infinite 0 true
data merge entity @s {Silent:1b}
particle minecraft:dust 0.098 0.655 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 30
summon frog ~ ~ ~ {variant:"minecraft:cold",Tags:["Witch_Cat"],DeathLootTable:"slashing_bee:entities/empty"}
ride @s mount @e[type=frog,tag=Witch_Cat,limit=1,sort=nearest]

schedule function slashing_bee:process/abilities/sorciere/witch_cat_frog_clear 7t

schedule function slashing_bee:process/abilities/sorciere/witch_cat_back 5s
