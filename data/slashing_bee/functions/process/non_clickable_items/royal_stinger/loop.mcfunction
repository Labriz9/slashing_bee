
execute as @a[tag=Royal_Stinger] at @s store result score @s Royal_Stinger_Strength if entity @e[type=bee,tag=Bee_Soldier,distance=..10]
# According to player 1 or 2
execute as @a[tag=Player1,tag=Royal_Stinger] store result storage variables royal_stinger_1 int 0.33 run scoreboard players get @s Royal_Stinger_Strength
execute as @a[tag=Player2,tag=Royal_Stinger] store result storage variables royal_stinger_2 int 0.33 run scoreboard players get @s Royal_Stinger_Strength

execute as @a[tag=Royal_Stinger,nbt={SelectedItem:{tag:{weapon:royal_stinger}}}] run function slashing_bee:process/non_clickable_items/royal_stinger/macro_loop_resolve with storage variables

execute if entity @a[tag=Royal_Stinger] run schedule function slashing_bee:process/non_clickable_items/royal_stinger/loop 1s
