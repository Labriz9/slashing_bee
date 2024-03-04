
effect give @a[tag=Regen_30s] minecraft:regeneration 1 2

execute as @a[tag=Regen_30s] run schedule function slashing_bee:process/abilities/a_regenerating_character/regen_30s 30s
