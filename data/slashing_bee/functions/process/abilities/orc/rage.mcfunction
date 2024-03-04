
execute if score @s Energy matches ..299 run return 1 
scoreboard players remove @s Energy 300

particle flame ~ ~1 ~ 0.5 0.5 0.5 0 50 
effect give @s[scores={Health=7..}] strength 5 0
effect give @s[scores={Health=..6}] strength 5 1
effect give @s[scores={Health=..4}] regeneration 5 1
