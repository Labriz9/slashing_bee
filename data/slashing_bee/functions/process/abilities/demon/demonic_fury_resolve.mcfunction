
scoreboard players remove @s[tag=Demonic_Fury1] Demonic_Fury 2
scoreboard players remove @s[tag=!Demonic_Fury1] Demonic_Fury 1

execute if entity @s[scores={Demonic_Fury_Level=..3}] run particle flame ~ ~1 ~ 0.5 0.5 0.5 0 20

# Level
scoreboard players add @s[tag=!Demonic_Fury3,scores={Demonic_Fury_Level=..3}] Demonic_Fury_Level 1
scoreboard players add @s[tag=Demonic_Fury3,scores={Demonic_Fury_Level=..2}] Demonic_Fury_Level 2
execute if entity @s[tag=Player1] store result bossbar demonic_fury_level_player1 value run scoreboard players get @s Demonic_Fury_Level
execute if entity @s[tag=Player2] store result bossbar demonic_fury_level_player2 value run scoreboard players get @s Demonic_Fury_Level

# Effect
effect give @s[scores={Demonic_Fury_Level=1}] strength 5 0 false
effect give @s[scores={Demonic_Fury_Level=2}] strength 5 1 false
effect give @s[scores={Demonic_Fury_Level=3}] strength 5 2 false
effect give @s[scores={Demonic_Fury_Level=4}] strength 5 3 false

# 2 Before end of streak
scoreboard players set @s Demonic_Fury_Stop_Time 2
scoreboard players operation @s Demonic_Fury_Stop_Time += time Variables
schedule function slashing_bee:process/abilities/demon/demonic_fury_stop_detect 1s

