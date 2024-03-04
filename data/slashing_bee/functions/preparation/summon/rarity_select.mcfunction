
execute if score i_item_number Variables matches ..-1 run return 0

##Normalement 1..1000
execute store result score rarity Variables run random value 2..1000
# Décommenter pour Légendaire
#execute store result score rarity Variables run scoreboard players get 1 Variables

execute if score rarity Variables matches 1 run scoreboard players operation rarity_max Variables = 5 Variables
execute if score rarity Variables matches 1 run function slashing_bee:preparation/summon/item_legendary_select
execute if score rarity Variables matches 2..11 if score rarity_max Variables matches ..3 run scoreboard players operation rarity_max Variables = 4 Variables
execute if score rarity Variables matches 2..11 run function slashing_bee:preparation/summon/item_epic_select
execute if score rarity Variables matches 12..111 if score rarity_max Variables matches ..2 run scoreboard players operation rarity_max Variables = 3 Variables
execute if score rarity Variables matches 12..111 run function slashing_bee:preparation/summon/item_rare_select
execute if score rarity Variables matches 112..411 if score rarity_max Variables matches ..1 run scoreboard players operation rarity_max Variables = 2 Variables
execute if score rarity Variables matches 112..411 run function slashing_bee:preparation/summon/item_unusual_select
execute if score rarity Variables matches 412..1000 run function slashing_bee:preparation/summon/item_common_select

scoreboard players operation i_item_number Variables -= 1 Variables
function slashing_bee:preparation/summon/rarity_select
