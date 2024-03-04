
execute as @a[tag=Death_Scythe,scores={Death_Scythe_Kill=1..},nbt={SelectedItem:{tag:{weapon:death_scythe}}}] at @s run function slashing_bee:process/non_clickable_items/death_scythe/resolve

execute if entity @a[tag=Death_Scythe] run schedule function slashing_bee:process/non_clickable_items/death_scythe/detect 3t
