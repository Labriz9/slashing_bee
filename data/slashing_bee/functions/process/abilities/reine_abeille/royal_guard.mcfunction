
execute as @a[tag=Royal_Guard] at @s store result score @s Royal_Guard if entity @e[type=bee,tag=Bee_Soldier,distance=..10]
# According to player 1 or 2
execute as @a[tag=Player1,tag=Royal_Guard] store result storage variables royal_guard_1 int 0.33 run scoreboard players get @s Royal_Guard
execute as @a[tag=Player2,tag=Royal_Guard] store result storage variables royal_guard_2 int 0.33 run scoreboard players get @s Royal_Guard

execute as @a[tag=Royal_Guard] run function slashing_bee:process/abilities/reine_abeille/macro_royal_guard with storage variables

execute if entity @a[tag=Royal_Guard] run schedule function slashing_bee:process/abilities/reine_abeille/royal_guard 1s
