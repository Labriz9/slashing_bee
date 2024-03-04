
execute store result score item Variables run random value 1..6

execute if score item Variables matches 1 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Gnoll","italic":false,"color":"white"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Commun","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"+0.01 Vitesse de déplacement","italic":false,"color":"dark_green"}]\',\'[{"text":"+0.5 Vitesse d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Possède une flèche supplémentaire qui se recharge avec l énergie","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:101,character:gnoll,level:1,xp:0,rarity:"common"}'
execute if score item Variables matches 2 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Humain","italic":false,"color":"white"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Commun","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"+1 Vitesse d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Reste immobile pour se régénérer","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:102,character:humain,level:1,xp:0,rarity:"common"}'
execute if score item Variables matches 3 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Nain","italic":false,"color":"white"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Commun","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"-3 coeurs","italic":false,"color":"dark_red"}]\',\'[{"text":"+0.02 Vitesse de déplacement","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Se téléporte derrière l ennemi visé","italic":false,"color":"dark_green"}]\',\'[{"text":"   et +10 dégats pour le prochain coup","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:103,character:nain,level:1,xp:0,rarity:"common"}'
execute if score item Variables matches 4 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Orc","italic":false,"color":"white"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Commun","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"+2 Dégats d attaque","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Gagne momentanément 3 dégats d attaque si vie > 8 pv,","italic":false,"color":"dark_green"}]\',\'[{"text":"   6 dégats d attaque si vie <= 8pv,","italic":false,"color":"dark_green"}]\',\'[{"text":"   récupère 4pv sur la durée si vie <= 6pv","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:104,character:orc,level:1,xp:0,rarity:"common"}'
execute if score item Variables matches 5 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Troll","italic":false,"color":"white"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Commun","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"Régénère 1pv toutes les 45s","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Inflige des dégats de mort autour de lui","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:105,character:troll,level:1,xp:0,rarity:"common"}'
execute if score item Variables matches 6 run data modify storage minecraft:summon item set value 'diamond{display:{Name:\'[{"text":"Gobelours","italic":false,"color":"white"}]\',Lore:[\'[{"text":"Niveau : ","italic":true,"color":"white"},{"text":"★","italic":false,"color":"#00bfff"}]\',\'[{"text":"Personnage Commun","italic":false,"color":"dark_gray"}]\',\'[{"text":""}]\',\'[{"text":"Passif :","italic":false,"color":"white"}]\',\'[{"text":"+2 Armure","italic":false,"color":"dark_green"}]\',\'[{"text":"+1 Resistance aux dégats importants","italic":false,"color":"dark_green"}]\',\'[{"text":"+1 Résistance au recul","italic":false,"color":"dark_green"}]\',\'[{"text":"Compétence :","italic":false,"color":"white"}]\',\'[{"text":"Gagne 4 coeurs supplémentaires éphémères","italic":false,"color":"dark_green"}]\']},HideFlags:6,Unbreakable:1b,CustomModelData:101,character:gobelours,level:1,xp:0,rarity:"common"}'

execute store result storage minecraft:summon index int 1 run scoreboard players get i_item_number Variables
function slashing_bee:preparation/summon/macro_fill_chest with storage minecraft:summon