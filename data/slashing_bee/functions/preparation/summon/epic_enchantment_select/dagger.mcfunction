
execute store result score item Variables run random value 1..2

execute if score item Variables matches 1 run data modify storage minecraft:summon item set value 'iron_sword{display:{Name:\'[{"text":"Dague en diamant : Variante Chatiment","italic":false,"bold":true,"color":"#B517ED"}]\',Lore:[\'[{"text":"Arme Epique","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Stats de base :","italic":false,"color":"white"}]\',\'[{"text":"1.8 Dégats d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"+7.5 Dégats d attaque contre les morts-vivants","italic":false,"color":"dark_green"}]\',\'[{"text":"4 Vitesse d attaque","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0.8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;0,4,1,1]},{AttributeName:"generic.attack_speed",Amount:0,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;0,4,1,1]}],CustomModelData:401,Enchantments:[{lvl:3s, id:"minecraft:smite"}],rarity:"epic"}'
execute if score item Variables matches 2 run data modify storage minecraft:summon item set value 'iron_sword{display:{Name:\'[{"text":"Dague en diamant : Variante Fléau","italic":false,"bold":true,"color":"#B517ED"}]\',Lore:[\'[{"text":"Arme Epique","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Stats de base :","italic":false,"color":"white"}]\',\'[{"text":"1.8 Dégats d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"+7.5 Dégats d attaque contre les insectes","italic":false,"color":"dark_green"}]\',\'[{"text":"4 Vitesse d attaque","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0.8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;0,4,1,1]},{AttributeName:"generic.attack_speed",Amount:0,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;0,4,1,1]}],CustomModelData:401,Enchantments:[{lvl:3s, id:"minecraft:bane_of_arthropods"}],rarity:"epic"}'

execute store result storage minecraft:summon index int 1 run scoreboard players get i_item_number Variables
function slashing_bee:preparation/summon/macro_fill_chest with storage minecraft:summon
