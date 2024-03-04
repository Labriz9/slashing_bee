
execute as @a[tag=Earth_Shield,scores={Earth_Shield_Block=1..},nbt={SelectedItem:{tag:{weapon:earth_shield}}}] at @s run function slashing_bee:process/non_clickable_items/earth_shield/resolve
execute as @a[tag=Earth_Shield,scores={Earth_Shield_Block=1..},nbt={Inventory:[{Slot:-106b,tag:{weapon:earth_shield}}]}] at @s run function slashing_bee:process/non_clickable_items/earth_shield/resolve

execute if entity @a[tag=Earth_Shield] run schedule function slashing_bee:process/non_clickable_items/earth_shield/detect 3t
