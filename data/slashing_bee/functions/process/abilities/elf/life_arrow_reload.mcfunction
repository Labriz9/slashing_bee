
execute as @a[scores={Reload_Life_Arrow=1..}] if score @s Reload_Life_Arrow <= time Variables run function slashing_bee:process/abilities/elf/life_arrow_give

execute if entity @a[scores={Reload_Life_Arrow=1..}] run schedule function slashing_bee:process/abilities/elf/life_arrow_reload 1s
