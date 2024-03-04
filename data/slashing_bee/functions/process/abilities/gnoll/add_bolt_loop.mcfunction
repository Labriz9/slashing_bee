
# Bow used but still has an arrow
execute as @a[tag=Add_Bolt1,scores={Add_Bolt_Bow=1..},nbt={Inventory:[{id:"minecraft:arrow",Count:1b,Slot:9b}]}] run scoreboard players add @s Energy 400
execute as @a[tag=Add_Bolt2,scores={Add_Bolt_Bow=1..},nbt={Inventory:[{id:"minecraft:arrow",Count:1b,Slot:9b}]}] run scoreboard players add @s Energy 300
execute as @a[scores={Add_Bolt_Bow=1..},nbt={Inventory:[{id:"minecraft:arrow",Count:1b,Slot:9b}]}] run clear @s arrow 1
scoreboard players set @a Add_Bolt_Bow 0

# Crossbow used but still has an arrow
execute as @a[tag=Add_Bolt1,scores={Add_Bolt_Crossbow=1..},nbt={Inventory:[{id:"minecraft:arrow",Count:1b,Slot:9b}]}] run scoreboard players add @s Energy 400
execute as @a[tag=Add_Bolt2,scores={Add_Bolt_Crossbow=1..},nbt={Inventory:[{id:"minecraft:arrow",Count:1b,Slot:9b}]}] run scoreboard players add @s Energy 300
execute as @a[scores={Add_Bolt_Crossbow=1..},nbt={Inventory:[{id:"minecraft:arrow",Count:1b,Slot:9b}]}] run clear @s arrow 1
scoreboard players set @a Add_Bolt_Crossbow 0

execute as @a[tag=Add_Bolt1,scores={Energy=400..},nbt=!{Inventory:[{id:"minecraft:arrow",Count:1b}]}] run function slashing_bee:process/abilities/gnoll/add_bolt1_resolve
execute as @a[tag=Add_Bolt1,scores={Energy=300..},nbt=!{Inventory:[{id:"minecraft:arrow",Count:1b}]}] run function slashing_bee:process/abilities/gnoll/add_bolt2_resolve


execute as @a[tag=Add_Bolt1] run schedule function slashing_bee:process/abilities/gnoll/add_bolt_loop 2t
