
tag @s remove Target_Clap

damage @s 8 player_attack by @p[tag=Clap_Up] from @p[tag=Clap_Up]
execute if entity @a[tag=Clap_Up] run return 0

damage @s 4 player_attack by @p[tag=Clap] from @p[tag=Clap]
