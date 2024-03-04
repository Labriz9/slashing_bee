
execute as @s[scores={Reload_Rare_Bow=1..}] if score @s Reload_Rare_Bow <= time Variables run function slashing_bee:process/reload/rare_bow
execute as @s[scores={Reload_Multishot_Crossbow=1..}] if score @s Reload_Multishot_Crossbow <= time Variables run function slashing_bee:process/reload/multishot_crossbow
execute as @s[scores={Reload_Piercing_Crossbow=1..}] if score @s Reload_Piercing_Crossbow <= time Variables run function slashing_bee:process/reload/piercing_crossbow
execute as @s[scores={Reload_Electric_Bow=1..}] if score @s Reload_Electric_Bow <= time Variables run function slashing_bee:process/reload/electric_bow
