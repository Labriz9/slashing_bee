
execute as @e[type=bee,tag=Bee_Soldier] at @s unless entity @a[distance=..30] run tp @p

execute as @e[type=bee,tag=Bee_Soldier] run data merge entity @s {AngerTime:1000}
execute as @e[type=bee,tag=Bee_Soldier] at @s run data modify entity @s AngryAt set from entity @e[team=Enemy,limit=1,sort=nearest] UUID
kill @e[type=bee,tag=Bee_Soldier,nbt={HasStung:1b}]

schedule function slashing_bee:process/abilities/reine_abeille/bee_reinforcement_assignement 1s
