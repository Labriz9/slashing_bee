
execute as @e[type=cat,tag=Witch_Cat] store result score @s Variables run random value 1..3
execute as @e[type=cat,tag=Witch_Cat] run scoreboard players operation @s Variables %= @s Cat_Level
execute as @e[type=cat,tag=Witch_Cat] at @s if score @s Variables matches 0 run function slashing_bee:process/abilities/sorciere/witch_cat_frog
execute as @e[type=cat,tag=Witch_Cat] at @s if score @s Variables matches 1 run function slashing_bee:process/abilities/sorciere/witch_cat_sheep
execute as @e[type=cat,tag=Witch_Cat] at @s if score @s Variables matches 2 run function slashing_bee:process/abilities/sorciere/witch_cat_turtle

execute if entity @e[tag=Witch_Cat] run schedule function slashing_bee:process/abilities/sorciere/witch_cat_loop 15s
