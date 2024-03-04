
execute as @a[tag=Frenzy] run function slashing_bee:process/abilities/goblin/frenzy_end_detect

execute if entity @a[tag=Frenzy] run schedule function slashing_bee:process/abilities/goblin/frenzy_loop 3s
