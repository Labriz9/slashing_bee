
tag @s remove Target_Cause_Luck
execute at @p[tag=Cause_Luck] run playsound entity.witch.celebrate player @a ~ ~ ~ 1 1.7
scoreboard players remove @p[tag=Cause_Luck,tag=!Cause_Luck_Up] Energy 700
scoreboard players remove @p[tag=Cause_Luck_Up] Energy 500

loot give @p[tag=Cause_Luck] kill @s
execute as @p[tag=Cause_Luck] store result score @s Convert_Money run clear @s gold_nugget
execute as @p[tag=Cause_Luck] store result score @s Convert_Elite_Key run clear @s gold_ingot
tag @s add Cause_Lucked
