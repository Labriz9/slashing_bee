
execute store result score item_type Variables run random value 1..2

# Weapon
execute if score item_type Variables matches 1..9 run execute store result score item Variables run random value 1..2
execute if score item_type Variables matches 1..9 if score item Variables matches 1 run data modify storage minecraft:summon item set value 'carrot_on_a_stick{display:{Name:\'[{"text":"Singularité arcanique","italic":false,"bold":true,"color":"#FEAF00"}]\',Lore:[\'[{"text":"Arme Légendaire","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Description :","italic":false,"color":"white"}]\',\'[{"text":"Lance 10 projectiles arcaniques","italic":false,"color":"dark_green"}]\',\'[{"text":"   si un projectile arcanique tue un ennemi, en invoque 3 autres à partir de ce dernier","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:501,function:"clickable_items/arcane_singularity/use",rarity:"legendary"}'
execute if score item_type Variables matches 1..9 if score item Variables matches 2 run data modify storage minecraft:summon item set value 'carrot_on_a_stick{display:{Name:\'[{"text":"Dard royal","italic":false,"bold":true,"color":"#FEAF00"}]\',Lore:[\'[{"text":"Arme Légendaire","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Stats de base :","italic":false,"color":"white"}]\',\'[{"text":"6 Dégats d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"2 Vitesse d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"Blesser un ennemi a 1 chance sur 5 d invoquer 3 abeilles soldats","italic":false,"color":"dark_green"}]\',\'[{"text":"   clic droit pour chevaucher une abeille proche au choix","italic":false,"color":"dark_green"}]\',\'[{"text":"Gagne force en fonction du nombre d abeille proches","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:5,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;0,5,1,1]},{AttributeName:"generic.attack_speed",Amount:-2,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;0,5,1,1]}],CustomModelData:501,weapon:royal_stinger,function:"clickable_items/royal_stinger/use",rarity:"legendary"}'

# Armor
# execute if score item_type Variables matches 5..7 run execute store result score item Variables run random value 1..

# Consumable
# execute if score item_type Variables matches 8..9 run execute store result score item Variables run random value 1..

# Character
execute if score item_type Variables matches 10 run function slashing_bee:preparation/summon/character_select/legendary

execute store result storage minecraft:summon index int 1 run scoreboard players get i_item_number Variables
function slashing_bee:preparation/summon/macro_fill_chest with storage minecraft:summon
