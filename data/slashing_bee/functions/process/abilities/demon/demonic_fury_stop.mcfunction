
effect clear @s strength
scoreboard players set @s Demonic_Fury_Level 0
scoreboard players set @s Demonic_Fury_Stop_Time 0
execute as @s[tag=Player1] store result bossbar demonic_fury_level_player1 value run scoreboard players get @s Demonic_Fury_Level
execute as @s[tag=Player2] store result bossbar demonic_fury_level_player2 value run scoreboard players get @s Demonic_Fury_Level
