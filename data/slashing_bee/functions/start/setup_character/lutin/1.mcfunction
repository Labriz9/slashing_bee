
# Passive
attribute @s minecraft:generic.max_health modifier add 1-2-3-4-5 "lutin" -6 add
tag @s add Flee
tag @s add Flee1
function slashing_bee:process/abilities/lutin/flee_detect
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Chance provoquée","italic":false,"bold":true,"color":"#B517ED"}]',Lore:['[{"text":"Compétence Epique","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Récupère une copie du loot de l ennemi visé (1 fois max par ennemi)","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:704,function:"abilities/lutin/cause_luck"}
