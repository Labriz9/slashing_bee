
execute as @e[type=armor_stand,tag=Scarecrow] at @s at @e[team=Enemy,distance=..5] facing entity @s eyes positioned ^ ^ ^0.01 run tp @e[team=Enemy,sort=nearest,limit=1] ~ ~ ~ 

kill @e[type=armor_stand,tag=Scarecrow,scores={LifeTime=80..}]
scoreboard players add @e[type=armor_stand,tag=Scarecrow] LifeTime 1

execute if entity @e[type=armor_stand,tag=Scarecrow] run schedule function slashing_bee:process/clickable_items/consumable/scarecrow/loop 5t
