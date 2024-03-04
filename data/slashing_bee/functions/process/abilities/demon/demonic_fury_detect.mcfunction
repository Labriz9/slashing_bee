
execute as @a[tag=Demonic_Fury1,scores={Demonic_Fury=2..}] at @s run function slashing_bee:process/abilities/demon/demonic_fury_resolve
execute as @a[tag=Demonic_Fury2,scores={Demonic_Fury=1..}] at @s run function slashing_bee:process/abilities/demon/demonic_fury_resolve
execute as @a[tag=Demonic_Fury3,scores={Demonic_Fury=1..}] at @s run function slashing_bee:process/abilities/demon/demonic_fury_resolve

execute if entity @a[tag=Demonic_Fury] run schedule function slashing_bee:process/abilities/demon/demonic_fury_detect 1s
