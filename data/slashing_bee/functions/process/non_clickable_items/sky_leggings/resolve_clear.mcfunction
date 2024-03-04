
tp @e[type=cow,tag=Sky_Leggings] ~ ~-100 ~
kill @e[type=cow,tag=Sky_Leggings]

effect clear @e[team=Enemy,tag=Sky_Leggings_Touched] levitation
tag @e[team=Enemy,tag=Sky_Leggings_Touched] remove Sky_Leggings_Touched

