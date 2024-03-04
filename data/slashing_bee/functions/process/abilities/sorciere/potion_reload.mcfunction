
execute as @a[tag=Potion,scores={Reload_Potion=1..,Energy=400..}] if score @s Reload_Potion <= time Variables run function slashing_bee:process/abilities/sorciere/potion_give

execute if entity @a[tag=Potion,scores={Reload_Potion=1..}] run schedule function slashing_bee:process/abilities/sorciere/potion_reload 1s
