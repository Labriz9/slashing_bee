
execute store result score sky_sword Variables run random value 1..5

execute unless score sky_sword Variables matches 1 run return 1

effect give @s resistance 1 10 true
summon lightning_bolt
