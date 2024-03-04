
execute if score @s Frenzy matches ..0 run tag @s remove Frenzy
execute if score @s Frenzy matches ..0 run tag @s remove Frenzy_Up
execute if score @s Frenzy matches ..0 run return 0 

scoreboard players set @s Frenzy 0

effect give @s[tag=Frenzy,tag=!Frenzy_Up] speed 3 1 false
effect give @s[tag=Frenzy_Up] speed 3 3 false
