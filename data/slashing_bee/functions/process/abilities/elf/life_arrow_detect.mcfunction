
# Prevent from reseting reload
scoreboard players set @a[scores={Reload_Life_Arrow=1..}] Life_Arrow_Bow 0
scoreboard players set @a[scores={Reload_Life_Arrow=1..}] Life_Arrow_Crossbow 0

execute as @a[scores={Energy=300..},tag=Life_Arrow,nbt=!{Inventory:[{tag:{custom_potion_effects:[{id:"minecraft:luck"}]}}]}] if score @s Life_Arrow_Bow matches 1.. run function slashing_bee:process/abilities/elf/life_arrow
execute as @a[scores={Energy=300..},tag=Life_Arrow,nbt=!{Inventory:[{tag:{custom_potion_effects:[{id:"minecraft:luck"}]}}]}] if score @s Life_Arrow_Crossbow matches 1.. run function slashing_bee:process/abilities/elf/life_arrow

# Normal
execute as @e[nbt={active_effects:[{id:"minecraft:luck",amplifier:0b}]}] at @s run function slashing_bee:process/abilities/elf/life_arrow_resolve

# Up
execute as @e[nbt={active_effects:[{id:"minecraft:luck",amplifier:1b}]}] at @s run function slashing_bee:process/abilities/elf/life_arrow_up_resolve


execute as @a[tag=Life_Arrow] run schedule function slashing_bee:process/abilities/elf/life_arrow_detect 5t
