
execute store result score item Variables run random value 1..2

execute if score item Variables matches 1 run data modify storage minecraft:summon item set value 'iron_hoe{display:{Name:\'[{"text":"Lance en or : Variante Chatiment","italic":false,"color":"#0091FE"}]\',Lore:[\'[{"text":"Arme Rare","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Stats de base :","italic":false,"color":"white"}]\',\'[{"text":"10 Dégats d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"+2.5 Dégats d attaque contre les morts-vivants","italic":false,"color":"dark_green"}]\',\'[{"text":"1 Vitesse d attaque","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:9,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;0,3,1,3]},{AttributeName:"generic.attack_speed",Amount:-3,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;0,3,1,3]}],CustomModelData:301,Enchantments:[{lvl:1s, id:"minecraft:smite"}],rarity:"rare"}'
execute if score item Variables matches 2 run data modify storage minecraft:summon item set value 'iron_hoe{display:{Name:\'[{"text":"Lance en or : Variante Fléau","italic":false,"color":"#0091FE"}]\',Lore:[\'[{"text":"Arme Rare","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Stats de base :","italic":false,"color":"white"}]\',\'[{"text":"10 Dégats d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"+2.5 Dégats d attaque contre les insectes","italic":false,"color":"dark_green"}]\',\'[{"text":"1 Vitesse d attaque","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:9,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;0,3,1,3]},{AttributeName:"generic.attack_speed",Amount:-3,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;0,3,1,3]}],CustomModelData:301,Enchantments:[{lvl:1s, id:"minecraft:bane_of_arthropods"}],rarity:"rare"}'

execute store result storage minecraft:summon index int 1 run scoreboard players get i_item_number Variables
function slashing_bee:preparation/summon/macro_fill_chest with storage minecraft:summon
