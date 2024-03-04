
# For Adv_entity_hurt_player tagged Players
advancement revoke @s only slashing_bee:entity_hurt_player

execute if entity @s[tag=Only_Eye] at @s run function slashing_bee:process/abilities/cyclope/only_eye
execute if entity @s[tag=Ice_Boots] at @s run function slashing_bee:process/non_clickable_items/ice_boots
execute if entity @s[tag=Fire_Chestplate] at @s run function slashing_bee:process/non_clickable_items/fire_chestplate
execute if entity @s[tag=Earth_Chestplate] at @s run function slashing_bee:process/non_clickable_items/earth_chestplate/resolve
execute if entity @s[tag=Electric_Leggings] at @s run function slashing_bee:process/non_clickable_items/electric_leggings
execute if entity @s[tag=Life_Leggings] at @s run function slashing_bee:process/non_clickable_items/life_leggings
execute if entity @s[tag=Death_Helmet] at @s run function slashing_bee:process/non_clickable_items/death_helmet
execute if entity @s[tag=Light_Helmet] at @s run function slashing_bee:process/non_clickable_items/light_helmet
execute if entity @s[tag=Dark_Chestplate] at @s run function slashing_bee:process/non_clickable_items/dark_chestplate/resolve
execute if entity @s[tag=Sky_Leggings] at @s run function slashing_bee:process/non_clickable_items/sky_leggings/resolve
