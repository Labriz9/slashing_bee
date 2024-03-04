
execute as @e[type=block_display,tag=Brambles,tag=!Brambles_Immobile] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,10f,0f],scale:[1f,1f,1f]}}
tag @e[type=block_display,tag=Brambles] add Brambles_Immobile
