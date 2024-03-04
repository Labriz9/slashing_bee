
execute as @a[scores={Intangible_Time=1..}] if score @s Intangible_Time <= time Variables run function slashing_bee:process/abilities/spectre/intangible_end

execute if entity @a[scores={Intangible_Time=1..}] run schedule function slashing_bee:process/abilities/spectre/intangible_end_detect 1s
