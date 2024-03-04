
execute as @a[tag=Rock_Throw,tag=!Rock_Throw_Up,scores={Rock_Throw=1..},nbt=!{Inventory:[{id:"minecraft:snowball",tag:{Cyclops:1b}}]}] at @s run function slashing_bee:process/abilities/cyclope/rock_throw_resolve
execute as @a[tag=Rock_Throw,tag=Rock_Throw_Up,scores={Rock_Throw=1..},nbt=!{Inventory:[{id:"minecraft:snowball",tag:{Cyclops:1b}}]}] at @s run function slashing_bee:process/abilities/cyclope/rock_throw_up_resolve

execute as @a[tag=Rock_Throw] run schedule function slashing_bee:process/abilities/cyclope/rock_throw_detect 1t
