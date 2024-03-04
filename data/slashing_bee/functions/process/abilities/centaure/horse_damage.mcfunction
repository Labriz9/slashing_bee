
execute store result score @s Variables run attribute @s generic.max_health get
execute store result score @s Mob_Health run data get entity @s Health
scoreboard players operation @s Variables -= @s Mob_Health
execute store result entity @s SaddleItem.tag.damage byte 1 run scoreboard players get @s Variables
function slashing_bee:process/abilities/centaure/macro_damage_centaur with entity @s SaddleItem.tag 
effect give @s instant_health 1 10 true
