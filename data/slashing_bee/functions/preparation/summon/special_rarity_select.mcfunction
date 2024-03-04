
## Normalement 5 / 9 / 10 items par coffre ?
execute if score i_item_number Variables matches ..-1 run return 0

execute store result score rarity Variables run random value 1..100

execute if score rarity Variables matches 1 run scoreboard players operation rarity_max Variables = 5 Variables
execute if score rarity Variables matches 1 run function slashing_bee:preparation/summon/item_legendary_select
execute if score rarity Variables matches 2..11 if score rarity_max Variables matches ..3 run scoreboard players operation rarity_max Variables = 4 Variables
execute if score rarity Variables matches 2..11 run function slashing_bee:preparation/summon/item_epic_select
execute if score rarity Variables matches 12..100 run function slashing_bee:preparation/summon/item_rare_select


scoreboard players operation i_item_number Variables -= 1 Variables
function slashing_bee:preparation/summon/special_rarity_select
