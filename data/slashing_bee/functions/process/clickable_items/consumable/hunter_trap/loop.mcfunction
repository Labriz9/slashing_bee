
execute as @e[type=armor_stand,tag=Hunter_Trap] at @s if entity @e[team=Enemy,distance=..1,limit=1,sort=nearest] run function slashing_bee:process/clickable_items/consumable/hunter_trap/resolve

execute if entity @e[type=armor_stand,tag=Hunter_Trap] run schedule function slashing_bee:process/clickable_items/consumable/hunter_trap/loop 1s
