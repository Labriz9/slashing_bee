
execute store result score item Variables run random value 1..2

execute if score item Variables matches 1 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Drakéide Rose","italic":false,"bold":true,"color":"#FEAF00"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Légendaire","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"Ailes","italic":false,"color":"dark_green"}]\',\'[{"text":"Maintenir shift pour s envoler un peu","italic":false,"color":"dark_green"}]\',\'[{"text":"Lorsqu il inflige des dégats physiques :","italic":false,"color":"dark_green"}]\',\'[{"text":"   1 chance sur 4 de lancer un projectile magique qui confère une charge arcanique s il touche une cible","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Dépense toutes les charges arcaniques, pour chaque charge consommée :","italic":false,"color":"dark_green"}]\',\'[{"text":"   lance un projectile magique qui ne confère pas de charge","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:501,character:drakeide_rose,level:1,xp:0,rarity:"legendary"}'
execute if score item Variables matches 2 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Reine des Abeilles","italic":false,"bold":true,"color":"#FEAF00"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Légendaire","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"Invoque trois abeilles soldats toutes les 15s","italic":false,"color":"dark_green"}]\',\'[{"text":"Gagne résistance en fonction du nombre d abeille proches","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Appelle des abeilles soldats","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:502,character:reine_abeille,level:1,xp:0,rarity:"legendary"}'

execute store result storage minecraft:summon index int 1 run scoreboard players get i_item_number Variables
function slashing_bee:preparation/summon/macro_fill_chest with storage minecraft:summon