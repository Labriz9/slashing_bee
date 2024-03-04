
effect give @a[tag=Regen_45s] minecraft:regeneration 1 2

execute as @a[tag=Regen_45s] run schedule function slashing_bee:process/abilities/a_regenerating_character/regen_45s 45s
