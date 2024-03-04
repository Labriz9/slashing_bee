
execute as @a[scores={Demonic_Fury_Stop_Time=1..}] if score @s Demonic_Fury_Stop_Time <= time Variables run function slashing_bee:process/abilities/demon/demonic_fury_stop

execute if entity @a[scores={Demonic_Fury_Stop_Time=1..}] run schedule function slashing_bee:process/abilities/demon/demonic_fury_stop_detect 1s
