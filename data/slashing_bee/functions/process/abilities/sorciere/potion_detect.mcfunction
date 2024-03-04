
execute as @a[tag=Potion,scores={Potion=1..},nbt=!{Inventory:[{id:"minecraft:splash_potion",tag:{Witch:1b}}]}] run function slashing_bee:process/abilities/sorciere/potion_resolve

execute as @a[tag=Potion] run schedule function slashing_bee:process/abilities/sorciere/potion_detect 1s
