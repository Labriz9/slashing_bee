
# For Adv_player_hurt_entity tagged Players
advancement revoke @s only slashing_bee:player_hurt_entity

execute if entity @s[tag=Arcane_Charge] at @s run function slashing_bee:process/abilities/drakeide_rose/arcane_charge
execute if entity @s[tag=Sky_Sword,nbt={SelectedItem:{tag:{weapon:sky_sword}}}] at @s run function slashing_bee:process/non_clickable_items/sky_sword
execute if entity @s[tag=Light_Mace,nbt={SelectedItem:{tag:{weapon:light_mace}}}] at @s run function slashing_bee:process/non_clickable_items/light_mace/resolve
execute if entity @s[tag=Life_Saber,nbt={SelectedItem:{tag:{weapon:life_saber}}}] at @s run function slashing_bee:process/non_clickable_items/life_saber
execute if entity @s[tag=Dark_Amulet,nbt={Inventory:[{Slot:-106b,tag:{weapon:dark_amulet}}]}] at @s run function slashing_bee:process/non_clickable_items/dark_amulet
execute if entity @s[tag=Royal_Stinger,nbt={SelectedItem:{tag:{weapon:royal_stinger}}}] at @s run function slashing_bee:process/non_clickable_items/royal_stinger/resolve
